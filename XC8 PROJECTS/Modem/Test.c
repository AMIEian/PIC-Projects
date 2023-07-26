#include<xc.h>
#include <stdint.h>
#include "sim300.h"

// Configuration Byte
//#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
//#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
//#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
//#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
//#pragma config LVP = ON         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
//#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
//#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
//#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

#define LED RB7
#define On 1
#define Off 0

void main(void)
	{
		TRISB = 0x00;	//All outputs
		PORTB = 0x00;
		char i = 0;
		
		//LED Blinking to check the crystal
		for(i = 0; i <= 5; i++)
			{
				LED = On;
				_delay(1000000);  //1SEC DELAY
				LED = Off;
				_delay(1000000);  //1SEC DELAY
			}
			
		int8_t r= SIM300Init();
		//Wait for 10 seconds
		for(i = 0; i <= 10; i++)
			{
				_delay(1000000);  //1SEC DELAY
			}
			
		if(r == SIM300_OK)
			{
				LED = On;
				while(1)
					{
					}	
			}
		else
			{
				while(1)
					{
						LED = On;
						_delay(1000000);  //1SEC DELAY
						LED = Off;
						_delay(500000);  // 1/2 SEC DELAY
					}
			}
	}						
