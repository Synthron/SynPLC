/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "can.h"
#include "crc.h"
#include "i2c.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "synplc.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
void Slave_Init(void);
void write_single(uint8_t channel, uint16_t output_raw);
void write_all(uint16_t *data);
void convert_dacs(uint16_t *data, uint8_t modes);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
#define MCP_ADDR 0b11000010

uint8_t address = 0;
uint16_t dac_vals[4];
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
  //HAL_I2C_Master_Transmit(&hi2c1, MCP_ADDR, );
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_CAN_Init();
  MX_CRC_Init();
  MX_USART3_UART_Init();
  MX_I2C1_Init();
  MX_TIM1_Init();
  /* USER CODE BEGIN 2 */
  timer_init();
  Slave_Init();
  init_485(address);

  __enable_irq();
  HAL_UART_Receive_IT(&huart3, RxBuffer, 1);
  
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

    //set DAC values
    convert_dacs(dac_out, dac_stat);
    //update dacs
    write_all(dac_vals);
    //set LEDs
    for(int i = 0; i < 4; i++)
    {
      if(dac_out[i] != 0)
        HAL_GPIO_WritePin(CC1_GPIO_Port, CC1_Pin + i, 1);
      else
        HAL_GPIO_WritePin(CC1_GPIO_Port, CC1_Pin + i, 0);
    }

    
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{

  parse_485();

}

void convert_dacs(uint16_t *data, uint8_t modes)
{
  for(int i = 0; i < 4; i++)
  {
    if(modes & (0x01 << i)) // CC mode
      dac_vals[i] = data[i] / 5;
    else 
      dac_vals[i] = (uint16_t)((float)data[i] / 2.5);
  }
}

void Slave_Init(void)
{
  address = 0x60 + (GPIOA->IDR & 0x1F);
  GPIOA->ODR &= ~(0x1FE0); // set relais and LEDs to off
  HAL_GPIO_WritePin(DIR_GPIO_Port, DIR_Pin, 0); // set Direction to read
}

void write_single(uint8_t channel, uint16_t output_raw)
{
  HAL_Delay(20);
  uint8_t data[4];
  data[0] = 0x58 | ((channel << 1)&0x06); //single write, update after last acknowledge
  data[1] = 0x90 | ((output_raw >> 8)& 0x0F);
  data[2] = output_raw & 0x00FF;
  HAL_I2C_Master_Transmit(&hi2c1, MCP_ADDR, data, 3, 1);
}

void write_all(uint16_t *data)
{
  //HAL_Delay(25);
  uint8_t send_dat[8];
  send_dat[0] = (data[0] >> 8) & 0x0F;
  send_dat[1] = data[0] & 0x00FF;
  send_dat[2] = (data[1] >> 8) & 0x0F;
  send_dat[3] = data[1] & 0x00FF;
  send_dat[4] = (data[2] >> 8) & 0x0F;
  send_dat[5] = data[2] & 0x00FF;
  send_dat[6] = (data[3] >> 8) & 0x0F;
  send_dat[7] = data[3] & 0x00FF;
  HAL_I2C_Master_Transmit(&hi2c1, MCP_ADDR, send_dat, 8, 1);

}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
