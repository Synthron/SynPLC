/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
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
#include "fatfs.h"
#include "i2c.h"
#include "rtc.h"
#include "sdio.h"
#include "spi.h"
#include "tim.h"
#include "usart.h"
#include "usb_device.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

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
void PeriphCommonClock_Config(void);
/* USER CODE BEGIN PFP */
void Init_LEDs(void);
void timer_init(void);
void delay_us (uint16_t us);
void send_485(uint8_t *data, uint8_t bytes);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

/* Configure the peripherals common clocks */
  PeriphCommonClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_CAN1_Init();
  MX_RTC_Init();
  MX_SDIO_SD_Init();
  MX_TIM1_Init();
  MX_TIM2_Init();
  MX_TIM3_Init();
  MX_TIM4_Init();
  MX_TIM5_Init();
  MX_TIM8_Init();
  MX_TIM9_Init();
  MX_TIM12_Init();
  MX_USART1_UART_Init();
  MX_USART2_UART_Init();
  MX_FATFS_Init();
  MX_USB_DEVICE_Init();
  MX_I2C1_Init();
  MX_SPI2_Init();
  /* USER CODE BEGIN 2 */
  Init_LEDs();
  timer_init();

  HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, 0);

  HAL_Delay(500);


//  uint8_t count = 0x0;

/*  uint8_t data1[5] = {0X5A, 0x21, 0x21, 0, 0};
  uint8_t data2[5] = {0X5A, 0x03, 0x10, 0, 0};
  uint8_t data3[5] = {0X5A, 0x22, 0x21, 0, 0};
  uint8_t data4[5] = {0X5A, 0x04, 0x10, 0, 0};*/
  uint8_t rec[5] = {0,0,0,0,0};
  uint8_t data_ao[6] = {0x5A, 0x60, 0, 0, 0, 0};
  uint16_t ao_val = 0;
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
/*
//read DI
    data2[3] = data2[0] ^ data2[1] ^ data2[2] ^ 0xC5;
    send_485(data2, 4);

    delay_us(50);

    data4[3] = data4[0] ^ data4[1] ^ data4[2] ^ 0xC5;
    send_485(data4, 4);

    delay_us(50);

//write DO
    count = rand();
    data1[3] = count;
    data1[4] = data1[0] ^ data1[1] ^ data1[2] ^ data1[3] ^ 0xC5;
    send_485(data1, 5);
    HAL_UART_Receive(&huart1, rec, 2, 10);

    HAL_Delay(50);

    count = rand();
    data3[3] = count;
    data3[4] = data3[0] ^ data3[1] ^ data3[2] ^ data3[3] ^ 0xC5;
    send_485(data3, 5);
    HAL_UART_Receive(&huart1, rec, 2, 10);

    HAL_Delay(50);
*/
//write AO
    for(int i = 0; i < 4; i++)
    {
      data_ao[2] = 0x64 + i;
      data_ao[3] = ao_val & 0xFF;
      data_ao[4] = (ao_val >> 8) & 0xFF;
      data_ao[5] = data_ao[0] ^ data_ao[1] ^ data_ao[2] ^ data_ao[3] ^ data_ao[4] ^ 0xC5;
      send_485(data_ao, 6);
      HAL_UART_Receive(&huart1, rec, 2, 100);
      HAL_Delay(200);
    }
    ao_val += 1000;
    if(ao_val > 10000)
    {
      ao_val = 0;
    }
      HAL_Delay(2000);
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

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE|RCC_OSCILLATORTYPE_LSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.LSEState = RCC_LSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 6;
  RCC_OscInitStruct.PLL.PLLN = 100;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 2;
  RCC_OscInitStruct.PLL.PLLR = 2;
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

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief Peripherals Common Clock Configuration
  * @retval None
  */
void PeriphCommonClock_Config(void)
{
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /** Initializes the peripherals clock
  */
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_PLLI2S|RCC_PERIPHCLK_CLK48
                              |RCC_PERIPHCLK_SDIO;
  PeriphClkInitStruct.PLLI2S.PLLI2SN = 120;
  PeriphClkInitStruct.PLLI2S.PLLI2SM = 10;
  PeriphClkInitStruct.PLLI2S.PLLI2SR = 2;
  PeriphClkInitStruct.PLLI2S.PLLI2SQ = 3;
  PeriphClkInitStruct.Clk48ClockSelection = RCC_CLK48CLKSOURCE_PLLI2SQ;
  PeriphClkInitStruct.SdioClockSelection = RCC_SDIOCLKSOURCE_CLK48;
  PeriphClkInitStruct.PLLI2SSelection = RCC_PLLI2SCLKSOURCE_PLLSRC;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

void send_485(uint8_t *data, uint8_t bytes)
{
  HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, 1);    
  HAL_GPIO_WritePin(LED_RUN_GPIO_Port, LED_RUN_Pin, 1); 
  delay_us(1);
  HAL_UART_Transmit(&huart1, data, bytes, 1);
  delay_us(1);
  HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, 0);
  HAL_GPIO_WritePin(LED_RUN_GPIO_Port, LED_RUN_Pin, 0); 
}

void timer_init(void)
{
    HAL_TIM_Base_Start(&htim1);
}

void delay_us (uint16_t us)
{
	__HAL_TIM_SET_COUNTER(&htim1,0);  // set the counter value a 0
	while (__HAL_TIM_GET_COUNTER(&htim1) < us);  // wait for the counter to reach the us input in the parameter
}

void Init_LEDs(void)
{
  HAL_GPIO_WritePin(LED_BOOT_GPIO_Port, LED_BOOT_Pin, 0);           // LED 1
  HAL_GPIO_WritePin(LED_RUN_GPIO_Port, LED_RUN_Pin, 0);             // LED 2
  HAL_GPIO_WritePin(LED_FLASH_GPIO_Port, LED_FLASH_Pin, 0);         // LED 3
  HAL_GPIO_WritePin(LED_HEARTBEAT_GPIO_Port, LED_HEARTBEAT_Pin, 0); // LED 4
  HAL_GPIO_WritePin(LED_ERROR_GPIO_Port, LED_ERROR_Pin, 0);         // LED 5
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
