#include "synplc.h"

/****************************************************/
/**************** RS485-Protokoll *******************/
/****************************************************/

void init_485 (uint8_t addr)
{
  state_485 = read_start;
  address_485 = addr;
  devtype = addr & 0xE0;
  errflag_485 = 0;
}

void parse_485 (void)
{
  //Wait for correct start byte
  if(state_485 == read_start)
  {
    if(RxBuffer[0] == START)
    {
      HAL_UART_Receive_IT(&huart3, RxBuffer, 2);
      state_485 = read_addr_inst;
    }
    else
    {
      HAL_UART_Receive_IT(&huart3, RxBuffer, 1);
    }
  }

  //if start occured, parse for address, instruction and register
  else if(state_485 == read_addr_inst)
  {
    slave_485 = RxBuffer[0];
    inst_485 = RxBuffer[1] & 0xF0;
    reg_485 = RxBuffer[1] & 0x0F;

    switch (inst_485)
    {
    case CMD_PING:
    case CMD_R16:
    case CMD_R8:
      state_485 = read_dat_cs;
      HAL_UART_Receive_IT(&huart3, RxBuffer, 1);
      errflag_485 &= ~ERR_INST;
      break;
    case CMD_W8:
      state_485 = read_dat_cs;
      HAL_UART_Receive_IT(&huart3, RxBuffer, 2);
      errflag_485 &= ~ERR_INST;
      break;
    case CMD_W16:
      state_485 = read_dat_cs;
      HAL_UART_Receive_IT(&huart3, RxBuffer, 3);
      errflag_485 &= ~ERR_INST;
    default:
      state_485 = read_start;
      errflag_485 |= ERR_INST;

      __disable_irq();
      delay_us(50);
      __enable_irq();
      break;
    }
  }

  //read data and or checksum and save it if address is right
  else if(state_485 == read_dat_cs)
  {
    switch (inst_485)
    {
    case CMD_PING:
    case CMD_R16:
    case CMD_R8:
      checksum_485 = RxBuffer[0];
      checkresult = START ^ slave_485 ^ inst_485 ^ reg_485 ^ checksum_485;
      break;
    case CMD_W8:
      dat8_485 = RxBuffer[0];
      checksum_485 = RxBuffer[1];
      checkresult = START ^ slave_485 ^ inst_485 ^ reg_485 ^ dat8_485 ^ checksum_485;
      break;
    case CMD_W16:
      dat16_485 = RxBuffer[0] | (RxBuffer[1] << 8);
      checksum_485 = RxBuffer[2];
      checkresult = START ^ slave_485 ^ inst_485 ^ reg_485 ^ RxBuffer[0] ^ RxBuffer[1] ^ checksum_485;
      break;
    }

    state_485 = write_answ;

    //Checksum Error Flag
    if(checkresult != CHECKSUM)
      errflag_485 |= ERR_CS;
    else
      errflag_485 &= ~ERR_CS;


    //save Data if necessary
    if(address_485 == slave_485 && checkresult == CHECKSUM)
    {
      //DO only
      if(devtype == DEV_DO)
      {
        if(inst_485 == CMD_W8)
        {
          switch (reg_485)
          {
          case REG_OUT:
          case REG_ERR:
            reg_out = dat8_485;
            errflag_485 &= ~ERR_REG;
            break;
          default:
            errflag_485 |= ERR_REG;
            break;
          }            
        }
        else if (inst_485 == CMD_W16 || inst_485 == CMD_R16)
          errflag_485 |= ERR_INST;
        else if (reg_485 != REG_ERR || reg_485 != REG_FB)
          errflag_485 |= ERR_REG;
      }
      // DI
      else if(devtype == DEV_DI)
      {
        if(inst_485 == CMD_R8)
        {
          if(reg_485 == REG_IN || reg_485 == REG_ERR)
            errflag_485 &= ~ERR_REG;
          else
            errflag_485 |= ERR_REG;
        }
        else if (inst_485 != CMD_PING)
          errflag_485 |= ERR_INST;
      }
      // AO
      else if(devtype == DEV_AO)
      {
        switch (inst_485)
        {
          case CMD_W16:
            switch (reg_485)
            {
              case REG_CH1:
              case REG_CH2:
              case REG_CH3:
              case REG_CH4:
                dac_out[reg_485 - REG_CH1] = dat16_485;
                errflag_485 &= ~ERR_REG;
                break;
              
              default:
                errflag_485 |= ERR_REG;
                break;
            }
            break;

          case CMD_R8:
            if(REG_ERR)
              errflag_485 &= ~ERR_REG;
            else
              errflag_485 |= ERR_REG;
            break;
                    
          default:
            errflag_485 |= ERR_INST;
            break;
        
        
        }
      }
      // AI
    }
  }

  if(state_485 == write_answ)
  {
    //if slave is correct
    if(address_485 == slave_485)
    {
      if(inst_485 == CMD_PING || inst_485 == CMD_W8 || inst_485 == CMD_W16 || errflag_485)
      {
        if(!errflag_485)
        {
          out_buf2[0] = ACK;
          out_buf2[1] = ACK ^ CHECKSUM;
        }
        else
        {
          out_buf2[0] = NACK | (errflag_485 & 0x0F);
          out_buf2[1] = out_buf2[0] ^ CHECKSUM;
        }
        resp2();
      }
      else if (inst_485 == CMD_R8)
      {
        
        out_buf3[0] = ACK;        
        switch (reg_485)
        {
        case REG_FB:
          out_buf3[1] = reg_feedback;
          break;
        case REG_IN:
          out_buf3[1] = reg_in;
          break;
        case REG_ERR:
          out_buf3[1] = errflag_485;
        }
        
        out_buf3[2] = ACK ^ out_buf3[1] ^ CHECKSUM;
        resp3();
        
      }
    }
    else
    {
      __disable_irq();
      delay_us(40);
      __enable_irq();
    }

    state_485 = read_start;
    //then or else wait for new start bit
    
    HAL_UART_Receive_IT(&huart3, RxBuffer, 1);

  }
}


void resp2()
{
    delay_us(10);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 1);
    delay_us(1);
    HAL_UART_Transmit(&huart3, out_buf2, 2, 1);
    delay_us(1);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 0);
    delay_us(10);
}

void resp3()
{
    delay_us(10);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 1);
    delay_us(1);
    HAL_UART_Transmit(&huart3, out_buf3, 3, 1);
    delay_us(1);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 0);
    delay_us(10);
}

void resp4()
{
    delay_us(10);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 1);
    delay_us(1);
    HAL_UART_Transmit(&huart3, out_buf4, 4, 1);
    delay_us(1);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 0);
    delay_us(10);
}
/****************************************************/
/************** µs-Timer Functions ******************/
/****************************************************/

void timer_init()
{
    HAL_TIM_Base_Start(&htim1);
}

void delay_us(uint16_t us)
{
    __HAL_TIM_SET_COUNTER(&htim1, 0); // set the counter value a 0
    while (__HAL_TIM_GET_COUNTER(&htim1) < us)
        ; // wait for the counter to reach the us input in the parameter
}