#include "rs485.h"

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
    while (HAL_UART_Receive(&huart3, debug_buf, 3, 1) != HAL_OK)
        ;

    uint8_t inst = debug_buf[2] & 0xF0;

    if ((debug_buf[0] == 0x5A))
    {
        switch (inst)
        {
        case CMD_W8:
            while (HAL_UART_Receive(&huart3, &debug_buf[3], 2, 1) != HAL_OK)
                ;
            in_buf[0] = debug_buf[1]; // addr
            in_buf[1] = debug_buf[2]; // isr
            in_buf[2] = debug_buf[3]; // data
            in_buf[5] = debug_buf[4]; // chk
            break;

        case CMD_W16:
            while (HAL_UART_Receive(&huart3, &debug_buf[3], 3, 1) != HAL_OK)
                ;
            in_buf[0] = debug_buf[1]; // addr
            in_buf[1] = debug_buf[2]; // isr
            in_buf[2] = debug_buf[3]; // data LSB
            in_buf[3] = debug_buf[4]; // data MSB
            in_buf[5] = debug_buf[5]; // chk
            break;

        case (CMD_PING || CMD_R8 || CMD_R16):
            while (HAL_UART_Receive(&huart3, &debug_buf[3], 1, 1) != HAL_OK)
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
/*
void garbage()
{
    uint8_t dump[4];
    while (HAL_UART_Receive(&huart3, dump, 1, 1))
        ;
}*/