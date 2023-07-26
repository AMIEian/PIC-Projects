/******************************************************************************

 The most basic example program to write a line of text in a hd44780 based
 alphanumeric lcd module using our lcd library for pic16 mcus.

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

#define LED RC4
#define _XTAL_FREQ 10000000

void My_Delay(char sec)
   {
      while(sec > 0)
         {
            char Count = 0;
            T1CON = 0b00000001;
            while(Count != 38)
               {
                  while (!TMR1IF);
                  TMR1IF = 0;
                  Count ++;
               }
            sec--;   
         }      
   }   

//CONFIG

//#pragma config FOSC = XT        // Oscillator Selection bits (XT oscillator)
//#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
//#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
//#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
//#pragma config LVP = ON         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
//#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
//#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
//#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

void main (void)
{
  int count, secs = 0, mins = 0, hrs = 1;
  TRISB = 0x00;
  TRISC = 0x00;
  
  for(count = 0; count <= 4; count++)
     {
        LED = 1;
        My_Delay(1);  //1SEC DELAY
        LED = 0;
        My_Delay(1);  //1SEC DELAY
     }
     
  //Initialize the LCD Module
  LCDInit(LS_NONE);

  //Clear the display
  LCDClear();

  //Write a string
  LCDWriteString("NITIN N. SANGALE");
  LCDGotoXY(4,1);
  LCDWriteInt(hrs,2);
  LCDGotoXY(6,1);
  LCDWriteString(":");
  LCDGotoXY(7,1);
  LCDWriteInt(mins,2);
  LCDGotoXY(9,1);
  LCDWriteString(":");
  LCDGotoXY(10,1);
  LCDWriteInt(secs,2);

  while(1)
  {
     My_Delay(1);
     secs++;
     if(secs == 60)
      {
         secs = 0;
         mins++;
         if(mins == 60)
            {
               mins = 0;
               hrs++;
               if(hrs == 13)
                  hrs = 1;
            }
      }
      //Clear the display
      LCDClear();

      //Write a string
      LCDWriteString("NITIN N. SANGALE");
      LCDGotoXY(4,1);
      LCDWriteInt(hrs,2);
      LCDGotoXY(6,1);
      LCDWriteString(":");
      LCDGotoXY(7,1);
      LCDWriteInt(mins,2);
      LCDGotoXY(9,1);
      LCDWriteString(":");
      LCDGotoXY(10,1);
      LCDWriteInt(secs,2);           
  }
}