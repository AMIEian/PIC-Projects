#include <xc.h>

#include "usart_pic16.h"

#define LED RB1
#define Button RB0
#define ON 1
#define OFF 0

void main()
{
  TRISB = 0x00;
  char count;
  for(count = 0; count < 10; count++)
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
      //Remain here until button is not pressed
      while(Button == OFF)
         {
         }  
      
      //Send R
      USARTWriteChar('R');   
       
      //Remain here till echo of R       
      while(USARTDataAvailable() == 0)
         {
         }   
         
      //We have some data
      //Read it
      char data=USARTReadData();
          
      if(data == 'R')
         LED = ON;
      
      //Remain here until button is pressed
      while(Button == ON)
         {
         } 
        
      //Send B
      USARTWriteChar('B');   
       
      //Remain here till echo of R       
      while(USARTDataAvailable() == 0)
         {
         }   
         
      //We have some data
      //Read it
      char data=USARTReadData();
       
      if(data == 'B')
         LED = OFF;
      
     
  }
}
