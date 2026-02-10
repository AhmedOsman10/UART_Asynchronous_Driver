# UART_Asynchronous_Driver
# STM32 UART Asynchronous Driver (FreeRTOS Compatible)

## Overview

This repository contains a modular, register-level UART (USART) driver for STM32 microcontrollers, designed to support asynchronous communication using polling or interrupt-based operation, with optional FreeRTOS integration.

The driver decouples application-level send and receive requests from low-level hardware timing by using RTOS queues and cyclic service functions, making it suitable for real-time, multitasking embedded systems. The implementation follows STM32 reference manual behaviour and is structured to be portable, scalable, and easy to extend.

## Key Features

- Register-level UART control (no HAL transmit/receive APIs)
- Supports polling mode and interrupt mode
- FreeRTOS-compatible using queues for TX/RX buffering
- Asynchronous, non-blocking communication
- Cyclic TX/RX handling
- Explicit transmit and receive error reporting
- Safe resource sharing between ISRs and RTOS tasks
- Clear separation between hardware, driver, and application layers

## Driver Architecture

The driver follows a layered architecture:

Application Tasks  
↓  
USART API (Send / Receive)  
↓  
RTOS Queues (TX / RX Buffers)  
↓  
Cyclic Functions / ISRs  
↓  
USART Hardware Registers  

### Design Rationale

- Application tasks never wait on hardware flags
- Hardware timing is handled centrally
- TX and RX paths are fully decoupled
- Clean integration with FreeRTOS scheduling

## Supported Operating Modes

### Polling Mode

- TXE and RXNE flags are checked inside cyclic functions
- Suitable for simple systems or debugging
- No interrupts required

### Interrupt Mode

- TXE and RXNE interrupts enabled
- ISRs interact with RTOS queues
- Minimal ISR execution time
- Suitable for real-time multitasking systems

## FreeRTOS Integration

TX and RX queues act as thread-safe buffers. Tasks communicate with the driver using non-blocking APIs, while ISRs and tasks safely share data without busy-waiting.

Example usage:

```c
USART_SendByte(USART_NUM_2, 'A');


