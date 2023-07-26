#include <xc.h>
#include "keypad.h"
#include "pins.h"

void initKeyboard()
   {
      TRISA = 0x00;  //All outputs
      TRISB = 0xF0;  //Upper nibble input; Lower nibble output
      COLUMNS = 0x00;
      ROWS = 0x00;  //Clear PORTB
   }   

char getKeyboardInput()
   {
      char Keyboard_Input = 0xFF;
      char column = 0;
      char row;
      char column_mask = 0x01;
      char temp = 0x00;
      for(column = 0; column < 4; column ++)
         {
            COLUMNS = 0x00;
            ROWS = 0x00;  //Clear PORTB
            COLUMNS = column_mask << column;   //Turn on single column
            __delay_ms(1); //1 mili sec delay to settel down
            //Clear lower nibble; Check upper nibble
            temp = ROWS & 0xF0;
            if(temp != 0x00)
               __delay_ms(5);   //Key is pressed; De-bouncing delay
            //Check if it is still non zero
            temp = ROWS & 0xF0;
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
                     ROWS = 0x0A;  //Transmit 0
                  else 
                     ROWS = Keyboard_Input;
                  //Remain here untill key is pressed
                  temp = ROWS & 0xF0;
                  while(temp != 0x00)
                     {
                        __delay_ms(1); //1 mili sec delay
                        temp = ROWS & 0xF0;
                     }
                  ROWS = 0x00;
                  break;
               }               
         } 
       COLUMNS = 0x00;
       ROWS = 0x00;  //Clear PORTB
       return Keyboard_Input;
   }    
      
