/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2025 STMicroelectronics.
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
#include "USART_Prv.h"
#include "usb_host.h"
#include "Sys.h"
#include "USART.h"
#include "USART_Cfg.h"
#include "FreeRTOS.h"
#include "task.h"

void Print_Usart_Rx_Msg(void *pram)
{
	uint8_t Rx_data = 0;
	while(1)
	{
		USART_Err_St_t ret_st = 0;
		/*for(unit8_t i = 0; i < 8; i++)
		{
			ret_st = USART_ReceiveByte(USART_NUM_2, &Rx_data);

			if(ret_st == USART_Rx_Ok)
			{
				printf("Rx data : %c \n", Rx_data);
			}
			else
			{
				break;
			}
		}*/

		ret_st = USART_ReceiveByte(USART_NUM_2, &Rx_data);

		if(ret_st == USART_Rx_Ok)
		{
			printf("Rx data : %c \n", Rx_data);
		}
		vTaskDelay(pdMS_TO_TICKS(30));
	}
}

int main(void)
{
	Sys_Init();
	USART_Init(USART_NUM_2);

	BaseType_t ret_st = xTaskCreate(Print_Usart_Rx_Msg, "Rx data", 200, NULL, 1, NULL);
	configASSERT(ret_st == pdPASS);

	vTaskStartScheduler();

	/* USER CODE BEGIN WHILE */
	while (1)
	{
		/* USER CODE END WHILE */
		MX_USB_HOST_Process();

		/* USER CODE BEGIN 3 */
	}
	/* USER CODE END 3 */
}
