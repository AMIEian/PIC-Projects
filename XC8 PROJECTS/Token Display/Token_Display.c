#include <xc.h>
#include "pins.h"
#include "audio_player.h"

char digits[3] = {0x10, 0x20, 0x30};
char data_received = 0;
int data_timer = 0;
char count = 0;
char index = 0;
char address = 1;

void main()
   {
      TRISA = 0x00;   //All output 
      TRISB = 0xFF;   //All input
      TRISC = 0x00;   //All output 
      ADCON1 = 0x06;	// All Digital
      PORTA = 0x00;
      PORTC = 0xFF;
      
      for(count = 0; count <= 4; count++)
         {
            LED = ON;
            _delay(1000000);  //1SEC DELAY
            LED = OFF;
            _delay(1000000);  //1SEC DELAY
         }
      count = 0;  //Reset count for reuse 
      
      //Initialize Timer 0 and RB0 interrupt 
      OPTION_REG = 0xC3;   //Interrupt on rising edge, TMR0 internal clock, Timer prescalar 1:16
      INTCON = 0xB0; //GIE, T0IE & INTE Enabled
      
      while(1)
         {
            /*
            if(data_received == 1)
               {
                  INTE = 0;   //Disable interrupt while talking numbers
                  //Start talking numbers 
                  if(digits[2] != 0xF0)
                     {
                        play_message(digits[2]);
                        //Wait to stop audio 
                        while(audio_stoped() == 0)
                           {
                              //Remain here until audio stops
                           }
                     }
                  if(digits[1] != 0xF0)
                     {
                        play_message(digits[1]);
                        //Wait to stop audio 
                        while(audio_stoped() == 0)
                           {
                              //Remain here until audio stops
                           }
                     }
                  play_message(digits[0]);
                  //Wait to stop audio 
                  while(audio_stoped() == 0)
                     {
                         //Remain here until audio stops
                     }  
                  data_received = 0;
                  INTE = 1;   //Enable interrupt for next token 
               } 
               */   
         }
   }
   
void interrupt ISR(void)
   {
      //Check for RB0 interrupt
      if(INTE && INTF)
         {
            char digit = 0x00;
            digit = PORTB;
            digit = digit & 0xF0;  //Clear lower nibble
            
            if(digit == 0x0B)
               {
                  digits[0] = digits[0] >> 4;
                  digits[1] = digits[1] >> 4;
                  digits[2] = digits[2] >> 4;
                   
                  //Next command received 
                  digits[0] = digits[0] + 1;
                  if(digits[0] > 9)
                     {
                        digits[0] = 0;
                        digits[1] = digits[1] + 1;
                        if(digits[1] > 9)
                           {
                              digits[1] = 0;
                              digits[2] = digits[2] + 1;
                              if(digits[2] > 9)
                                 {
                                    digits[2] = 9;
                                    digits[1] = 9;
                                    digits[0] = 9;
                                 }   
                           }
                     }
                     
                  digits[0] = digits[0] << 4;
                  digits[1] = digits[1] << 4;
                  digits[2] = digits[2] << 4;
                  
                  return;        
               } 
               
            if(digit == 0x0C)
               {
                  digits[0] = digits[0] >> 4;
                  digits[1] = digits[1] >> 4;
                  digits[2] = digits[2] >> 4;
                  
                  //Previous command received 
                  digits[0] = digits[0] - 1;
                  if(digits[0] < 0)
                     {
                        digits[0] = 9;
                        digits[1] = digits[1] - 1;
                        if(digits[1] < 0)
                           {
                              digits[1] = 9;
                              digits[2] = digits[2] - 1;
                              if(digits[2] < 0)
                                 {
                                    digits[2] = 0;
                                    digits[1] = 0;
                                    digits[0] = 0;
                                 }   
                           }
                     }
                     
                  digits[0] = digits[0] << 4;
                  digits[1] = digits[1] << 4;
                  digits[2] = digits[2] << 4;   
                     
                  return;        
               }
               
            //Check for 0
            if(digit == 0xA0)
               digit = 0x00;
            if(count == 0)
               {
                  digits[count] = digit;
                  digits[count+1] = 0xF0;   //Clear tens 
                  digits[count+2] = 0xF0;  //Clear hundreds 
                  data_timer = 1;   //Start 3 sec timer for next digit 
                  count ++;
                  INTF = 0;   //Reset interrupt flag 
                  return;
               }
            if(count == 1)
               {
                  digits[count] = digits[count-1];  //Shift display by 1 digit 
                  digits[count-1] = digit; //Get new value in units
                  data_timer = 1;   //Start 3 sec timer for next digit 
                  count ++;
                  INTF = 0;   //Reset interrupt flag 
                  return;
               }         
            if(count == 2)
               {
                  digits[count] = digits[count-1];  //Shift display by 1 digit 
                  digits[count-1] = digits[count-2];  //Shift display by 1 digit
                  digits[count-2] = digit; //Get new value in units
                  data_timer = 0;   //Reset 3 sec timer for next digit 
                  count = 0;  //Reset digit counter 
                  data_received = 1;
                  INTF = 0;   //Reset interrupt flag 
                  return;
               }   
         }
      //Check for Timer 0 interrupt 
      if(T0IE && T0IF)
         {
            char Display_Value = 0x00;
            Display_Value = digits[index];   //Get value to be displayed on 7 segment 
            Display_Value = Display_Value | address;  //Append address on display value 
            PORTC = Display_Value;  //Apply value to actual port
            index = index + 1;   //Increase index by 1
            address = address * 2; //Increase address by 2
            if(index > 2)
               {
                  index = 0;  //Reset index 
                  address = 1; //Reset address 
               }
            if(data_timer >= 1)
               {
                  data_timer = data_timer + 1;
                  if(data_timer >= 750)
                     {
                        //Approximately 3 seconds completed after getting key input 
                       data_timer = 0;   //Reset 2 sec timer for next digit 
                       count = 0;  //Reset digit counter 
                       data_received = 1; //Start talking number 
                     }
               }
            TMR0 = 0;   //Reset  TMR0
            T0IF = 0;   //Reset interrupt flag    
            return; 
         }       
   }