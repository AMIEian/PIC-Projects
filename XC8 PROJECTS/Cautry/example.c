/*********************************************************************
* NOTES:
* Code uses the Peripheral library support available with MCC18 Compiler
* Code Tested on:
* PicDem2+ demo board with PIC18F4685 controller
*
* Uses Tx pin for transmission and Rx pin for reception.
* Baud rate of 2400 is configred at 8MHz oscillator fequency
**********************************************************************/
#define USE_OR_MASKS
#include <xc.h>
#include "usart.h"
#pragma config OSC=XT, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF
#define _XTAL_FREQ 4000000 //The speed of your internal(or)external oscillator
unsigned char Rxdata[25];
unsigned char Txdata[] = "MICROCHIP_USART";
void main(void)
{
unsigned char config=0,spbrg=0,baudconfig=0,i=0;
CloseUSART(); //turn off usart if was previously on
//-----configure USART -----
config = USART_TX_INT_OFF | USART_RX_INT_OFF | USART_ASYNCH_MODE | USART_EIGHT_BIT | USART_CONT_RX | USART_BRGH_HIGH;
//-----SPBRG needs to be changed depending upon oscillator frequency-------
spbrg = 25; //At 8Mhz of oscillator frequency & baud rate of 2400.
OpenUSART(config, spbrg); //API configures USART for desired parameters
//baudconfig = BAUD_8_BIT_RATE | BAUD_AUTO_OFF;
//baudUSART (baudconfig);
//------USART Transmission ----
while(BusyUSART()); //Check if Usart is busy or not
putsUSART((char *)Txdata); //transmit the string
//---USART Reception ---
getsUSART((char *)Rxdata,24); //Recieve data upto 24 bytes
while(BusyUSART()); //Check if Usart is busy or not
putsUSART((char *)Rxdata); //echo back the data recieved back to host
CloseUSART();
while(1); //end of program
}
