#include <xc.h>
//#pragma config OSC=HS, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF
#define _XTAL_FREQ 4000000 //The speed of your internal(or)external oscillator
#define LED PORTB

void MY_DELAY(char sec);

void main()
{
   //Initialize PORTB
   TRISB=0x00;
   char count;

   //Now loop forevr blinking the LED.
   while(1)
   {
      //LED blinking for 10 secs.
            LED = 0xFF;
            _delay(250000);  //1SEC DELAY
            LED = 0x00;
            _delay(250000);  //1SEC DELAY
            
            LED = 0xFF;
            _delay(250000);  //1SEC DELAY
            LED = 0x00;
            _delay(250000);  //1SEC DELAY
            
            LED = 0xFF;
            _delay(250000);  //1SEC DELAY
            LED = 0x00;
            _delay(250000);  //1SEC DELAY
      //Pause for 10 secs.
      _delay(1000000);  //10SEC DELAY
   }
}

void MY_DELAY(char sec)
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
