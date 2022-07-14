

/** @file synplc.h
 *
 * @brief SynPLC-lib
 *
 */

#ifndef SYNPLC_H
#define SYNPLC_H

#include "main.h"
#include "usart.h"
#include "stdbool.h"
#include "tim.h"

#define CMD_PING 0x00
#define CMD_R8 0x10
#define CMD_W8 0x20
#define CMD_R16 0x50
#define CMD_W16 0x60

#define ACK 0xC0
#define NACK 0x30
#define CHECKSUM 0xC5

#define ERR_OK 0x00
#define ERR_REG 0x01
#define ERR_INST 0x02
#define ERR_PROC 0x0C
#define ERR_CS 0x0D
#define ERR_SYS 0x0F

#define REG_ERR 0xF
#define REG_IN 0x0     // DI and DO     - 8bit
#define REG_OUT 0x1    // DO            - 8bit
#define REG_CH1 0x2    // XT, AI and AO - 16bit
#define REG_CH2 0x3    // XT, AI and AO - 16bit
#define REG_CH3 0x4    // XT, AI and AO - 16bit
#define REG_CH4 0x5    // XT, AI and AO - 16bit

uint16_t DO_Protocol(uint8_t address, uint8_t fb_reg, uint8_t err_reg, uint8_t out_reg);
uint8_t listen();
void resp3();
void garbage();
void resp2();

void timer_init();
void delay_us(uint16_t us);

extern uint8_t reg_out;

/* 
    define us-Timer functions
  */

void timer_init();
void delay_us(uint16_t us);

/* 
    define new UART functions
    µs TIMEOUT instead of ms
  */

HAL_StatusTypeDef UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout);

static HAL_StatusTypeDef UART_Wait(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status, uint32_t Tickstart, uint32_t Timeout);

#endif /* SYNPLC_H */

/*** EOF ***/
