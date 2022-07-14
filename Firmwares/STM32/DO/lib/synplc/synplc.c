#include "synplc.h"

/****************************************************/
/**************** RS485-Protokoll *******************/
/****************************************************/

uint8_t in_buf[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
uint8_t out_buf2[2] = {0, 0};
uint8_t out_buf3[3] = {0, 0, 0};
uint8_t debug_buf[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

uint16_t ret_val_8; // 0x0Axx = return data || 0xA0xx = no return data



void resp2()
{
    in_buf[0] = 0xFF;
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
    in_buf[0] = 0xFF;
    delay_us(10);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 1);
    delay_us(1);
    HAL_UART_Transmit(&huart3, out_buf3, 3, 1);
    delay_us(1);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 0);
    delay_us(10);
}

uint16_t DO_Protocol(uint8_t address, uint8_t fb_reg, uint8_t err_reg, uint8_t out_reg)
{
    uint8_t cmd;
    uint8_t reg;

    listen();

    ret_val_8 = 0xA000;
    reg = in_buf[1] & 0x0F;
    cmd = in_buf[1] & 0xF0;
    uint8_t cs = 0x5A ^ in_buf[0] ^ in_buf[1] ^ in_buf[2] ^ in_buf[3] ^ in_buf[4] ^ in_buf[5];


    if (in_buf[0] == address)
    {
        if (cs != 0xC5)
        {
            out_buf2[0] = NACK | ERR_CS;
            out_buf2[1] = out_buf2[0] ^ CHECKSUM;
            resp2();
            return ret_val_8;
        }
        switch (cmd)
        {
        case CMD_W8:

            if (reg == REG_OUT)
            {
                ret_val_8 = 0x0A00 | in_buf[2];
                out_buf2[0] = ACK | err_reg;
                out_buf2[1] = out_buf2[0] ^ CHECKSUM;
                resp2();
            }
            else
            {
                out_buf2[0] = NACK | ERR_REG;
                out_buf2[1] = out_buf2[0] ^ CHECKSUM;
                resp2();
            }
            break;
        case CMD_PING:
                out_buf2[0] = ACK | err_reg;
                out_buf2[1] = out_buf2[0] ^ CHECKSUM;
                resp2();
            break;

        case CMD_R8:

            if (reg == REG_IN)
            {
                out_buf3[0] = ACK | err_reg;
                out_buf3[1] = fb_reg;
                out_buf3[2] = out_buf3[0] ^ out_buf3[1] ^ 0xC5;
                resp2();
            }
            else if (reg == REG_ERR)
            {
                out_buf3[0] = ACK | err_reg;
                out_buf3[1] = err_reg;
                out_buf3[2] = out_buf3[0] ^ out_buf3[1] ^ 0xC5;
                resp2();
            }
            else
            {
                out_buf2[0] = NACK | ERR_REG;
                out_buf2[1] = out_buf2[0] ^ CHECKSUM;
                resp2();
            }
            break;

        default:
            out_buf2[0] = NACK | ERR_INST;
            out_buf2[1] = out_buf2[0] ^ CHECKSUM;
            resp2();
            break;
        }
    }
    return ret_val_8;
}

uint8_t listen()
{
    while (HAL_UART_Receive(&huart3, debug_buf, 3, 40) != HAL_OK)
        ;

    uint8_t inst = debug_buf[2] & 0xF0;

    if ((debug_buf[0] == 0x5A))
    {
        switch (inst)
        {
        case CMD_W8:
            while (UART_Receive(&huart3, &debug_buf[3], 2, 40) != HAL_OK)
                ;
            in_buf[0] = debug_buf[1]; // addr
            in_buf[1] = debug_buf[2]; // isr
            in_buf[2] = debug_buf[3]; // data
            in_buf[5] = debug_buf[4]; // chk
            break;

        case CMD_W16:
            while (UART_Receive(&huart3, &debug_buf[3], 3, 40) != HAL_OK)
                ;
            in_buf[0] = debug_buf[1]; // addr
            in_buf[1] = debug_buf[2]; // isr
            in_buf[2] = debug_buf[3]; // data LSB
            in_buf[3] = debug_buf[4]; // data MSB
            in_buf[5] = debug_buf[5]; // chk
            break;

        case (CMD_PING || CMD_R8 || CMD_R16):
            while (UART_Receive(&huart3, &debug_buf[3], 1, 40) != HAL_OK)
                ;
            in_buf[0] = debug_buf[1]; // addr
            in_buf[1] = debug_buf[2]; // isr
            in_buf[5] = debug_buf[3]; // chk
            break;

        default:
            break;
        }
    }
    return HAL_OK;
}

/****************************************************/
/*********** UART FUNTIONEN µs-TIMER ****************/
/****************************************************/

HAL_StatusTypeDef UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
  uint8_t  *pdata8bits;
  uint16_t *pdata16bits;
  uint32_t tickstart = 0U;

  /* Check that a Rx process is not already ongoing */
  if (huart->RxState == HAL_UART_STATE_READY)
  {
    if ((pData == NULL) || (Size == 0U))
    {
      return  HAL_ERROR;
    }

    /* Process Locked */
    __HAL_LOCK(huart);

    huart->ErrorCode = HAL_UART_ERROR_NONE;
    huart->RxState = HAL_UART_STATE_BUSY_RX;
    huart->ReceptionType = HAL_UART_RECEPTION_STANDARD;

    /* Init tickstart for timeout management */
    tickstart = 1;

    huart->RxXferSize = Size;
    huart->RxXferCount = Size;

    /* In case of 9bits/No Parity transfer, pRxData needs to be handled as a uint16_t pointer */
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
    {
      pdata8bits  = NULL;
      pdata16bits = (uint16_t *) pData;
    }
    else
    {
      pdata8bits  = pData;
      pdata16bits = NULL;
    }

    /* Process Unlocked */
    __HAL_UNLOCK(huart);

    /* Check the remain data to be received */
    while (huart->RxXferCount > 0U)
    {
      if (UART_Wait(huart, UART_FLAG_RXNE, RESET, tickstart, Timeout) != HAL_OK)
      {
        return HAL_TIMEOUT;
      }
      if (pdata8bits == NULL)
      {
        *pdata16bits = (uint16_t)(huart->Instance->DR & 0x01FF);
        pdata16bits++;
      }
      else
      {
        if ((huart->Init.WordLength == UART_WORDLENGTH_9B) || ((huart->Init.WordLength == UART_WORDLENGTH_8B) && (huart->Init.Parity == UART_PARITY_NONE)))
        {
          *pdata8bits = (uint8_t)(huart->Instance->DR & (uint8_t)0x00FF);
        }
        else
        {
          *pdata8bits = (uint8_t)(huart->Instance->DR & (uint8_t)0x007F);
        }
        pdata8bits++;
      }
      huart->RxXferCount--;
    }

    /* At end of Rx process, restore huart->RxState to Ready */
    huart->RxState = HAL_UART_STATE_READY;

    return HAL_OK;
  }
  else
  {
    return HAL_BUSY;
  }
}

static HAL_StatusTypeDef UART_Wait(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status, uint32_t Tickstart, uint32_t Timeout)
{
  /* Wait until flag is set */
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
  {
    /* Check for the Timeout */
    if (Timeout != HAL_MAX_DELAY)
    {
      if ((Timeout == 0U) || ((__HAL_TIM_GET_COUNTER(&htim1) - Tickstart) < Timeout))
      {
        /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
        CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE | USART_CR1_TXEIE));
        CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);

        huart->gState  = HAL_UART_STATE_READY;
        huart->RxState = HAL_UART_STATE_READY;

        /* Process Unlocked */
        __HAL_UNLOCK(huart);

        return HAL_TIMEOUT;
      }
    }
  }
  return HAL_OK;
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