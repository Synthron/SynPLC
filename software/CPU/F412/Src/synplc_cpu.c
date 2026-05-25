/**
  ******************************************************************************
  * @file    synplc_cpu.c
  * @brief   SynPLC CPU Communication Library Implementation
  * @details Library for STM32F412 CPU to communicate with IO modules via RS485
  ******************************************************************************
  */

#include "synplc_cpu.h"
#include "main.h"

/* Private variables */
static uint8_t rx_buffer[4];  /* Buffer for receiving responses */
static uint8_t last_error = SYNPLC_ERR_NONE;

/* Private function prototypes */
static uint8_t calculate_checksum(uint8_t *data, uint8_t length);
static uint8_t send_command(uint8_t device_addr, uint8_t command, uint8_t reg, uint8_t *data, uint8_t data_len, uint32_t timeout_ms);
static uint8_t receive_response(uint8_t expected_len, uint32_t timeout_ms);

/**
 * @brief Initialize the SynPLC CPU communication library
 */
void synplc_cpu_init(void)
{
    last_error = SYNPLC_ERR_NONE;
}

/**
 * @brief Send a ping command to a device
 * @param device_addr Device address (0-31)
 * @param timeout_ms Timeout in milliseconds
 * @return Error code (SYNPLC_ERR_*)
 */
uint8_t synplc_cpu_ping(uint8_t device_addr, uint32_t timeout_ms)
{
    return send_command(device_addr, SYNPLC_CMD_PING, 0, NULL, 0, timeout_ms);
}

/**
 * @brief Read 8-bit register from a device
 * @param device_addr Device address (0-31)
 * @param reg Register to read
 * @param data Pointer to store read data
 * @param timeout_ms Timeout in milliseconds
 * @return Error code (SYNPLC_ERR_*)
 */
uint8_t synplc_cpu_read_reg8(uint8_t device_addr, uint8_t reg, uint8_t *data, uint32_t timeout_ms)
{
    uint8_t error = send_command(device_addr, SYNPLC_CMD_R8, reg, NULL, 0, timeout_ms);
    if (error == SYNPLC_ERR_NONE && data != NULL) {
        *data = rx_buffer[1];  /* Data byte from response */
    }
    return error;
}

/**
 * @brief Write 8-bit register to a device
 * @param device_addr Device address (0-31)
 * @param reg Register to write
 * @param data Data to write
 * @param timeout_ms Timeout in milliseconds
 * @return Error code (SYNPLC_ERR_*)
 */
uint8_t synplc_cpu_write_reg8(uint8_t device_addr, uint8_t reg, uint8_t data, uint32_t timeout_ms)
{
    return send_command(device_addr, SYNPLC_CMD_W8, reg, &data, 1, timeout_ms);
}

/**
 * @brief Read 16-bit register from a device
 * @param device_addr Device address (0-31)
 * @param reg Register to read
 * @param data Pointer to store read data
 * @param timeout_ms Timeout in milliseconds
 * @return Error code (SYNPLC_ERR_*)
 */
uint8_t synplc_cpu_read_reg16(uint8_t device_addr, uint8_t reg, uint16_t *data, uint32_t timeout_ms)
{
    uint8_t error = send_command(device_addr, SYNPLC_CMD_R16, reg, NULL, 0, timeout_ms);
    if (error == SYNPLC_ERR_NONE && data != NULL) {
        *data = (rx_buffer[2] << 8) | rx_buffer[1];  /* 16-bit data from response */
    }
    return error;
}

/**
 * @brief Write 16-bit register to a device
 * @param device_addr Device address (0-31)
 * @param reg Register to write
 * @param data Data to write
 * @param timeout_ms Timeout in milliseconds
 * @return Error code (SYNPLC_ERR_*)
 */
uint8_t synplc_cpu_write_reg16(uint8_t device_addr, uint8_t reg, uint16_t data, uint32_t timeout_ms)
{
    uint8_t data_bytes[2];
    data_bytes[0] = data & 0xFF;
    data_bytes[1] = (data >> 8) & 0xFF;
    return send_command(device_addr, SYNPLC_CMD_W16, reg, data_bytes, 2, timeout_ms);
}

/**
 * @brief Read digital input from DI module
 * @param module_addr Module address (0-31)
 * @param input_data Pointer to store 8-bit input data
 * @return Error code (SYNPLC_ERR_*)
 * @example uint8_t di_data; synplc_read_digital_input(0, &di_data);
 */
uint8_t synplc_read_digital_input(uint8_t module_addr, uint8_t *input_data)
{
    return synplc_cpu_read_reg8(module_addr | SYNPLC_DEV_DI, SYNPLC_REG_IN, input_data, SYNPLC_DEFAULT_TIMEOUT);
}

/**
 * @brief Write digital output to DO module
 * @param module_addr Module address (0-31)
 * @param output_data 8-bit output data
 * @return Error code (SYNPLC_ERR_*)
 * @example synplc_write_digital_output(0, 0xFF);
 */
uint8_t synplc_write_digital_output(uint8_t module_addr, uint8_t output_data)
{
    return synplc_cpu_write_reg8(module_addr | SYNPLC_DEV_DO, SYNPLC_REG_OUT, output_data, SYNPLC_DEFAULT_TIMEOUT);
}

/**
 * @brief Read analog input from AI module
 * @param module_addr Module address (0-31)
 * @param channel Channel number (0-3)
 * @param adc_value Pointer to store 16-bit ADC value
 * @return Error code (SYNPLC_ERR_*)
 * @example uint16_t ai_val; synplc_read_analog_input(0, 0, &ai_val);
 */
uint8_t synplc_read_analog_input(uint8_t module_addr, uint8_t channel, uint16_t *adc_value)
{
    uint8_t reg = SYNPLC_REG_CH1 + channel;
    return synplc_cpu_read_reg16(module_addr | SYNPLC_DEV_AI, reg, adc_value, SYNPLC_DEFAULT_TIMEOUT);
}

/**
 * @brief Write analog output to AO module
 * @param module_addr Module address (0-31)
 * @param channel Channel number (0-3)
 * @param dac_value 16-bit DAC value (0-10000)
 * @return Error code (SYNPLC_ERR_*)
 * @example synplc_write_analog_output(0, 0, 5000);
 */
uint8_t synplc_write_analog_output(uint8_t module_addr, uint8_t channel, uint16_t dac_value)
{
    uint8_t reg = SYNPLC_REG_CH1 + channel;
    return synplc_cpu_write_reg16(module_addr | SYNPLC_DEV_AO, reg, dac_value, SYNPLC_DEFAULT_TIMEOUT);
}

/**
 * @brief Read error status from any module
 * @param module_addr Module address (0-31)
 * @param error_status Pointer to store error status
 * @return Error code (SYNPLC_ERR_*)
 * @example uint8_t err_stat; synplc_read_error_status(0, &err_stat);
 */
uint8_t synplc_read_error_status(uint8_t module_addr, uint8_t *error_status)
{
    /* Try different device types to find the module */
    uint8_t device_types[] = {SYNPLC_DEV_DI, SYNPLC_DEV_DO, SYNPLC_DEV_AI, SYNPLC_DEV_AO};
    uint8_t error;

    for (uint8_t i = 0; i < sizeof(device_types); i++) {
        error = synplc_cpu_read_reg8(module_addr | device_types[i], SYNPLC_REG_ERR, error_status, SYNPLC_DEFAULT_TIMEOUT);
        if (error == SYNPLC_ERR_NONE) {
            return SYNPLC_ERR_NONE;
        }
    }

    return last_error;
}

/**
 * @brief Get last communication error
 * @return Last error code
 */
uint8_t synplc_get_last_error(void)
{
    return last_error;
}

/* Private helper functions */

/**
 * @brief Calculate XOR checksum for protocol
 * @param data Data buffer
 * @param length Data length
 * @return Calculated checksum
 */
static uint8_t calculate_checksum(uint8_t *data, uint8_t length)
{
    uint8_t checksum = 0;
    for (uint8_t i = 0; i < length; i++) {
        checksum ^= data[i];
    }
    checksum ^= SYNPLC_CHECKSUM_SEED;
    return checksum;
}

/**
 * @brief Send command to device and receive response
 * @param device_addr Device address
 * @param command Command byte
 * @param reg Register byte
 * @param data Data buffer (NULL for read commands)
 * @param data_len Data length
 * @param timeout_ms Timeout in milliseconds
 * @return Error code
 */
static uint8_t send_command(uint8_t device_addr, uint8_t command, uint8_t reg, uint8_t *data, uint8_t data_len, uint32_t timeout_ms)
{
    uint8_t tx_buffer[6];  /* Max command length: START + ADDR + CMD_REG + DATA + CHECKSUM */
    uint8_t tx_len;
    uint8_t expected_rx_len;

    /* Build command frame */
    tx_buffer[0] = SYNPLC_START_BYTE;
    tx_buffer[1] = device_addr;
    tx_buffer[2] = command | reg;

    if (data != NULL && data_len > 0) {
        /* Write command with data */
        for (uint8_t i = 0; i < data_len; i++) {
            tx_buffer[3 + i] = data[i];
        }
        tx_buffer[3 + data_len] = calculate_checksum(tx_buffer, 3 + data_len);
        tx_len = 4 + data_len;
        expected_rx_len = 2;  /* ACK/NACK response */
    } else {
        /* Read command or ping */
        tx_buffer[3] = calculate_checksum(tx_buffer, 3);
        tx_len = 4;

        if (command == SYNPLC_CMD_R8) {
            expected_rx_len = 3;  /* ACK + DATA + CHECKSUM */
        } else if (command == SYNPLC_CMD_R16) {
            expected_rx_len = 4;  /* ACK + DATA_L + DATA_H + CHECKSUM */
        } else {
            expected_rx_len = 2;  /* ACK/NACK response */
        }
    }

    /* Send command */
    send_485(tx_buffer, tx_len);

    /* Receive response */
    return receive_response(expected_rx_len, timeout_ms);
}

/**
 * @brief Receive and validate response from device
 * @param expected_len Expected response length
 * @param timeout_ms Timeout in milliseconds
 * @return Error code
 */
static uint8_t receive_response(uint8_t expected_len, uint32_t timeout_ms)
{
    HAL_StatusTypeDef uart_status;

    /* Ensure LED_FLASH is off during receive */
    HAL_GPIO_WritePin(LED_FLASH_GPIO_Port, LED_FLASH_Pin, 0);

    /* Receive response */
    uart_status = HAL_UART_Receive(&huart1, rx_buffer, expected_len, timeout_ms);

    if (uart_status != HAL_OK) {
        last_error = SYNPLC_ERR_TIMEOUT;
        return SYNPLC_ERR_TIMEOUT;
    }

    /* Validate response */
    if (expected_len >= 2) {
        if ((rx_buffer[0] & 0xF0) == SYNPLC_NACK) {
            /* NACK received with error code */
            last_error = SYNPLC_ERR_NACK;
            return SYNPLC_ERR_NACK;
        } else if ((rx_buffer[0] & 0xF0) == SYNPLC_ACK) {
            /* ACK received - validate checksum if data present */
            if (expected_len > 2) {
                uint8_t calculated_checksum = calculate_checksum(rx_buffer, expected_len - 1);
                if (calculated_checksum != rx_buffer[expected_len - 1]) {
                    last_error = SYNPLC_ERR_CHECKSUM;
                    return SYNPLC_ERR_CHECKSUM;
                }
            }
            last_error = SYNPLC_ERR_NONE;
            return SYNPLC_ERR_NONE;
        } else {
            /* Invalid response format */
            last_error = SYNPLC_ERR_INVALID_RESP;
            return SYNPLC_ERR_INVALID_RESP;
        }
    }

    last_error = SYNPLC_ERR_NONE;
    return SYNPLC_ERR_NONE;
}