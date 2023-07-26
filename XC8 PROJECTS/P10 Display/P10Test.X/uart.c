/* uart.c
	Routines for initialisation and use of the UART
 	 for the PIC processor.
 */
#include "uart.h"
#include <pic.h>
void UART_Init(void){
	TRISC6 = 0;
	TRISC7 = 1;
	TXSTA = 0x24;  		// Set TXEN  BRGH 
	RCSTA = 0x90;		// Set SPEN  CREN  

	//SPBRG = 5;    		// 115200 BRGH = 1; 11.0592 Mhz
	SPBRG = 129; 			// 9600 BRGH = 1; //20 Mhz
	//SPBRG = 64;   		// 19200 BRGH = 1; 20 Mhz
}

void UART_PutC(unsigned char c)
{
	while(!TRMT);		// set when register is empty 
	TXREG = c;
}


void UART_PutS (const unsigned char *addr) {
	while(*addr)
		UART_PutC(*addr++);
}

unsigned char UART_GetC_OR(void)
{
	if(OERR)			/* re-enable after overrun error */	
	{
		CREN = 0;
		CREN = 1;
		return 1;
	}
	while(!RCIF);		/* set when register is not empty */
	return RCREG;		/* RXD9 and FERR are gone now */
}

unsigned char UART_GetC(void){
	while(!RCIF);	/* set when register is not empty */
	return RCREG;	
}