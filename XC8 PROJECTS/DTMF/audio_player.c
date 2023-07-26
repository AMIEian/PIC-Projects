#include <xc.h>
#include "pins.h"
#include "audio_player.h"
#include "dtmf_lib.h"

#define _XTAL_FREQ 4000000

void play_message(char Message)
   {
      __delay_ms(500);
      Message = Message - 1;
      Audio_Address = Message;
      SBT = On;
      __delay_ms(1000);	//Delay for 1 seconds
      SBT = Off;
   }
   
char audio_stoped()
   {
      if(Audio_Stop == On)
         return 1;
      else
         return 0;
   }   
   
char phone_ringing()
   {
      char time = 0;
      while(Ringtone == 0 && time < 100)
         {
           //Remain here for 100 ms or phone rings
           __delay_ms(1);
           time++;
         }   
      if(time >= 100)
         {
            //If 100 ms are complete without ring then return 0
            return 0;
         }
      else
         {
            //100 ms are not complete but loop is terminated
            //this means phone is ringing wait for 2 sec and
            //check again for ring
            
            __delay_ms(2000);	//Delay for 2 second
            
            time = 0;
            while(Ringtone == 0 && time < 100)
               {
                  //Remain here for 100 ms or phone rings
                  __delay_ms(1);
                  time++;
               }   
            if(time >= 100)
               {
                  //If 100 ms are complete without ring then return 0
                  return 0;
               }
            else
               {
                  return 1;
               }
         }
   } 
   
char phone_received()
   {
      if(Latest_Input == 0x0A)
         {
            Latest_Input = 0xFF;
            return 1;
         }
      else
         {
            Latest_Input = 0xFF;
            return 0;
         }
   }                          
               