################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third-Party/FreeRTOS/org/Source/portable/MemMang/heap_4.c 

OBJS += \
./Third-Party/FreeRTOS/org/Source/portable/MemMang/heap_4.o 

C_DEPS += \
./Third-Party/FreeRTOS/org/Source/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
Third-Party/FreeRTOS/org/Source/portable/MemMang/heap_4.o: ../Third-Party/FreeRTOS/org/Source/portable/MemMang/heap_4.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F429_439xx -DUSE_STDPERIPH_DRIVER -DSTM32F429ZITx -DSTM32F4 -DDEBUG -DNUCLEO_F429ZI -c -I../Inc -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Led_and_Button/Config" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Led_and_Button/Third-Party/FreeRTOS/org/Source/include" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Led_and_Button/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Led_and_Button/CMSIS/core" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Led_and_Button/inc" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Led_and_Button/StdPeriph_Driver/inc" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_FreeRTOS_Led_and_Button/CMSIS/device" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/FreeRTOS/org/Source/portable/MemMang/heap_4.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

