#include <xc.h>

// Define 74HC595 connections.
#define Serial_Data RC1
#define SH_Clk RC0
#define ST_Clk RC2

#define LED RC3
#define ON 1
#define OFF 0

void Send_Data(unsigned short number);

char display[10] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
//char display[10] = {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};

void main()
   {
      TRISA = 0x00;   //All output 
      TRISB = 0x00;   //All output 
      TRISC = 0x00;   //All output 
      ADCON1 = 0x06;	// All Digital
  
      PORTB = 0xFF;
      PORTA = 0xFF;
      PORTC = 0xFF;
  
      int count;
      
      for(count = 0; count <= 4; count++)
         {
            LED = ON;
            _delay(1000000);  //1SEC DELAY
            LED = OFF;
            _delay(1000000);  //1SEC DELAY
         }   
      count = 0;
      while(1)
         {
            Send_Data(display[count]);
            _delay(1000000);
            count++;
            if(count > 9)
               count = 0;
         }      
   }   

void Send_Data(unsigned short number)
   {
      unsigned short Mask, bits, Flag;
      PORTC = 0x00;
      //Each byte has 8 bits.
      Mask = 0x01;
      for (bits=0; bits<8; bits++)
         {
            Flag = number & Mask;
            if(Flag == 0) 
               {
                  Serial_Data = 0;
                  _delay(1);  //1SEC DELAY
                  SH_Clk = 1;
                  _delay(1);  //1SEC DELAY
                  SH_Clk = 0;
               }   
            if(Flag > 0) 
               {
                  Serial_Data = 1;
                  _delay(1);  //1SEC DELAY
                  SH_Clk = 1;
                  _delay(1);  //1SEC DELAY
                  SH_Clk = 0;
               }   
            Mask = Mask << 1;
         }
      // Apply clock on ST_Clk
      ST_Clk = 1;
      _delay(1);  //1SEC DELAY
      ST_Clk = 0;
   }