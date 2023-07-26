#include<xc.h>

#define _XTAL_FREQ 4000000

#define SBT RA4
#define Stop RA5
#define On 1
#define Off 0
#define Address PORTA

void main()
   {
      TRISA = 0x20;  //RA0 to RA3 output for address, RA4 output for SBT, RA5 input for Stop
      char count = 1;
      while(1)
         {
            //Apply Address
            Address = count;
            //Apply Trigger
            SBT = On;
            __delay_ms(1000);	//Delay for 1 second
            SBT = Off;
            //Wait for Stop pulse
            while(Stop == Off)
               {
               }
            count++;
            if(count == 13)
               count = 1;   
         }
   }      