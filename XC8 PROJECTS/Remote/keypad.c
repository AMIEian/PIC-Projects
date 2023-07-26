#include <xc.h>
#include "keypad.h"
#include "pins.h"

void initKeyboard()
   {
      TRISB = 0xF0;  //Upper nibble input; Lower nibble output
      Keyboard = 0x00;  //Clear PORTB
   }   

char getKeyboardInput()
   {
      char Keyboard_Input = 0xFF;
      char column = 0;
      char row;
      char column_mask = 0x08;
      char temp = 0x00;
      for(column = 0; column < 4; column ++)
         {
            Keyboard = 0x00;  //Reset PORTB
            Keyboard = column_mask >> column;   //Turn on single column
            __delay_ms(1); //1 mili sec delay to settel down
            //Clear lower nibble; Check upper nibble
            temp = Keyboard & 0xF0;
            if(temp != 0x00)
               __delay_ms(20);   //Key is pressed; De-bouncing delay
            //Check if it is still non zero
            temp = Keyboard & 0xF0;
            if(temp != 0x00)
               {
                  //Get row value
                  row = temp >> 4;  //Bring upper nibble into lower nibble 
                  row = row >> 1;   //Adjustment steps to get row number between 0 - 3
                  if(row > 3)
                     row = 3;
                  //Get keyboard input
                  Keyboard_Input = Keyboard_Keys[column][row];
                  //Transmit this data
                  if(Keyboard_Input == 0x00)
                     Transmitter = 0x0A;  //Transmit 0
                  else 
                     Transmitter = Keyboard_Input;
                  //Remain here untill key is pressed
                  temp = Keyboard & 0xF0;
                  while(temp != 0x00)
                     {
                        __delay_ms(1); //1 mili sec delay
                        temp = Keyboard & 0xF0;
                     }
                  Transmitter = 0x00;
                  break;
               }               
         } 
       Keyboard = 0x00;  //Clear PORTB 
       return Keyboard_Input;
   }    
      
