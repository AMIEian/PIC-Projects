#include <xc.h>
#include "usart_pic16.h"

#define LED RB0
#define ON 1
#define OFF 0
#define CUT RB7
#define COAG RB6
#define BIPO RB5
#define LIGA RB4

void main()
{
  //PCON = 0x0B;	//Set internal oscillator frequency to 4 MHz.
  
  OPTION_REG = 0x87; //Enable timer with 1:256 scaler to beep buzzer
  T0IE = 0; //Disable timer interrupt

  TRISB = 0xF0;
  PORTB = 0x00;   //Turn off buzzer
  char count;
  unsigned char input = 0;
  
  for(count = 0; count < 5; count++)
   {
      LED = ON;
      _delay(1000000);  //1SEC DELAY
      LED = OFF;
      _delay(1000000);  //1SEC DELAY
   }   
  
  TRISA = 0x07;   //All outputs
  CMCON = 0x05;	//Selected single comparator with RA1 as input and reference is set to internal
  VRCON = 0xE9;   //Enable internal voltage referance (1.8V @ 5V & 1.5V @ 4V VDD). This voltage will be available on RA2. 
  
  //Initialize USART with baud rate 9600
  USARTInit(9600);
  ei();  //Enable interrupts
  while(1)
  {
      //Check comparator output. (Battery voltage)
      if(C2OUT == ON)
         T0IE = ON;  //Enable beep timer
      
      input = PORTB & 0xF0;
      while(input == 0x00)
         {
            //Remain here until any switch is pressed 
            _delay(50000);
            input = PORTB & 0xF0;
         }
         
      if(CUT == ON)
        USARTWriteChar('W');
      while(CUT == ON)
        {
        } 
      
      if(COAG == ON)
        USARTWriteChar('X');
      while(COAG == ON)
        {
        }

      if(BIPO == ON)
        USARTWriteChar('Y');
      while(BIPO == ON)
        {
        }
      
      if(LIGA == ON)
        USARTWriteChar('Z');
      while(LIGA == ON)
        {
        }
      
      USARTWriteChar('R');  
  }
}
