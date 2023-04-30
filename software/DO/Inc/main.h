/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define ADR0_Pin GPIO_PIN_0
#define ADR0_GPIO_Port GPIOA
#define ADR1_Pin GPIO_PIN_1
#define ADR1_GPIO_Port GPIOA
#define ADR2_Pin GPIO_PIN_2
#define ADR2_GPIO_Port GPIOA
#define ADR3_Pin GPIO_PIN_3
#define ADR3_GPIO_Port GPIOA
#define ADR4_Pin GPIO_PIN_4
#define ADR4_GPIO_Port GPIOA
#define CH1_Pin GPIO_PIN_5
#define CH1_GPIO_Port GPIOA
#define CH2_Pin GPIO_PIN_6
#define CH2_GPIO_Port GPIOA
#define CH3_Pin GPIO_PIN_7
#define CH3_GPIO_Port GPIOA
#define FB1_Pin GPIO_PIN_0
#define FB1_GPIO_Port GPIOB
#define FB2_Pin GPIO_PIN_1
#define FB2_GPIO_Port GPIOB
#define FB3_Pin GPIO_PIN_2
#define FB3_GPIO_Port GPIOB
#define DIR_Pin GPIO_PIN_12
#define DIR_GPIO_Port GPIOB
#define CH4_Pin GPIO_PIN_8
#define CH4_GPIO_Port GPIOA
#define CH5_Pin GPIO_PIN_9
#define CH5_GPIO_Port GPIOA
#define CH6_Pin GPIO_PIN_10
#define CH6_GPIO_Port GPIOA
#define CH7_Pin GPIO_PIN_11
#define CH7_GPIO_Port GPIOA
#define CH8_Pin GPIO_PIN_12
#define CH8_GPIO_Port GPIOA
#define FB4_Pin GPIO_PIN_3
#define FB4_GPIO_Port GPIOB
#define FB5_Pin GPIO_PIN_4
#define FB5_GPIO_Port GPIOB
#define FB6_Pin GPIO_PIN_5
#define FB6_GPIO_Port GPIOB
#define FB7_Pin GPIO_PIN_6
#define FB7_GPIO_Port GPIOB
#define FB8_Pin GPIO_PIN_7
#define FB8_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

void Slave_Init();
void set_Output();
void check_Output();
void out_Poll();

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
