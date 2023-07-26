#include <xc.h>
#include "pins.h"
#include "audio_player.h"

#define _XTAL_FREQ 4000000
#define HUNDRED 28

void play_message(char Message)
   {
      __delay_ms(500);
      Audio_Address = Message;
      SBT = ON;
      __delay_ms(1000);	//Delay for 1 seconds
      SBT = OFF;
   }
   
char audio_stoped()
   {
      if(Audio_Stop == ON)
         return 1;
      else
         return 0;
   }   
   
char play_number(char units, char tens, char hundreds)
   {
      if(hundreds != 0)
         {
            //First say number 
            play_message(hundreds);
            //Now say hundred 
            play_message(HUNDRED);
         }   
      if(tens >= 2)
         {
            //Calculate memory location of voice IC
            char address;
            address = 20 + tens;
            address = address - 2;
            //Say tens like twenty , thirty , forty etc
            play_message(address);
         }   
      //Creat final number
      if(tens == 1)
         units = units + 10;
      //Say the remaining number
      play_message(units);   
      return 1; 
   }      
