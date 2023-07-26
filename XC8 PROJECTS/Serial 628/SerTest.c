#include <xc.h>
#include "usart_pic16.h"

//#pragma config OSC=HSPLL, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF

#define LED RB0
#define ON 1
#define OFF 0

void main()
{
  PCON = 0x0B;	//Set internal oscillator frequency to 4 MHz.
  CMCON = 0x07;	//Disable analog functions on PORTA

  TRISB = 0x02;
  char count;
  for(count = 0; count < 5; count++)
   {
      LED = ON;
      _delay(1000000);  //1SEC DELAY
      LED = OFF;
      _delay(1000000);  //1SEC DELAY
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
