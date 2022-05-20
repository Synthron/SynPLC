/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "can.h"
#include "crc.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdbool.h"

#include "rs485.h"
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

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
  uint8_t address = 0;
  uint8_t reg_out = 0;
  uint8_t reg_err = 0;
  uint8_t shad_err = 0;
  uint8_t reg_feedback = 0;
  bool panic = false;


/*
  Reg-Addresses:
    0x1 = Output Reg
    0xE = FeedBack Reg
    0xF = Error Reg

*/








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

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_CAN_Init();
  MX_CRC_Init();
  MX_USART3_UART_Init();
  MX_TIM1_Init();
  /* USER CODE BEGIN 2 */
  Slave_Init();
  timer_init();
  uint16_t protocol_return = 0;




  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

    set_Output();

    protocol_return = DO_Protocol(address, reg_out, reg_feedback, reg_err);
    if ((protocol_return & 0xFF00) == 0x0A00)
      reg_out = (uint8_t)(protocol_return & 0x00FF);

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
void Slave_Init()
{
  address = 0x00 + 
            ( HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_0) +
             (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_1) << 1) +
             (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_2) << 2) +
             (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_3) << 3) +
             (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_4) << 4)
            );

  reg_out = 0x00;
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, 0); // set Direction to read
  set_Output();

}

void set_Output()
{
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5,  (reg_out & 0x01));
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_6,  (reg_out & 0x02)>>1);
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_7,  (reg_out & 0x04)>>2);
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_8,  (reg_out & 0x08)>>3);
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_9,  (reg_out & 0x10)>>4);
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, (reg_out & 0x20)>>5);
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_11, (reg_out & 0x40)>>6);
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_12, (reg_out & 0x80)>>7);
}

void check_Output()
{
  reg_feedback =  HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_0) +
                  (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_1) << 1) +
                  (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_2) << 2) +
                  (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_3) << 3) +
                  (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_4) << 4) +
                  (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_5) << 5) +
                  (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_6) << 6) +
                  (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_7) << 7);
  if (reg_out != reg_feedback)
  {
    shad_err |= 0x01;
    panic = true;
  }
  else 
  {
    shad_err &= 0xFE;
    panic = false;
  }
}

void out_Poll()
{
  uint8_t pinstat = reg_out ^ shad_err;
  switch(pinstat)
  {
    case 0x01:
      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, 0);
      break;
    case 0x02:
      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_6, 0);
      break;
    case 0x04:
      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_7, 0);
      break;
    case 0x08:
      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_8, 0);
      break;
    case 0x10:
      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_9, 0);
      break;
    case 0x20:
      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, 0);
      break;
    case 0x40:
      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_11, 0);
      break;
    case 0x80:
      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_12, 0);
      break;
  }
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
