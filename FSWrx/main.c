/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */
#include <stm8s.h>
//#include <stm8s_spi.h>
#include <gpio.h>

void myDelay(void);
void initAll(void);
/*extern void SPI_Init(SPI_FirstBit_TypeDef FirstBit, 
              SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, 
              SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, 
              SPI_ClockPhase_TypeDef ClockPhase, 
              SPI_DataDirection_TypeDef Data_Direction, 
              SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial);*/
void main()
{
initAll();
SPI_ResetCRC();
	while (1)
	{
		if(IN1_IsON)
		{
			myDelay();
			GLED_TOGGLE;			
		}/*
		if(!IN2_IsON)
		{
			myDelay();
			GLED_TOGGLE;			
		}
		if(!IN3_IsON)
		{
			myDelay();
			GLED_TOGGLE;			
		}
		if(!IN4_IsON)
		{
			myDelay();
			GLED_TOGGLE;			
		}*/
		/*
		myDelay();
		REL1_ON;
		GLED_TOGGLE;
		myDelay();
		REL1_OFF;
		GLED_TOGGLE;
		
		myDelay();
		REL2_ON;
		GLED_TOGGLE;
		myDelay();
		REL2_OFF;
		GLED_TOGGLE;
		
		myDelay();
		REL3_ON;
		GLED_TOGGLE;
		myDelay();
		REL3_OFF;
		GLED_TOGGLE;
		
		myDelay();
		REL4_ON;
		GLED_TOGGLE;
		myDelay();
		REL4_OFF;
		GLED_TOGGLE;
		*/
	}
}

void initAll(void)
{
	REL1_GPIO->DDR |= 1<<REL1_PIN;
	REL1_GPIO->CR1 |= 1<<REL1_PIN;
	REL2_GPIO->DDR |= 1<<REL2_PIN;
	REL2_GPIO->CR1 |= 1<<REL2_PIN;   
	REL3_GPIO->DDR |= 1<<REL3_PIN;
	REL3_GPIO->CR1 |= 1<<REL3_PIN;
	REL4_GPIO->DDR |= 1<<REL4_PIN;
	REL4_GPIO->CR1 |= 1<<REL4_PIN;
	GLED_GPIO->DDR |= 1<<GLED_PIN;
	GLED_GPIO->CR1 |= 1<<GLED_PIN;
	
	IN1_GPIO->DDR &= ~(1<<IN1_PIN);
	IN1_GPIO->CR1 |= 1<<IN1_PIN;
	IN2_GPIO->DDR &= ~(1<<IN2_PIN);
	IN2_GPIO->CR1 |= 1<<IN2_PIN;
	IN3_GPIO->DDR &= ~(1<<IN3_PIN);
	IN3_GPIO->CR1 |= 1<<IN3_PIN;
	IN4_GPIO->DDR &= ~(1<<IN4_PIN);
	IN4_GPIO->CR1 |= 1<<IN4_PIN;
	
	SPI_Init(	SPI_FIRSTBIT_MSB, 
						SPI_BAUDRATEPRESCALER_2,
						SPI_MODE_MASTER,
						SPI_CLOCKPOLARITY_LOW,
						SPI_CLOCKPHASE_1EDGE,
						SPI_DATADIRECTION_2LINES_FULLDUPLEX,
						SPI_NSS_SOFT,
						0
						);
}

void myDelay()
{
	int i,j;
	for(i=0;i<200;i++)
	{
		for(j=0;j<100;j++)
		{
			
		}
	}
}