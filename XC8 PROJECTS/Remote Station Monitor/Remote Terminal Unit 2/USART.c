#include <xc.h>
#include "usart_pic18.h"
#include "pins.h"
#include "rtu.h"

#pragma config OSC=HSPLL, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF

#define ON 1
#define OFF 0

void main()
{
  TRISC = 0xA0;
  //TRISD = 0x33;
  TRISE = 0x00;
  char count;
  for(count = 0; count < 5; count++)
   {
      LED1 = ON;
      MyDelay(100);  //1SEC DELAY
      LED1 = OFF;
      MyDelay(100);  //1SEC DELAY
   }   
  
  //Initialize USART with baud rate 9600
  USARTInit(9600);

  while(1)
  {
      //Get the amount of data waiting in USART queue
      uint8_t n= USARTDataAvailable();
      
      //USARTWriteChar('A');
      //MyDelay(1000);  //1SEC DELAY
        

      //If we have some data
      if(n!=0)
      {
          //Read it
          char data=USARTReadData();
          
          if(data == 'R')
            LED1 = ON;
          if(data == 'B')
            LED1 = OFF;
            
          //And send back
          USARTWriteChar(data);
      }

  }
}
