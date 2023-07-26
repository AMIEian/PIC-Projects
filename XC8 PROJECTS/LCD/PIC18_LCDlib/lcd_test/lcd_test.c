/********************************************************************

16X2 ALPHANEUMERIC LCD INTERFACING LIBRARY TEST PROGRAM
---------------------------------------------------------

A testing program for our LCD library.

Easy to use library for interfacing 16x2 lcd in 4 bit mode.
MCU: PIC18FXXXX Series from Microchip.
Compiler: HI-TECH C Compiler for PIC18 MCUs (http://www.htsoft.com/)

Copyrights 2008-2009 Avinash Gupta
eXtreme Electronics, India

For More Info visit
http://www.eXtremeElectronics.co.in

Mail: me@avinashgupta.com

********************************************************************/
#include <htc.h>

#include "lcd.h"

//Chip Settings
__CONFIG(1,0x0200);
__CONFIG(2,0X1E1F);
__CONFIG(3,0X8100);
__CONFIG(4,0X00C1);
__CONFIG(5,0XC00F);

//Simple Delay Routine
void Wait(unsigned int delay)
{
	for(;delay;delay--)
		__delay_us(100);
}

void main()
{
	//Let the Module start up
	Wait(100);

	//Initialize the LCD Module
	LCDInit(LS_BLINK);

	//Clear the Module
	LCDClear();
	
	//Write a string at current cursor pos
	LCDWriteString("Good Is Great !!");

	Wait(20000);

	//Now Clear the display
	LCDClear();

	LCDWriteString("God Bless all !!");

	//Goto POS (X=0,Y=1 i.e. Line 2)
	//And Write a string
	LCDWriteStringXY(0,1,"<**************>");

	Wait(20000);

	//Write Some Numbers
	for(char i=0;i<100;i++)
	{
			LCDClear();
			LCDWriteInt(i,3);
			Wait(3000);
	}
	
	LCDClear();
	LCDWriteString("    The  End    ");

	//Loop Forever
	while(1);

	
}