/*
 * TASKS.c
 *
 *  Created on: Dec 19, 2025
 *      Author: Ahmed
 */


#include <stdio.h>
#include <stdint.h>

#include "USART.h"
#include "FreeRTOS.h"
#include "task.h"
#include "TASKS.h"


void TASKS_Init(void)
{
	USART_Init(USART_NUM_2);
}

void TASKS_Print_Usart_Rx_Msg(void *pram)
{
	uint8_t Rx_data = 0;
	while(1)
	{
		USART_Err_St_t ret_st = USART_ReceiveByte(USART_NUM_2, &Rx_data);

		if(ret_st == USART_Rx_Ok)
		{
			printf("Rx data : %c\n" , Rx_data);
		}
		vTaskDelay(pdMS_TO_TICKS(2));
	}
}


void TASKS_Send_Data(void *pram)
{
	TickType_t last_wake = xTaskGetTickCount();
	char * Tx = "Ahmed ";

	while(1)
	{
		uint8_t i = 0 ;
		while(Tx[i] != '\0')
		{
			if(USART_SendByte(USART_NUM_2, (uint8_t)Tx[i]) == USART_Tx_Ok)
			{
				i++;
			}
			else
			{
				vTaskDelay(pdMS_TO_TICKS(1));
			}
//			USART_SendByte(USART_NUM_2, (uint8_t)Tx[i]);
//			i++;
		}
		vTaskDelayUntil(&last_wake, pdMS_TO_TICKS(5));
	}
}

void TASKS_USART_30ms(void *pram)
{
	TickType_t last_wake = xTaskGetTickCount();
	while(1)
	{
		USART_RxCyclic();
		vTaskDelayUntil(&last_wake , pdMS_TO_TICKS(1));
	}
}



void TASKS_USART_Tx_Cyclic(void *pram)
{
	TickType_t last_wake = xTaskGetTickCount();
	while(1)
	{
		USART_TxCyclic();
		vTaskDelayUntil(&last_wake , pdMS_TO_TICKS(1));
	}
}
