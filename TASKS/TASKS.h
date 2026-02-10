/*
 * TASKS.h
 *
 *  Created on: Dec 19, 2025
 *      Author: Ahmed
 */

#ifndef TASKS_H_
#define TASKS_H_

void TASKS_Init(void);
void TASKS_USART_30ms(void *pram);
void TASKS_Print_Usart_Rx_Msg(void *pram);
void TASKS_5ms(void *pram);
void TASKS_1s(void *pram);

void TASKS_Send_Data(void *pram);
void TASKS_USART_Tx_Cyclic(void *pram);
#endif /* TASKS_H_ */
