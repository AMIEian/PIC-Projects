#include <xc.h>

void Wait()
{
   unsigned char i;
   for(i=0;i<100;i++)
      _delay(6);
}

void main()
{
   //Initialize PORTD

   //PD0 as Output
   //TRISE = 0xF8;
   TRISB = 0x00;
   ADCON1 = 0x06;
   //Now loop forevr blinking the LED.
   while(1)
   {
      //PORTE=0x07; //PORTB0 = HIGH
      PORTB = 0x00;
      PORTB = 0xFF;
      #asm
      SLEEP
      #endasm

      Wait();

      //PORTE=0x00; //PORTB0 = LOW
      
      Wait();
   }
}