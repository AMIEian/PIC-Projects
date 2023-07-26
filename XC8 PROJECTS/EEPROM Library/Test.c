#include <xc.h>
#include <string.h>
#include "myeeprom.h"
#include "lcd_hd44780_pic16.h"
#define _XTAL_FREQ 100000000 //The speed of your internal(or)external oscillator

#pragma config OSC=HS, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF
void MY_DELAY(int ms);

unsigned char write_buffer[128];
unsigned char read_buffer[128];

void main (void)
{
  unsigned char data, count = 0;
  TRISB = 0x00;
  PORTB = 0;
 
  //Initialize the LCD Module
  LCDInit(LS_NONE);

  //Clear the display
  LCDClear();

  //Write a string
  LCDWriteString("Hello World !");
  
  OpenI2C(MASTER,SLEW_OFF);
  SSPADD = 0x19;
  
  for(count = 0; count < 128; count++)
    {
       write_buffer[count] = count;
    }    
    
  rom_page_write(0xA0, 0x0000, write_buffer);
  rom_page_read(0xA0, 0x0000, read_buffer);
      
  for(count = 0; count < 128; count++)
    {
        //data = rom_byte_read(0xA0, count);
        LCDClear();
        LCDGotoXY(0,0);
        LCDWriteInt(read_buffer[count],3);
        MY_DELAY(100);
    }    
    
  clear_rom(0xA0);
  data = rom_byte_read(0xA0, 0x00FF);
  LCDClear();
  LCDGotoXY(0,0);
  LCDWriteInt(read_buffer[count],3);
  MY_DELAY(100);
  
  while(1)
  {
     //Do nothing, just loop indefinitely
  }
  
}

void MY_DELAY(int ms)
   {
      while(ms > 0)
         {
            __delay_ms(1);
            ms--;
         }
      return;
   }