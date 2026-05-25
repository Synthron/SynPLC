/**
  ******************************************************************************
  * @file    synplc_cpu.h
  * @brief   SynPLC CPU Communication Library Header
  * @details Library for STM32F412 CPU to communicate with IO modules via RS485
  ******************************************************************************
  */

#ifndef SYNPLC_CPU_H
#define SYNPLC_CPU_H

#include "main.h"
#include "usart.h"
#include "tim.h"
#include <stdint.h>
#include <stdbool.h>

/* Protocol Constants */
#define SYNPLC_START_BYTE      0x5A
#define SYNPLC_CHECKSUM_SEED   0xC5
#define SYNPLC_ACK             0xC0
#define SYNPLC_NACK            0x30

/* Device Types */
#define SYNPLC_DEV_DI          0x00  /* Digital Input */
#define SYNPLC_DEV_DO          0x20  /* Digital Output */
#define SYNPLC_DEV_AI          0x40  /* Analog Input */
#define SYNPLC_DEV_AO          0x60  /* Analog Output */
#define SYNPLC_DEV_PWM         0x80  /* PWM Output */
#define SYNPLC_DEV_XT          0xA0  /* Extension TX */
#define SYNPLC_DEV_XR          0xC0  /* Extension RX */

/* Commands */
#define SYNPLC_CMD_PING        0x00  /* Ping device */
#define SYNPLC_CMD_R8          0x10  /* Read 8-bit register */
#define SYNPLC_CMD_W8          0x20  /* Write 8-bit register */
#define SYNPLC_CMD_R16         0x50  /* Read 16-bit register */
#define SYNPLC_CMD_W16         0x60  /* Write 16-bit register */

/* Registers */
#define SYNPLC_REG_IN          0x0   /* Input register (DI/DO) */
#define SYNPLC_REG_OUT         0x1   /* Output register (DO) */
#define SYNPLC_REG_FB          0x2   /* Feedback register (DO) */
#define SYNPLC_REG_ERR         0xF   /* Error register */
#define SYNPLC_REG_CH1         0x4   /* Channel 1 (AI/AO) */
#define SYNPLC_REG_CH2         0x5   /* Channel 2 (AI/AO) */
#define SYNPLC_REG_CH3         0x6   /* Channel 3 (AI/AO) */
#define SYNPLC_REG_CH4         0x7   /* Channel 4 (AI/AO) */

/* Error Codes */
#define SYNPLC_ERR_NONE        0x00  /* No error */
#define SYNPLC_ERR_TIMEOUT     0x01  /* Communication timeout */
#define SYNPLC_ERR_NACK        0x02  /* NACK received */
#define SYNPLC_ERR_CHECKSUM    0x03  /* Checksum error */
#define SYNPLC_ERR_INVALID_RESP 0x04 /* Invalid response */

/* Timeout Configuration */
#define SYNPLC_DEFAULT_TIMEOUT 100   /* Default timeout in ms */

/* Function Prototypes */

/**
 * @brief Initialize the SynPLC CPU communication library
 */
void synplc_cpu_init(void);

/**
 * @brief Send a ping command to a device
 * @param device_addr Device address (0-31)
 * @param timeout_ms Timeout in milliseconds
 * @return Error code (SYNPLC_ERR_*)
 */
uint8_t synplc_cpu_ping(uint8_t device_addr, uint32_t timeout_ms);

/**
 * @brief Read 8-bit register from a device
 * @param device_addr Device address (0-31)
 * @param reg Register to read
 * @param data Pointer to store read data
 * @param timeout_ms Timeout in milliseconds
 * @return Error code (SYNPLC_ERR_*)
 */
uint8_t synplc_cpu_read_reg8(uint8_t device_addr, uint8_t reg, uint8_t *data, uint32_t timeout_ms);

/**
 * @brief Write 8-bit register to a device
 * @param device_addr Device address (0-31)
 * @param reg Register to write
 * @param data Data to write
 * @param timeout_ms Timeout in milliseconds
 * @return Error code (SYNPLC_ERR_*)
 */
uint8_t synplc_cpu_write_reg8(uint8_t device_addr, uint8_t reg, uint8_t data, uint32_t timeout_ms);

/**
 * @brief Read 16-bit register from a device
 * @param device_addr Device address (0-31)
 * @param reg Register to read
 * @param data Pointer to store read data
 * @param timeout_ms Timeout in milliseconds
 * @return Error code (SYNPLC_ERR_*)
 */
uint8_t synplc_cpu_read_reg16(uint8_t device_addr, uint8_t reg, uint16_t *data, uint32_t timeout_ms);

/**
 * @brief Write 16-bit register to a device
 * @param device_addr Device address (0-31)
 * @param reg Register to write
 * @param data Data to write
 * @param timeout_ms Timeout in milliseconds
 * @return Error code (SYNPLC_ERR_*)
 */
uint8_t synplc_cpu_write_reg16(uint8_t device_addr, uint8_t reg, uint16_t data, uint32_t timeout_ms);

/* High-level convenience functions */

/**
 * @brief Read digital input from DI module
 * @param module_addr Module address (0-31)
 * @param input_data Pointer to store 8-bit input data
 * @return Error code (SYNPLC_ERR_*)
 * @example uint8_t di_data; synplc_read_digital_input(0, &di_data);
 */
uint8_t synplc_read_digital_input(uint8_t module_addr, uint8_t *input_data);

/**
 * @brief Write digital output to DO module
 * @param module_addr Module address (0-31)
 * @param output_data 8-bit output data
 * @return Error code (SYNPLC_ERR_*)
 * @example synplc_write_digital_output(0, 0xFF);
 */
uint8_t synplc_write_digital_output(uint8_t module_addr, uint8_t output_data);

/**
 * @brief Read analog input from AI module
 * @param module_addr Module address (0-31)
 * @param channel Channel number (0-3)
 * @param adc_value Pointer to store 16-bit ADC value
 * @return Error code (SYNPLC_ERR_*)
 * @example uint16_t ai_val; synplc_read_analog_input(0, 0, &ai_val);
 */
uint8_t synplc_read_analog_input(uint8_t module_addr, uint8_t channel, uint16_t *adc_value);

/**
 * @brief Write analog output to AO module
 * @param module_addr Module address (0-31)
 * @param channel Channel number (0-3)
 * @param dac_value 16-bit DAC value (0-10000)
 * @return Error code (SYNPLC_ERR_*)
 * @example synplc_write_analog_output(0, 0, 5000);
 */
uint8_t synplc_write_analog_output(uint8_t module_addr, uint8_t channel, uint16_t dac_value);

/**
 * @brief Read error status from any module
 * @param module_addr Module address (0-31)
 * @param error_status Pointer to store error status
 * @return Error code (SYNPLC_ERR_*)
 * @example uint8_t err_stat; synplc_read_error_status(0, &err_stat);
 */
uint8_t synplc_read_error_status(uint8_t module_addr, uint8_t *error_status);

/**
 * @brief Get last communication error
 * @return Last error code
 */
uint8_t synplc_get_last_error(void);

#endif /* SYNPLC_CPU_H */