#include "rs485.h"

uint8_t state = 0;
uint8_t in_buf[10] = {0, 0, 0, 0, 0, 0, 0 ,0 ,0 ,0};
uint8_t out_buf2[2] = {0, 0};
uint8_t out_buf3[3] = {0, 0, 0};
uint8_t debug_buf[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
// uint8_t out_buf4[4] = {0,0,0,0};
bool cs_err = false;

uint16_t ret_val_8; // 0x0Axx = return data || 0xA0xx = no return data

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

void resp2()
{
    in_buf[0] = 0xFF;
    delay_us(15);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 1);
    delay_us(1);
    HAL_UART_Transmit(&huart3, out_buf2, 2, HAL_MAX_DELAY);
    delay_us(1);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 0);
    delay_us(10);
}

#define CMD_8BIT_WRITE 0x20
uint16_t DO_Protocol(uint8_t address, uint8_t fb_reg, uint8_t err_reg, uint8_t out_reg)
{
    uint8_t cmd;
    uint8_t reg;

    debug_listen(address);

    ret_val_8 = 0xA000;
    reg = in_buf[1] & 0x0F;
    cmd = in_buf[1] & 0xF0;
    
    switch (cmd)
    {
    case CMD_8BIT_WRITE:
        //while (HAL_UART_Receive(&huart3, &in_buf[3], 2, 1) != HAL_OK);
        if (reg == 0x01)
        {
            ret_val_8 = 0x0A00 | in_buf[2];
            out_buf2[0] = 0xC0 | err_reg;
            out_buf2[1] = out_buf2[0] ^ 0xC5;

            resp2();
            state = 0;
            // respond2();
        }
        else
        {
            out_buf2[0] = 0x31;
            out_buf2[1] = out_buf2[0] ^ 0xC5;
            //resp2();;
        }
        break;

    default:
        out_buf2[0] = 0x32;
        out_buf2[1] = out_buf2[0] ^ 0xC5;
        //resp2();
        break;
    }
    
    

    // nur agieren wenn angesprochen
    /*if((in_buf[0] == address))
    {
        //state = 0;
        out_buf2[0] = 0x32;
        out_buf2[1] = out_buf2[0] ^ 0xC5;
       // HAL_GPIO_TogglePin(GPIOA,GPIO_PIN_11);
        respond2();

        uint8_t inst = in_buf[1] & 0xF0;
        // if unknown instruction, send error
        if(!((inst == 0x00) || (inst == 0x10) || (inst == 0x20)))
        {
            out_buf2[0] = 0x32;
            out_buf2[1] = out_buf2[0] ^ 0xC5;
            respond2();
        }
        else // known instructions from here on
        {

            uint8_t reg = in_buf[1] & 0x0F;
            // if unknown register
            if(!(reg == 0x1 || reg == 0xE || reg == 0xF))
            {
                out_buf2[0] = 0x31;
                out_buf2[1] = out_buf2[0] ^ 0xC5;
                respond2();
            }
            else // known registers from here on
            {
                if(inst == 0x00) // discovery
                {
                    out_buf2[0] = 0xF0;
                    out_buf2[1] = out_buf2[0] ^ 0xC5;
                    respond2();buf, 1, 10);
            if (ret != HAL_OK) {
                cs_err = true;
            }
            in_buf[2] = temp_buf[0];
            if((0x5A ^ in_buf[0] ^ in_buf[1] ^ in
                }
                else if(inst == 0x10) // read
                {buf, 1, 10);
            if (ret != HAL_OK) {
                cs_err = true;
            }
            in_buf[2] = temp_buf[0];
            if((0x5A ^ in_buf[0] ^ in_buf[1] ^ in
                    out_buf3[0] = 0xC0 + err_reg;
                    switch (reg)
                    {
                    case 1:
                        out_buf3[1] = out_reg;
                        break;
                    case 14:
                        out_buf3[1] = fb_reg;
                        break;
                    case 15:
                        out_buf3[1] = err_reg;
                        break;
                    }
                    out_buf3[2] = out_buf3[0] ^ out_buf3[1] ^ 0xC5;
                    respond3();
                }
                else // write
                {
                    if(reg == 0x01) // only write output reg
                    {

                        out_buf2[0] = 0xC0 + err_reg;
                        out_buf2[1];
                    }
                    else
                    {
                        out_buf2[0] = 0x31;
                        out_buf2[1] = out_buf2[0] ^ 0xC5;
                        respond2();
                    }
                }
            }
        }

    }
    else
    {
        garbage();
        ret_val_8 = 0x0A00 | in_buf[0];
        reg_out = in_buf[0];
        set_Output();
       //HAL_GPIO_TogglePin(GPIOA,GPIO_PIN_12);
    }
    //delay_us(100);*/

    return ret_val_8;
}

uint8_t debug_listen(uint8_t address)
{
    while (HAL_UART_Receive(&huart3, debug_buf, 5, 1) != HAL_OK);
    if ((debug_buf[0] == 0x5A) && (debug_buf[1] == address))
    {

        in_buf[0] = debug_buf[1]; //addr
        in_buf[1] = debug_buf[2]; //isr
        in_buf[2] = debug_buf[3]; //data
        in_buf[3] = debug_buf[4]; //chk

        return HAL_OK;
        /*
        reg_out = debug_buf[3];HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 0);
        out_buf2[0] = 0xC0;
        out_buf2[1] = 0x05;
        respond2();*/
    }

    /*
    else {
        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 0);
        HAL_GPIO_TogglePin(GPIOA,GPIO_PIN_12);
        garbage();
    }*/

}

void listen()
{
    uint8_t temp_buf[3] = {0, 0, 0};
    int ret = 0;
    // wait for start byte
    if (state == 0)
    {
        while (HAL_UART_Receive(&huart3, temp_buf, 1, 1000) != HAL_OK)
            ;
        if (temp_buf[0] == 0x5A)
            state = 1;
    }
    if (state == 1)
    {
        // read address and inst/reg
        ret = HAL_UART_Receive(&huart3, in_buf, 2, 10);
        if (ret != HAL_OK)
        {
            cs_err = true;
        }
        else if ((in_buf[1] & 0xF0) == 0x20) // if 8bit write
        {
            ret = HAL_UART_Receive(&huart3, temp_buf, 2, 10);
            in_buf[2] = temp_buf[0];
            in_buf[3] = temp_buf[1];
            if ((0x5A ^ in_buf[0] ^ in_buf[1] ^ in_buf[2] ^ in_buf[3]) != 0xC5)
                cs_err = true;
            else
                cs_err = false;
        }
        else if ((in_buf[2] & 0xF0) == 0x60) // if 16bit write
        {
            ret = HAL_UART_Receive(&huart3, temp_buf, 3, 10);
            if (ret != HAL_OK)
            {
                cs_err = true;
            }
            in_buf[2] = temp_buf[0];
            in_buf[3] = temp_buf[1];
            in_buf[4] = temp_buf[2];
            if ((0x5A ^ in_buf[0] ^ in_buf[1] ^ in_buf[2] ^ in_buf[3] ^ in_buf[4]) != 0xC5)
                cs_err = true;
            else
                cs_err = false;
        }
        else // if read or discovery
        {
            ret = HAL_UART_Receive(&huart3, temp_buf, 1, 10);
            if (ret != HAL_OK)
            {
                cs_err = true;
            }
            in_buf[2] = temp_buf[0];
            if ((0x5A ^ in_buf[0] ^ in_buf[1] ^ in_buf[2]) != 0xC5)
                cs_err = true;
            else
                cs_err = false;
        }
    }
}

void respond2()
{
    delay_us(15);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 1);
    delay_us(1);
    HAL_UART_Transmit(&huart3, out_buf2, 2, HAL_MAX_DELAY);
    delay_us(1);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 0);
    delay_us(10);
    in_buf[0] = 0x00;
    state = 0;
    // HAL_UART_Receive(&huart3, &in_buf[5], 1, 1000);
}
void respond3()
{
    delay_us(15);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 1);
    delay_us(1);
    HAL_UART_Transmit(&huart3, out_buf3, 3, 0);
    delay_us(1);
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 0);
    in_buf[0] = 0xFF;
    state = 0;
    // HAL_UART_Receive(&huart3, &in_buf[5], 1, 1000);
}
/*void respond4()
{
    in_buf[0] = 0x00;
    state = 0;
}*/

void garbage()
{
    uint8_t dump[4];
    while(HAL_UART_Receive(&huart3, dump, 1, 1));}

/*
    uint8_t inst = in_buf[1] & 0xF0;

    if (inst == 0x10)
    {
        HAL_UART_Receive(&huart3, dump, 4, 1000);
    }
    else if (inst == 0x50)
    {
        HAL_UART_Receive(&huart3, dump, 5, 1000);
    }
    else        in_buf[2] = debug_buf[3];*/