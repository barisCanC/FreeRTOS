################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third-Party/SEGGER/SEGGER/SEGGER_RTT.c \
../Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.c 

OBJS += \
./Third-Party/SEGGER/SEGGER/SEGGER_RTT.o \
./Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.o 

C_DEPS += \
./Third-Party/SEGGER/SEGGER/SEGGER_RTT.d \
./Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
Third-Party/SEGGER/SEGGER/SEGGER_RTT.o: ../Third-Party/SEGGER/SEGGER/SEGGER_RTT.c Third-Party/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DUSE_STDPERIPH_DRIVER -DSTM32F429_439xx -DSTM32F429ZITx -DSTM32F4 -DDEBUG -DNUCLEO_F429ZI -c -I../Inc -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/Third-Party/SEGGER/Config" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/Third-Party/SEGGER/OS" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/Third-Party/SEGGER/SEGGER" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/Config" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/Third-Party/FreeRTOS/org/Source/include" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/CMSIS/core" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/inc" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/StdPeriph_Driver/inc" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/CMSIS/device" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/SEGGER/SEGGER/SEGGER_RTT.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.o: ../Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.c Third-Party/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DUSE_STDPERIPH_DRIVER -DSTM32F429_439xx -DSTM32F429ZITx -DSTM32F4 -DDEBUG -DNUCLEO_F429ZI -c -I../Inc -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/Third-Party/SEGGER/Config" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/Third-Party/SEGGER/OS" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/Third-Party/SEGGER/SEGGER" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/Config" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/Third-Party/FreeRTOS/org/Source/include" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/CMSIS/core" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/inc" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/StdPeriph_Driver/inc" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Queue_Processing/CMSIS/device" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

