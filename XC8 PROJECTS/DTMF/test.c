#include <xc.h>
#include "pins.h"
#include "audio_player.h"

void main()
   {
      TRISA = 0x00;
      play_message(0x01);
      while(audio_stoped() == 0)
         {
         }
      while(1)
         {
         }
   }            