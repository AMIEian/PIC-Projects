#include <xc.h>
#include "dtmf_lib.h"

#define _XTAL_FREQ 4000000

void init_DTMF()
   {
      OPTION_REGbits.nRBPU = 1;   //PORTB pull ups disable
      OPTION_REGbits.INTEDG = 0; //Interrupt on falling edge
      INTE = 1;   //Enable RB0 Interrupt
      ei();       //Enable intrrupt
   }
/***  
unsigned char get_input()
   {
      unsigned char temp;
      if(Latest_Input == 0xFF)
         {
            return 0xFF;
         }
      else
         {
            temp = Latest_Input;
            Latest_Input = 0xFF;
            return temp;
         }      
   }
***/