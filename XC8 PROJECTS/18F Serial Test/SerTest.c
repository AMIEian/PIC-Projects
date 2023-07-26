#include <xc.h>
#include "usart_pic16.h"

#pragma config OSC=HSPLL, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF

#define LED PORTB
#define ON 0xFF
#define OFF 0x00

void main()
{
  TRISB = 0x00;
  char count;
  for(count = 0; count < 10; count++)
   {
      LED = ON;
      _delay(10);  //1SEC DELAY
      LED = OFF;
      _delay(10);  //1SEC DELAY
   }   
  
  //Initialize USART with baud rate 9600
  USARTInit(9600);

  while(1)
  {
      //Get the amount of data waiting in USART queue
      uint8_t n= USARTDataAvailable();

      //If we have some data
      if(n!=0)
      {
          //Read it
          char data=USARTReadData();
          
          if(data == 'R')
            LED = ON;
          if(data == 'B')
            LED = OFF;
            
          //And send back
          USARTWriteChar(data);
      }

  }
}
