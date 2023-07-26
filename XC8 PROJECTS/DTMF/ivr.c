#include <xc.h>
#include "audio_player.h"
#include "dtmf_lib.h"
#include "ivr.h"

#define _XTAL_FREQ 4000000

char welcome_message()
   {
      //Play welcome message
      play_message(1);
      
      //Remain here until message end or user presses any key
      while(Latest_Input == 0xFF && audio_stoped() == 0)
         {
         }
         
      //If loop is terminated due to user input return user input
      if(Latest_Input != 0xFF)
         {
            unsigned char temp;
            temp = Latest_Input;
            Latest_Input = 0xFF;
            return temp;
         }
      else
         {
            return Message_End;
         }
   } 
   
char check_password()
   {
      char count = 0;
      int timer = 0;
      char password;
      
      //Play message to request password
      play_message(7);
      
      while(1)
         {
            password = (char)eeprom_read(count);
            timer = 0;
            
            while(Latest_Input == 0xFF && timer <= 20000)
               {
                  //Remain here until user enters any digit
                  //Or for 20 secs
                  __delay_ms(1);
                  timer++;
               }
               
            //Timer Over
            if(timer > 20000)
               return Input_Not_Received;
               
            //Input received
            if(Latest_Input == password)
               {
                  //Check for #
                  if(Latest_Input == 0x0C)
                     {
                        Latest_Input = 0xFF; //Reset
                        return Correct_Password;
                     }
                  Latest_Input = 0xFF;
                  count++;
               }
            else
               {
                  Latest_Input = 0xFF;
                  return Wrong_Password;
               }
         }                        
   }
   
char change_password()
   {
      int timer = 0;
      char count = 0;
      
      //Request new password
      play_message(9);
      
      while(1)
         {
            timer = 0;
            
            while(Latest_Input == 0xFF && timer <= 20000)
               {
                  //Remain here until user enters any digit
                  //Or for 20 secs
                  __delay_ms(1);
                  timer++;
               }
               
            //Timer Over
            if(timer > 20000)
               return Input_Not_Received;
               
            eeprom_write(count,Latest_Input);
            if(Latest_Input == 0x0C)
               {
                  Latest_Input = 0xFF;
                  return Change_OK;
               }
            Latest_Input = 0xFF;   
            count++;
         }
   } 
   
char play_message_group(char group)
   {
      if(group == 1)
         {
            //Play Motor On Message
            play_message(2);  
           
           //Remain here until message end or user presses any key
           while(Latest_Input == 0xFF && audio_stoped() == 0)
              {
              }
         
           //If loop is terminated due to user input return user input
           if(Latest_Input != 0xFF)
              {
                 unsigned char temp;
                 temp = Latest_Input;
                 Latest_Input = 0xFF;
                 return temp;
              }
         }
         
      if(group == 0)
         {
            //Play Motor Off Message
            play_message(3);
            
            //Remain here until message end or user presses any key
            while(Latest_Input == 0xFF && audio_stoped() == 0)
               {
               }
         
            //If loop is terminated due to user input return user input
            if(Latest_Input != 0xFF)
               {
                  unsigned char temp;
                  temp = Latest_Input;
                  Latest_Input = 0xFF;
                  return temp;
               }  
         }
         
      //__delay_ms(1000);
      
      //Play Common Password change message
      play_message(6);
      
      //Remain here until message end or user presses any key
      while(Latest_Input == 0xFF && audio_stoped() == 0)
         {
         }
         
      //If loop is terminated due to user input return user input
      if(Latest_Input != 0xFF)
         {
            unsigned char temp;
            temp = Latest_Input;
            Latest_Input = 0xFF;
            return temp;
         }
      else
         {
            return Message_End;
         }
   }  
   
char power_message()
   {
      //Play welcome message
      play_message(11);
      
      //Remain here until message end or user presses any key
      while(Latest_Input == 0xFF && audio_stoped() == 0)
         {
         }
         
      //If loop is terminated due to user input return user input
      if(Latest_Input != 0xFF)
         {
            unsigned char temp;
            temp = Latest_Input;
            Latest_Input = 0xFF;
            return temp;
         }
      else
         {
            return Message_End;
         }
   }
   
char thanks_message()
   {
      //Play welcome message
      play_message(12);
      
      //Remain here until message end or user presses any key
      while(Latest_Input == 0xFF && audio_stoped() == 0)
         {
         }
         
      //If loop is terminated due to user input return user input
      if(Latest_Input != 0xFF)
         {
            unsigned char temp;
            temp = Latest_Input;
            Latest_Input = 0xFF;
            return temp;
         }
      else
         {
            return Message_End;
         }
   }                       