#include <xc.h>
#include "myrtc.h"
#include "lcd_hd44780_pic16.h"

#define _XTAL_FREQ 100000000 //The speed of your internal(or)external oscillator

#pragma config OSC=HS, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF

void main (void)
{
  unsigned char data, count = 0;
  
  TRISB = 0x01; //RB0 input
  PORTB = 0;
 
  //Initialize the LCD Module
  LCDInit(LS_NONE);

  //Clear the display
  LCDClear();

  //Write a string
  LCDWriteString("Hello World !");
  
  //Init I2C
  OpenI2C(MASTER,SLEW_OFF);
  SSPADD = 0x19;
  
  ds1307_init(); 
  
  // Set date for -> 15 June 2005 Tuesday 
  // Set time for -> 15:20:55 
  
  day = 1;
  month = 1;
  year = 15;
  dow = 2;
  hr = 12;
  min = 0;
  sec = 0;
  
  ds1307_set_date_time();
  
  INTEDG0 = 1;
  INT0IE = 1;   //Enable RB0 interrupt
  ei(); //Enable globle interrupt
  
  while(1);
}

// Interrupt
void interrupt One_Sec(void)
    {
        ds1307_get_time();
        
        //Clear the display
        LCDClear();

        //Write a string
        LCDWriteString("NITIN N. SANGALE");
        LCDGotoXY(4,1);
        LCDWriteInt(hr,2);
        LCDGotoXY(6,1);
        LCDWriteString(":");
        LCDGotoXY(7,1);
        LCDWriteInt(min,2);
        LCDGotoXY(9,1);
        LCDWriteString(":");
        LCDGotoXY(10,1);
        LCDWriteInt(sec,2);
        
        INT0IF = 0;
        return;
    }      