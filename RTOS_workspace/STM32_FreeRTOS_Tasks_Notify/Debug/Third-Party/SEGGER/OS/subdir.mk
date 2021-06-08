################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c 

OBJS += \
./Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o 

C_DEPS += \
./Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o: ../Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c Third-Party/SEGGER/OS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DUSE_STDPERIPH_DRIVER -DSTM32F429_439xx -DSTM32F429ZITx -DSTM32F4 -DDEBUG -DNUCLEO_F429ZI -c -I../Inc -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Tasks_Notify/Third-Party/SEGGER/Config" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Tasks_Notify/Third-Party/SEGGER/OS" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Tasks_Notify/Third-Party/SEGGER/SEGGER" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Tasks_Notify/Config" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Tasks_Notify/Third-Party/FreeRTOS/org/Source/include" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Tasks_Notify/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Tasks_Notify/CMSIS/core" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Tasks_Notify/inc" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Tasks_Notify/StdPeriph_Driver/inc" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Tasks_Notify/CMSIS/device" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

