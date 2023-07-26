#include <xc.h>
#include "beep.h"

#define buzzer RB3
#define BUZZER_ON 16
#define BUZZER_OFF 17

void Beeper()
   {
      //This rutine will be called after every 16 ms when timer is enabled.
      //It also beep the buzzer after every 15 secs. Buzzer will on for 1 sec.
      ms_counter++;
      if(ms_counter == 15)
         {
            ms_counter = 0;   //Reset milli sec counter
            sec_counter++;
            if(sec_counter == BUZZER_ON)
               buzzer = 1;
            if(sec_counter == BUZZER_OFF)
               {
                  buzzer = 0; //Turn off buzzer
                  sec_counter = 0;  //Reset second counter
               }   
         }      
   }   