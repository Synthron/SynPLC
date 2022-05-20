

/** @file rs485.h
 * 
 * @brief RS485 lib
 *
 */ 

#ifndef RS485_H
#define RS485_H

#include "main.h"
#include "usart.h"
#include "stdbool.h"
#include "tim.h"

uint16_t DO_Protocol(uint8_t address,  uint8_t fb_reg, uint8_t err_reg, uint8_t out_reg);
void listen();
uint8_t debug_listen(uint8_t address);
void respond2();
void respond3();
void garbage();
void resp2();
//void respond4();

void timer_init();
void delay_us (uint16_t us);

extern  uint8_t reg_out;

#endif /* RS485_H */

/*** end of file ***/
