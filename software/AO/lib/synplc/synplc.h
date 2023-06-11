

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

#define DEV_DI 0x00
#define DEV_DO 0x20
#define DEV_AI 0x40
#define DEV_AO 0x60
#define DEV_PWM 0x80
#define DEV_XT  0xA0
#define DEV_XR  0xC0

#define CMD_PING 0x00
#define CMD_R8 0x10
#define CMD_W8 0x20
#define CMD_R16 0x50
#define CMD_W16 0x60

#define ACK 0xC0
#define NACK 0x30
#define CHECKSUM 0xC5
#define START 0x5A

#define ERR_OK 0x00
#define ERR_REG 0x01
#define ERR_INST 0x02
#define ERR_PROC 0x04
#define ERR_CS 0x08

#define REG_ERR 0xF
#define REG_IN 0x0     // DI and DO     - 8bit
#define REG_OUT 0x1    // DO            - 8bit
#define REG_FB  0x2    // DO            - 8bit
#define REG_CH1 0x4    // XT, AI and AO - 16bit
#define REG_CH2 0x5    // XT, AI and AO - 16bit
#define REG_CH3 0x6    // XT, AI and AO - 16bit
#define REG_CH4 0x7    // XT, AI and AO - 16bit


//universal registers
uint8_t RxBuffer[30];
uint8_t reg_out, reg_in, reg_feedback;
uint16_t adc_in[4];
uint16_t dac_out[4];
uint8_t dac_stat; // ||||ch4 cc/cv|ch3 cc/cv|ch2 cc/cv|ch1 cc/cv

void init_485 (uint8_t addr);
void parse_485(void);

enum prot_states {read_start, read_addr_inst, read_dat_cs, write_answ, wait_answ};

enum prot_states state_485;
uint8_t address_485;
uint8_t devtype;
uint8_t slave_485;
uint8_t inst_485;
uint8_t reg_485;
uint8_t dat8_485;
uint16_t dat16_485;
uint8_t checksum_485;
uint8_t checkresult;
uint8_t errflag_485; // -|-|-|-| Checksum Error | Processing Error | Instruction Error | Register Error

uint8_t out_buf2[2]; //no data reply
uint8_t out_buf3[3]; //8bit reply
uint8_t out_buf4[4]; // 16bit reply


void resp3();
void resp2();
void resp4();

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

//HAL_StatusTypeDef UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout);

//static HAL_StatusTypeDef UART_Wait(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status, uint32_t Tickstart, uint32_t Timeout);

#endif /* SYNPLC_H */

/*** EOF ***/
