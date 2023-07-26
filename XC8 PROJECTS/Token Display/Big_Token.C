#include <xc.h>
#include "pins.h"
#include "audio_player.h"

void Send_Data();

char display[10] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
//char display[10] = {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};

char digits[3] = {0x01, 0x02, 0x03};
char data_received = 0, digit_received = 0;
int data_timer = 0;
char count = 0;
char index = 0;
char address = 1;

void main()
   {
      TRISA = 0xFF;   //all input
      TRISB = 0x0F;   //0-3 inputs 4-7 outputs
      TRISC = 0xE0;   //0-4 outputs 5-7 inputs
      ADCON1 = 0x06;	// All Digital
      
      LED = OFF;
      Serial_Data = OFF;
      SH_Clk = OFF;
      ST_Clk = OFF;
      
      Audio_Address = OFF;
      SBT = OFF;
            
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
            if(digit_received == ON)
               {
                  Send_Data();
                  digit_received = OFF;   //Reset the flag
               }   
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
            digit = Receiver;
            digit = digit & 0x0F;  //Clear upper nibble
            digit_received = ON; //Set digit received flag
            
            if(digit == 0x0B)
               {
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
                  return;        
               } 
               
            if(digit == 0x0C)
               {
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
                  return;        
               }
               
            //Check for 0
            if(digit == 0x0A)
               digit = 0x00;
            if(count == 0)
               {
                  digits[count] = digit;
                  digits[count+1] = 0x00;   //Clear tens 
                  digits[count+2] = 0x00;  //Clear hundreds 
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
   
void Send_Data()
   {
      unsigned short Mask, byte, bits, Flag, number;
      
      //Reset all 595 pins
      Serial_Data = OFF;
      SH_Clk = OFF;
      ST_Clk = OFF;
      
      //Send digts array one by one byte
      for(byte = 0; byte < 3; byte++)
         {
            number = digits[byte];
            //Each byte has 8 bits.
            Mask = 0x01;
            for (bits=0; bits<8; bits++)
               {
                  Flag = display[number] & Mask;
                  if(Flag == 0) 
                     {
                        Serial_Data = 0;
                        _delay(1);  //1SEC DELAY
                        SH_Clk = 1;
                        _delay(1);  //1SEC DELAY
                        SH_Clk = 0;
                     }   
                  if(Flag > 0) 
                     {
                        Serial_Data = 1;
                        _delay(1);  //1SEC DELAY
                        SH_Clk = 1;
                        _delay(1);  //1SEC DELAY
                        SH_Clk = 0;
                     }   
                  Mask = Mask << 1;
               }
         }
               
      // Apply clock on ST_Clk
      ST_Clk = 1;
      _delay(1);  //1SEC DELAY
      ST_Clk = 0;
   }  