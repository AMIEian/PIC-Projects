/******************************************************************************

 A program to implement a thermometer using a LM35 temperature sensor and a
 16x2 alphanumeric LCD module.

 voltage output from LM35 is measured by using the inbuilt ADC of PIC16f877A
 this is converted to temperature and displayed on the LCD.

 Compiler: Microchip XC8 v1.12 (http://www.microchip.com/xc)
 IDE: Microchip MPLABX

 MCU: PIC16F877A
 Frequency: 20MHz

                                     NOTICE

NO PART OF THIS WORK CAN BE COPIED, DISTRIBUTED OR PUBLISHED WITHOUT A
WRITTEN PERMISSION FROM EXTREME ELECTRONICS INDIA. THE LIBRARY, NOR ANY PART
OF IT CAN BE USED IN COMMERCIAL APPLICATIONS. IT IS INTENDED TO BE USED FOR
HOBBY, LEARNING AND EDUCATIONAL PURPOSE ONLY. IF YOU WANT TO USE THEM IN
COMMERCIAL APPLICATION PLEASE WRITE TO THE AUTHOR.


WRITTEN BY:
AVINASH GUPTA
me@avinashgupta.com

*******************************************************************************/


#include <xc.h>

#include "lcd_hd44780_pic16.h"
#include "adc_pic16.h"
#include "lm35_pic16.h"

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = ON         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)



void main(void)
{
    //Initialize the LCD module
    LCDInit(LS_NONE);

    //Initialize the ADC module
    ADCInit();

    //Clear the LCD
    LCDClear();

    LCDWriteString("Thermometer");

    while(1)
    {
        //Read the temperature using LM35
        float t = LM35ReadTemp();

        //Print it on the LCD
        LCDWriteIntXY(0,1,t,3);

        //Print the degree symbol and C
        LCDWriteString("%0C");

        //Wait 200ms before taking next reading
        __delay_ms(200);
    }

}
