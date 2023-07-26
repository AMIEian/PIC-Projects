#include <xc.h>
#include "pins.h"
#include "timekeeper.h"
#include "display.h"
#include "max7219.h"

void display_time()
   {
      char temp;
      
      //Update time display array
      temp = secs;
      time_display_array[0] = temp % 10;
      time_display_array[1] = temp/10;
      
      display_secs();
      if(min_flag == 1)
         {
            temp = mins;
            time_display_array[2] = temp % 10;
            time_display_array[3] = temp/10;
      
            temp = hrs;
            
            //For 12 hrs clock
            if(Twenty_Four_Hrs == False && hrs > 12)
               temp = hrs - 12;
            if(Twenty_Four_Hrs == False && hrs == 0)
               temp = 12;
               
            if(hrs_flag == 1)
               {
                  beeps = temp * 2;
                  hrs_flag = 0;
               }   
               
            time_display_array[4] = temp % 10;
            time_display_array[5] = temp/10;
      
            if(Twenty_Four_Hrs == False && time_display_array[5] == 0)
               time_display_array[5] = 10;
         
            display_mins();
            
            min_flag = 0;
         }
      if(date_flag == 1)
         {
            temp = year;
            date_display_array[0] = temp % 10;
            date_display_array[0] = date_display_array[0] + 48;
            date_display_array[1] = temp/10;
            date_display_array[1] = date_display_array[1] + 48;
            date_display_array[2] = '-';
            
            temp = month;
            date_display_array[3] = temp % 10;
            date_display_array[3] = date_display_array[3] + 48;
            date_display_array[4] = temp/10;
            date_display_array[4] = date_display_array[4] + 48;
            date_display_array[5] = '-';
            
            temp = day;
            date_display_array[6] = temp % 10;
            date_display_array[6] = date_display_array[6] + 48;
            date_display_array[7] = temp/10;
            date_display_array[7] = date_display_array[7] + 48;
            
            display_date();
            
            date_flag = 0;
         }
      if(eagle_flag == 1)
         {
            date_display_array[7] = ' ';
            date_display_array[6] = 'E';
            date_display_array[5] = 'A';
            date_display_array[4] = 'G';
            date_display_array[3] = 'L';
            date_display_array[2] = 'E';
            date_display_array[1] = ' ';
            date_display_array[0] = ' ';
            
            display_date();
            
            eagle_flag = 0;
         }         
   }   

void display_secs()
   {
      unsigned short Mask, bits, Flag, digit, number;
      for(digit = 0; digit < 2; digit++)
         {
            //number = 0xFF;
            number = display[time_display_array[digit]];
            Mask = 0x01;
            for (bits=0; bits<8; bits++)
               {
                  Flag = number & Mask;
                  if(Flag == 0) 
                     {
                        Serial_Sec_Data = 0;
                        _delay(1);  //1SEC DELAY
                        SH_Sec_Clk = 1;
                        _delay(1);  //1SEC DELAY
                        SH_Sec_Clk = 0;
                     }   
                  if(Flag > 0) 
                     {
                        Serial_Sec_Data = 1;
                        _delay(1);  //1SEC DELAY
                        SH_Sec_Clk = 1;
                        _delay(1);  //1SEC DELAY
                        SH_Sec_Clk = 0;
                     }   
                  Mask = Mask << 1;
               }
         }      
      // Apply clock on ST_Clk
      ST_Sec_Clk = 1;
      _delay(1);  //1SEC DELAY
      ST_Sec_Clk = 0;
   }
   
void display_mins()
   {
      unsigned short Mask, bits, Flag, digit, number;
      for(digit = 2; digit < 6; digit++)
         {
            //number = 0xFF;
            number = display[time_display_array[digit]];
            Mask = 0x01;
            for (bits=0; bits<8; bits++)
               {
                  Flag = number & Mask;
                  if(Flag == 0) 
                     {
                        Serial_Min_Data = 0;
                        _delay(1);  //1SEC DELAY
                        SH_Min_Clk = 1;
                        _delay(1);  //1SEC DELAY
                        SH_Min_Clk = 0;
                     }   
                  if(Flag > 0) 
                     {
                        Serial_Min_Data = 1;
                        _delay(1);  //1SEC DELAY
                        SH_Min_Clk = 1;
                        _delay(1);  //1SEC DELAY
                        SH_Min_Clk = 0;
                     }   
                  Mask = Mask << 1;
               }
         }      
      // Apply clock on ST_Clk
      ST_Min_Clk = 1;
      _delay(1);  //1SEC DELAY
      ST_Min_Clk = 0;
   }
   
void display_date()
   {
      char i;
      for(i = 1; i <= 8; i++)
         {
             MAX7219_DisplayChar (i, date_display_array[i-1], 0);             
         }   
   }   