#include <xc.h>
#include "dtmf_lib.h"
void interrupt ISR(void)
   {
      if(INTE && INTF)
         {
            Latest_Input = 0x00;
            Latest_Input = PORTB;
            Latest_Input =  Latest_Input & 0xF0;  //Clear Lower Nibble
            Latest_Input = Latest_Input >> 4;
            INTF = 0;   //Clear interrupt flag
         }   
   }      