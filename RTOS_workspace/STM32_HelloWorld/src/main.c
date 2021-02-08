/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/

#include<stdio.h>
#include<stdint.h>
#include<string.h>
#include "stm32f4xx.h"

#include"FreeRTOS.h"
#include "task.h"
			
TaskHandle_t xTaskHandle1 = NULL;
TaskHandle_t xTaskHandle2 = NULL;

//Task functions prototypes
void vTask1_handler (void *params);
void vTask2_handler (void *params);

#ifdef USE_SEMIHOSTING
//used for semihosting
extern void initialise_monitor_handles();
#endif

static void prvSetupHardware(void);
static void prvSetupUart(void);
void printmsg(char *msg); 	//msg: message

//some macros
#define TRUE	1
#define FALSE	0
#define AVAILABLE TRUE
#define NOT_AVAILABLE FALSE

//GLOBAL variable section
char usr_msg[250] = {0};
uint8_t UART_ACCESS_KEY = AVAILABLE;

int main(void)
{

#ifdef USE_SEMIHOSTING
	initialise_monitor_handles();
	puts("This is hello world example code");
#endif

	DWT ->CTRL |= (1 << 0); 	// Enable the cycle counting(CYCCNT) in DWT_CTRL for SEGGER Systemview Timestamp maintaining

	//1. Reset the RCC Clock configuration to the default reset state
	//HSI ON, HSE, PLL OFF, system clock = 16 MHz, CPU clock = 16 MHz
	RCC_DeInit();

	//2. Update the systemcoreclock variable
	//SystemCoreClock = 16000000;
	SystemCoreClockUpdate();

	prvSetupHardware();

	sprintf(usr_msg, "This is hello world app starting\r\n");
	printmsg(usr_msg);

	//start recording
	SEGGER_SYSVIEW_Conf();
	SEGGER_SYSVIEW_Start();

	//3. lets create 2 tasks, task-1 and task-2
	xTaskCreate(vTask1_handler, "Task-1", configMINIMAL_STACK_SIZE, NULL, 2, &xTaskHandle1 );

	xTaskCreate(vTask2_handler, "Task-2", configMINIMAL_STACK_SIZE, NULL, 2, &xTaskHandle2 );

	//4. start the scheduler
	vTaskStartScheduler();


	//you will never return here
	for(;;);
}


void vTask1_handler (void *params)
{
	while(1){	//added key for not corruption btw task1 and task2
		if(UART_ACCESS_KEY == AVAILABLE){
			UART_ACCESS_KEY = NOT_AVAILABLE;
			printmsg("Hello world: from task1\r\n");
			UART_ACCESS_KEY = AVAILABLE;
			//taskyield yapılmasının sebebi sadece task1 çalışıyordu
			//ve belki de key, available olduğunda task2 task1 ı preempt etmiyordu
			taskYIELD();	// leaving CPU by manually triggering the context switch
		}
	}
}

void vTask2_handler (void *params)
{
	while(1){
		if(UART_ACCESS_KEY == AVAILABLE){
			UART_ACCESS_KEY = NOT_AVAILABLE;
			printmsg("Hello world: from task2\r\n");
			UART_ACCESS_KEY = AVAILABLE;
			taskYIELD();
		}
	}
}

static void prvSetupUart(void)
{
	GPIO_InitTypeDef gpio_uart_pins;
	USART_InitTypeDef uart3_init;

	//1. enable the UART3 and GPIOD perip clock
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);

	//PD8 is UART3_TX, PD9 is UART3_RX,

	//2. Alternate func conf of MCU pins to behave as UART3 TX and RX
	//making zero each member element of the structure
	memset(&gpio_uart_pins, 0, sizeof(gpio_uart_pins));

	gpio_uart_pins.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9;
	gpio_uart_pins.GPIO_Mode = GPIO_Mode_AF;
	gpio_uart_pins.GPIO_PuPd = GPIO_PuPd_UP;

	GPIO_Init(GPIOD, &gpio_uart_pins);

	//3. AF mode settings for the pins
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource8, GPIO_AF_USART3); //PD8
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource9, GPIO_AF_USART3); //PD9

	//4. UART parameter initializations
	//making zero each member element of the structure
	memset(&uart3_init, 0, sizeof(uart3_init));

	uart3_init.USART_BaudRate = 115200;
	uart3_init.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	uart3_init.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	uart3_init.USART_Parity = USART_Parity_No;
	uart3_init.USART_StopBits = USART_StopBits_1;
	uart3_init.USART_WordLength = USART_WordLength_8b;

	USART_Init(USART3 , &uart3_init);

	//5. Enable the uart3 perip
	USART_Cmd(USART3, ENABLE);

}

static void prvSetupHardware(void)	//prv : private, board or any perip related init
{
	//Setup UART3
	prvSetupUart();

}

void printmsg(char *msg)
{
	for(uint32_t i = 0; i < strlen(msg); i++){
		while(USART_GetFlagStatus(USART3, USART_FLAG_TXE) != SET);
		USART_SendData(USART3, msg[i]);
	}

}










