/******************************************************************************
 Program to read distance using HC-SR04 ultrasonic rangefinder and display
 it on a LCD module.

 Hardware a PIC16F877A based development board with 16x2 alphanumeric LCD
 module. URL: http://ex-tr.me/p40d-lcd

Written By
 Avinash Gupta
Contact
 gmail@avinashgupta.com

For more interesting microcontroller tutorials and projects. Please visit
http://www.extremeelectronics.co.in


COPYRIGHT (C) 2008-2015 EXTREME ELECTRONICS, INDIA
 
If this helped you, please leave a 5 star review @ http://ex-tr.me/review

I know most Indians won't do this! They just know how to take, but not how to give!
But we have your mobile number and email with us! And we maintain a database of
all mobiles and email IDs. And it takes only a click to ban anyone. Once banned,
the user will not be able to download anything from our servers!

Am I threatening you? Well, the answer is yes!

After 7 years of publishing my works online and helping more than 3000 persons
on daily basis, and still finding lack of loyalty in them, I was forced to develop
this system.

I spent lots of time and money to develop this system just to keep *****rs away!
******************************************************************************/
#include <xc.h>

#include "lcd_hd44780_pic16.h"

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming disabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

/********************************************************************

Configuration Area.
UltraSonic (US) sensor connection.

in this example it is connected to as follows

Sensor | MCU
_____________
Trig   | RA0
Echo   | RA1

********************************************************************/

#define US_PORT PORTA
#define	US_TRIS	TRISA


#define US_TRIG_POS	0
#define US_ECHO_POS	1

//Constant for errors
#define US_ERROR		-1
#define	US_NO_OBSTACLE          -2



void HCSR04Init()
{
	US_TRIS&=~(1<<US_TRIG_POS);
}

void HCSR04Trigger()
{
	//Send a 10uS pulse on trigger line
	US_PORT|=(1<<US_TRIG_POS);	//high
	
        __delay_us(15);			//wait 15uS

	US_PORT&=~(1<<US_TRIG_POS);	//low
}
/*
 Returns the width of pulse in uS (micro seconds)
 */
int16_t GetPulseWidth()
{
	uint32_t i,result;

	//Wait for the rising edge
	for(i=0;i<600000;i++)
	{
		if(!(US_PORT & (1<<US_ECHO_POS)))
                    continue;	//Line is still low, so wait
		else
                    break;	//High edge detected, so break.
	}

	if(i==600000)
            return US_ERROR;	//Indicates time out

	//High Edge Found

	//Setup Timer1
        T1CKPS0=1;  //Prescaller = 1:2
	TMR1=0x00;  //Init counter
        TMR1ON=1;   //Stat timer

        //Now wait for the falling edge
	for(i=0;i<600000;i++)
	{
		if(US_PORT & (1<<US_ECHO_POS))
		{
			if(TMR1 > 60000) break; else continue;
		}
		else
                    break;
	}

	if(i==600000)
            return US_NO_OBSTACLE;	//Indicates time out

	//Falling edge found
	result=TMR1;

	//Stop Timer
	TMR1ON=0;

	if(result > 60000)
            return US_NO_OBSTACLE;	//No obstacle
	else
            return (result * 0.4);  // since period of timer is 0.4uS
}

void main (void)
{
    int16_t r;

    //PORTA's pins are also multiplexed with the ADC
    //So following two lines disables the analog input
    //and makes all pins digital type (see pg.130 of datasheet)
    PCFG2=1;
    PCFG1=1;
    
    //Initialize the LCD Module
    LCDInit(LS_NONE);

    TRISCbits.TRISC2=0;     //LCD Backlight control i/o pin as output
    PORTCbits.RC2=1;        //Backlight on
  
    //Clear the display
    LCDClear();

    //Initialize sensor interface
    HCSR04Init();

    //Write a intro text
    LCDWriteStringXY(0,0,"    eXtreme");
    LCDWriteStringXY(0,1,"  Electronics");

    __delay_ms(2000);

    while(1)
    {
		//Send a trigger pulse
		HCSR04Trigger();

		//Measure the width of pulse
		r=GetPulseWidth();

                LCDClear();
                LCDWriteStringXY(0,0,"HC-SR04 Demo");

		//Handle Errors
		if(r==US_ERROR)
		{
			LCDWriteStringXY(0,1,"Error ! ");
		}
		else if(r==US_NO_OBSTACLE)
		{
			LCDWriteStringXY(0,1,"Clear !  ");
		}
		else
		{
			int d;
			d=(r*0.01718);	//Convert to cm

                        LCDWriteStringXY(0,1,"Distance:");
			LCDWriteIntXY(9,1,d,3);
			LCDWriteString(" cm");
	
		}
                __delay_ms(250);
	}
}