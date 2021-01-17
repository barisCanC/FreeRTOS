################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/system_stm32f4xx.c 

OBJS += \
./src/main.o \
./src/system_stm32f4xx.o 

C_DEPS += \
./src/main.d \
./src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/main.o: ../src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F429_439xx -DUSE_STDPERIPH_DRIVER -DSTM32F429ZITx -DSTM32F4 -DDEBUG -DNUCLEO_F429ZI -c -I../Inc -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/Third-Party/SEGGER/SEGGER" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/Third-Party/SEGGER/Config" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/Third-Party/SEGGER/OS" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/Config" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/Third-Party/FreeRTOS/org/Source/include" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/CMSIS/core" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/inc" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/StdPeriph_Driver/inc" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/CMSIS/device" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/system_stm32f4xx.o: ../src/system_stm32f4xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F429_439xx -DUSE_STDPERIPH_DRIVER -DSTM32F429ZITx -DSTM32F4 -DDEBUG -DNUCLEO_F429ZI -c -I../Inc -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/Third-Party/SEGGER/SEGGER" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/Third-Party/SEGGER/Config" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/Third-Party/SEGGER/OS" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/Config" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/Third-Party/FreeRTOS/org/Source/include" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/CMSIS/core" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/inc" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/StdPeriph_Driver/inc" -I"Y:/udemy/FastBit Embedded/Workspace/RTOS_workspace/STM32_HelloWorld/CMSIS/device" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/system_stm32f4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

