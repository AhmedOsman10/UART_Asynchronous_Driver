################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third_Party/FreeRtos/Source/croutine.c \
../Third_Party/FreeRtos/Source/event_groups.c \
../Third_Party/FreeRtos/Source/list.c \
../Third_Party/FreeRtos/Source/queue.c \
../Third_Party/FreeRtos/Source/stream_buffer.c \
../Third_Party/FreeRtos/Source/tasks.c \
../Third_Party/FreeRtos/Source/timers.c 

OBJS += \
./Third_Party/FreeRtos/Source/croutine.o \
./Third_Party/FreeRtos/Source/event_groups.o \
./Third_Party/FreeRtos/Source/list.o \
./Third_Party/FreeRtos/Source/queue.o \
./Third_Party/FreeRtos/Source/stream_buffer.o \
./Third_Party/FreeRtos/Source/tasks.o \
./Third_Party/FreeRtos/Source/timers.o 

C_DEPS += \
./Third_Party/FreeRtos/Source/croutine.d \
./Third_Party/FreeRtos/Source/event_groups.d \
./Third_Party/FreeRtos/Source/list.d \
./Third_Party/FreeRtos/Source/queue.d \
./Third_Party/FreeRtos/Source/stream_buffer.d \
./Third_Party/FreeRtos/Source/tasks.d \
./Third_Party/FreeRtos/Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Third_Party/FreeRtos/Source/%.o Third_Party/FreeRtos/Source/%.su Third_Party/FreeRtos/Source/%.cyclo: ../Third_Party/FreeRtos/Source/%.c Third_Party/FreeRtos/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I"E:/Learning_WorkSpace - 2/Sabry_Applications/TASKS" -I"E:/Learning_WorkSpace - 2/Sabry_Applications/Third_Party" -I"E:/Learning_WorkSpace - 2/Sabry_Applications/Third_Party/FreeRtos" -I"E:/Learning_WorkSpace - 2/Sabry_Applications/Third_Party/FreeRtos/Source" -I"E:/Learning_WorkSpace - 2/Sabry_Applications/Third_Party/FreeRtos/Source/include" -I"E:/Learning_WorkSpace - 2/Sabry_Applications/Third_Party/FreeRtos/Source/portable/GCC" -I"E:/Learning_WorkSpace - 2/Sabry_Applications/Third_Party/FreeRtos/Source/portable/GCC/ARM_CM4F" -I"E:/Learning_WorkSpace - 2/Sabry_Applications/Third_Party/FreeRtos/Source/portable/MemMang" -I"E:/Learning_WorkSpace - 2/Sabry_Applications/MCAL/USART" -I"E:/Learning_WorkSpace - 2/Sabry_Applications/MCAL/System" -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Third_Party-2f-FreeRtos-2f-Source

clean-Third_Party-2f-FreeRtos-2f-Source:
	-$(RM) ./Third_Party/FreeRtos/Source/croutine.cyclo ./Third_Party/FreeRtos/Source/croutine.d ./Third_Party/FreeRtos/Source/croutine.o ./Third_Party/FreeRtos/Source/croutine.su ./Third_Party/FreeRtos/Source/event_groups.cyclo ./Third_Party/FreeRtos/Source/event_groups.d ./Third_Party/FreeRtos/Source/event_groups.o ./Third_Party/FreeRtos/Source/event_groups.su ./Third_Party/FreeRtos/Source/list.cyclo ./Third_Party/FreeRtos/Source/list.d ./Third_Party/FreeRtos/Source/list.o ./Third_Party/FreeRtos/Source/list.su ./Third_Party/FreeRtos/Source/queue.cyclo ./Third_Party/FreeRtos/Source/queue.d ./Third_Party/FreeRtos/Source/queue.o ./Third_Party/FreeRtos/Source/queue.su ./Third_Party/FreeRtos/Source/stream_buffer.cyclo ./Third_Party/FreeRtos/Source/stream_buffer.d ./Third_Party/FreeRtos/Source/stream_buffer.o ./Third_Party/FreeRtos/Source/stream_buffer.su ./Third_Party/FreeRtos/Source/tasks.cyclo ./Third_Party/FreeRtos/Source/tasks.d ./Third_Party/FreeRtos/Source/tasks.o ./Third_Party/FreeRtos/Source/tasks.su ./Third_Party/FreeRtos/Source/timers.cyclo ./Third_Party/FreeRtos/Source/timers.d ./Third_Party/FreeRtos/Source/timers.o ./Third_Party/FreeRtos/Source/timers.su

.PHONY: clean-Third_Party-2f-FreeRtos-2f-Source

