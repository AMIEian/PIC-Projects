#include <xc.h>
#include <adc.h>
#include<math.h>
#include<I2C.h>
#include "usart_pic18.h"
#include "custom_char.h"
#include "lcd_hd44780_pic18.h"
#include "myeeprom.h"
#include "myrtc.h"
#include "myutils.h"
#include "packet.h"
#include "pins.h"
#include "rtu.h"
#include "communication.h"
#include "hsm20g.h"

#pragma config OSC=HS, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF

#define _XTAL_FREQ 100000000 //The speed of your internal(or)external oscillator

void per_minute_reading();
void per_second_reading();
void rtc_setting();
void data_to_center();
void local_display();
void rtc_local_display();
void tx_packet();
void DisplayReadings();
void check_thresh_trig();

void main()
   {
      unsigned char choice = 0;
      RTUInit();
      
      //Write Welcome Message
      LCDWriteString("Welcome to RTU-1");
      MyDelay(1000); //1 Sec delay
      while(1)
         {
            choice = 0;
            while(choice == 0)
               {
                  choice = getkey(5);
                  if(sec_flag == On)
                     {
                        sec_flag = Off;
                        ds1307_get_time();
                        //Clear the display
                        LCDClear();
                        //Write a string
                        LCDWriteString("Press a Switch...");
                        LCDGotoXY(4,1);
                        LCDWriteInt(hr,2);
                        LCDGotoXY(6,1);
                        LCDWriteString(":");
                        LCDGotoXY(7,1);
                        LCDWriteInt(min,2);
                        LCDGotoXY(9,1);
                        LCDWriteString(":");
                        LCDGotoXY(10,1);
                        LCDWriteInt(sec,2);
                     }
               }
            LCDClear();
            beep(50);
            
            switch(choice)
               {
                  case 1:
                     LCDWriteString("MODE = SEND");
                     LCDGotoXY(0,1);
                     LCDWriteString("DATA TO CENTER");
                     MyDelay(100);
                     LCDClear();
                     data_to_center();
                     break;
                  case 2:
                     LCDWriteString("MODE = PARAM.");
                     LCDGotoXY(0,1);
                     LCDWriteString("LOCAL DISPLAY");
                     MyDelay(100);
                     local_display();
                     break;
                  case 3:
                     LCDWriteString("MODE = GET");
                     LCDGotoXY(0,1);
                     LCDWriteString("RTC SETTINGS");
                     MyDelay(100);
                     rtc_setting();
                     break;
                  case 4:
                     LCDWriteString("MODE = PER");
                     LCDGotoXY(0,1);
                     LCDWriteString("SECOND READING");
                     MyDelay(100);
                     per_second_reading();
                     break;
                  case 5:
                     LCDWriteString("MODE = PER");
                     LCDGotoXY(0,1);
                     LCDWriteString("MINUTE READING");
                     MyDelay(100);
                     per_minute_reading();
                     break;
                  default :
                     LCDWriteString("MODE = PER");
                     LCDGotoXY(0,1);
                     LCDWriteString("SECOND READING");
                     MyDelay(100);
                     LCDClear();
                     per_second_reading();
                     break;
               }   
         }
   }   

void per_minute_reading()
   {
      unsigned char reading_count = 0, result = 0, msb = 0, lsb = 0;
      while(1)
         {
             Clear_Packet();  //Clear the packet before getting data
             reading_count = 14; //Set no. of readings in each packet
             Creat_Packet(PER_MIN_MODE,reading_count);   //Create Packet
             seconds = 0;
             min_flag = On;
             //Start getting readings every minute
             while(reading_count > 0)
               {
                  if(min_flag == On)
                     {
                        min_flag = Off;
                        seconds = 0;
                        //One minute complete. Get current readings from HSM20G
                        get_current_readings();
                        //Add readings to packet
                        result = Add_Reading_To_Packet(Temp1, Hum1, Temp2, Hum2);
                        //Display readings on LCD
                        DisplayReadings();
                        reading_count--;
                     }   
               }
             LCDClear();
             LCDWriteString("WRITTING PACKET");
             LCDGotoXY(0,1);
             LCDWriteString("TO EEPROM...");
             MyDelay(100);
             write_packet_to_page(Current_Write_Page);
             Current_Write_Page++;
             
             msb = Current_Write_Page >> 8;
             lsb = Current_Write_Page & 0x00FF;
             
             //Save current write page pointer in memory
             Write_b_eep(0x00, msb);
             _delay(50);
             Write_b_eep(0x01, lsb);
             _delay(50);
             
             if(Current_Write_Page >= MAX_PAGE_NO)
               {
                  Current_Write_Page = 0;
                  //Memory is full. Send it to center. Display Message.
                  LCDClear();
                  LCDWriteString("MEMORY FULL...");
                  LCDGotoXY(0,1);
                  LCDWriteString("SENDING TO CNTR.");
                  
                  Comm = On;  //Turn on communication
                  beep(100);
                  MyDelay(500);
                  Current_Read_Page = 0;
                  while(Current_Read_Page < MAX_PAGE_NO)
                     {
                        Clear_Packet();   //Clear packet before getting data
                        
                        LCDClear();
                        LCDWriteString("READING EEPROM...");
                        read_packet_from_page(Current_Read_Page);
                        MyDelay(10);
                        LCDClear();
                        LCDWriteString("SENDING PACKET...");
                        
                        tx_packet();
                        LCDClear();
                        LCDWriteString("PACKET SENT!");
                        MyDelay(100);
                        LCDClear();
                        Current_Read_Page++;              
                     }
                  //All pages sent
                  Comm = Off;
                  beep(100);
                  MyDelay(500);   
               }       
         }   
   } 
     
void per_second_reading()
   {
      unsigned char reading_count = 0, result = 0, msb = 0, lsb = 0;
      while(1)
         {
             Clear_Packet();  //Clear the packet before getting data
             reading_count = 14; //Set no. of readings in each packet
             Creat_Packet(PER_SEC_MODE,reading_count);   //Create Packet
             //Start getting readings every minute
             while(reading_count > 0)
               {
                  if(sec_flag == On)
                     {
                        sec_flag = Off;
                        //One sec complete. Get current readings from HSM20G
                        get_current_readings();
                        //Add readings to packet
                        result = Add_Reading_To_Packet(Temp1, Hum1, Temp2, Hum2);
                        //Display readings on LCD
                        DisplayReadings();
                        reading_count--;
                     }   
               }
             LCDClear();
             LCDWriteString("WRITTING PACKET");
             LCDGotoXY(0,1);
             LCDWriteString("TO EEPROM...");
             MyDelay(100);
             write_packet_to_page(Current_Write_Page);
             Current_Write_Page++;
             
             msb = Current_Write_Page >> 8;
             lsb = Current_Write_Page & 0x00FF;
             
             //Save current write page pointer in memory
             Write_b_eep(0x00, msb);
             _delay(50);
             Write_b_eep(0x01, lsb);
             _delay(50);
             
             if(Current_Write_Page >= MAX_PAGE_NO)
               {
                  Current_Write_Page = 0;
                  //Memory is full. Send it to center. Display Message.
                  LCDClear();
                  LCDWriteString("MEMORY FULL...");
                  LCDGotoXY(0,1);
                  LCDWriteString("SENDING TO CNTR.");
                  
                  Comm = On;  //Turn on communication
                  beep(100);
                  MyDelay(500);
                  Current_Read_Page = 0;
                  while(Current_Read_Page < MAX_PAGE_NO)
                     {
                        Clear_Packet();   //Clear packet before getting data
                        
                        LCDClear();
                        LCDWriteString("READING EEPROM...");
                        read_packet_from_page(Current_Read_Page);
                        MyDelay(10);
                        LCDClear();
                        LCDWriteString("SENDING PACKET...");
                        
                        tx_packet();
                        LCDClear();
                        LCDWriteString("PACKET SENT!");
                        MyDelay(100);
                        LCDClear();
                        Current_Read_Page++;              
                     }
                  //All pages sent
                  Comm = Off;
                  beep(100);
                  MyDelay(500); 
               }       
         }   
   }   

void rtc_setting()
   {
      //This function get rtc settings from center
      //Send request packet to rtc
      LCDClear();
      LCDWriteString("REQUESTING RTC...");
      
      //Send RTC packet to center 
      Comm = On;  //Turn on communication
      beep(100);
      MyDelay(500);
      unsigned char result = PACKET_FAIL;
      unsigned char atm = 0;
      
      Creat_RTC_Packet();
      tx_packet();
      LCDClear();
      LCDWriteString("REQUEST SENT!");
      
      while(result == PACKET_FAIL && atm < 10)
         {
            result = Receive_Packet();
            atm++;
         }
         
      Comm = Off;  //Turn off communication
      beep(100);
      MyDelay(500);
      
      if(result == PACKET_FAIL)
         {
            while(1)
               {
                  LCDClear();
                  MyDelay(100);
                  LCDWriteString("SETTINGS NOT");
                  LCDGotoXY(0,1);
                  LCDWriteString("RECEIVED...!");
                  MyDelay(100);
               }
         }
       LCDClear();
       LCDWriteString("UPDATING RTC");

       day = PACKET[PACKET_DATE];
       month = PACKET[PACKET_MONTH]; 
       year = PACKET[PACKET_YEAR];
       dow = PACKET[PACKET_DAY];
       hr = PACKET[PACKET_HRS];
       min = PACKET[PACKET_MIN];
       sec = PACKET[PACKET_SEC];
       
       ds1307_set_date_time();
       MyDelay(100);
       Write_b_eep(0x04,0);
       _delay(50);
       
       //Store threshold and triger values in eeprom
       LCDClear();
       LCDWriteString("UPDATING THRESHOLDS");
       LCDGotoXY(0,1);
       LCDWriteString("UPDATING TRIGERS");
       char mem_loc = 5;
       char i = DATA_START;
       for(i = DATA_START; i<(DATA_START+16);i++)
         {
            Write_b_eep(mem_loc,PACKET[i]);
            _delay(50);
            mem_loc++;
         }   
       
       LCDClear();
       LCDWriteString("UPDATE COMPLETED...!");
       
       unsigned char s = 0;
       while(s < 60)
         {
            if(sec_flag == On)
               {
                  sec_flag = Off;
                  s++;
                  ds1307_get_time();
                  //Clear the display
                  LCDClear();
                  //Write a string
                  LCDWriteString("UPDATE COMPLETED...!");
                  LCDGotoXY(4,1);
                  LCDWriteInt(hr,2);
                  LCDGotoXY(6,1);
                  LCDWriteString(":");
                  LCDGotoXY(7,1);
                  LCDWriteInt(min,2);
                  LCDGotoXY(9,1);
                  LCDWriteString(":");
                  LCDGotoXY(10,1);
                  LCDWriteInt(sec,2);
               }   
         }
      return;            
   }   
void rtc_local_display()
   {
      unsigned char s = 0;
      while(s < 60)
         {
            if(sec_flag == On)
               {
                  s++;
                  sec_flag = Off;
                  ds1307_get_time();
                  //Clear the display
                  LCDClear();
                  //Write a string
                  LCDWriteString("LOCAL RTC DISPLAY...!");
                  LCDGotoXY(4,1);
                  LCDWriteInt(hr,2);
                  LCDGotoXY(6,1);
                  LCDWriteString(":");
                  LCDGotoXY(7,1);
                  LCDWriteInt(min,2);
                  LCDGotoXY(9,1);
                  LCDWriteString(":");
                  LCDGotoXY(10,1);
                  LCDWriteInt(sec,2);
               } 
         }
   }         
void data_to_center()
   {
      unsigned char result = 0, attempts = 0;
      //This sends all previously collected data to center
      //Get current Write Page address
      if(Current_Write_Page == 0)
         {
            LCDClear();
            LCDWriteString("NOTHING TO SEND!");
            MyDelay(1000);
         }
      Comm = On;  //Turn on communication
      beep(100);
      MyDelay(500); 
      for(Current_Read_Page = 0; Current_Read_Page < Current_Write_Page; Current_Read_Page++)
         {
            Clear_Packet();   //Clear packet before getting data
            
            LCDClear();
            LCDWriteString("READING EEPROM...");
            read_packet_from_page(Current_Read_Page);
            MyDelay(10);
            LCDGotoXY(0,1);
            LCDWriteString("SENDING PACKET...");
                        
            tx_packet();
            LCDClear();
            LCDWriteString("PACKET SENT!");
            MyDelay(100);
            LCDClear();
            Current_Read_Page++;
         }
      Comm = Off;  //Turn off communication
      beep(100);
      MyDelay(500);            
      
      LCDClear();
      LCDWriteString("ALL DATA SENT");
      MyDelay(1000);
      
      LCDClear();
      LCDWriteString("FORMATING MEMORY");
      MyDelay(1000);
      
      Current_Write_Page = 0;
            
       Write_b_eep(0x00, 0x00);
       _delay(50);
       Write_b_eep(0x01, 0x00);
       _delay(50);
       
       //Clear EEPROM
       clear_rom();
       
       LCDClear();
       LCDWriteString("FORMAT COMPLETE!");
       MyDelay(1000);
       return;
   }   
   
void local_display()
   {
      unsigned char s = 0;
      
      s = 0;
      while(s < 60)
         {
            //This displays local readings on LCD every second.
            if(sec_flag == On)
               {
                  s++;
                  sec_flag = Off;
                  //One sec complete. Get current readings from HSM20G
                  get_current_readings();
                  //Display readings on LCD
                  DisplayReadings();
               }
         }
      return;   
   }  
    
void tx_packet()
   {
      unsigned char attempts = 0;
      unsigned char res = PACKET_NOT_DELIVERED;
      while(res == PACKET_NOT_DELIVERED && attempts < 10)
         {
            res = Send_Packet();
            if(res == ECO_FAIL)
               {
                  Comm = Off; //Turn Off communication for 15 Sec
                  LCDClear();
                  LCDWriteString("RF LINK OFF");
                  beep(100);
                  MyDelay(5000);
                  Comm = On;  //Turn on communication
                  LCDClear();
                  LCDWriteString("RF LINK ON");
                  beep(100);
                  MyDelay(500);
                  res = PACKET_NOT_DELIVERED;
               }  
            attempts++; 
         }
      if(res != PACKET_DELIVERED)
         {
            //Packet not delivered in 100 attempts
            //Start Buzzer and LED blinking
            LCDClear();
            Buzzer = On;
            while(1)
               {
                  LCDWriteString("WIRELESS FAILD...!");
                  LED1 = On;
                  Buzzer = On;
                  MyDelay(100);
                  LCDClear();
                  LED1 = Off;
                  Buzzer = Off;
                  MyDelay(100);
               }
         }
      MyDelay(50);
   }
         
void DisplayReadings()
   {
      unsigned char dec, fract;
      LCDClear();
      LCDWriteString("T1=");
      dec = Temp1 >> 8;
      fract = Temp1 && 0x00FF;
      LCDWriteInt(dec,2);
      LCDWriteString(".");
      LCDWriteInt(fract,1);
      LCDWriteString("%0C");
      LCDWriteString(" H1=");
      dec = Hum1 >> 8;
      LCDWriteInt(dec,2);
      LCDWriteString("%");
      LCDGotoXY(0,1);
      LCDWriteString("T2=");
      dec = Temp2 >> 8;
      fract = Temp2 && 0x00FF;
      LCDWriteInt(dec,2);
      LCDWriteString(".");
      LCDWriteInt(fract,1);
      LCDWriteString("%0C");
      LCDWriteString(" H2=");
      dec = Hum2 >> 8;
      LCDWriteInt(dec,2);
      LCDWriteString("%");
   }
   
void check_thresh_trig()
   {
      if(t1 > thresh_temp1)
         {
         }
      if(t1 < trig_temp1)
         {
         } 
      if(h1 > thresh_hum1)
         {
         }
      if(h1 < trig_hum1)
         {
         }      
      if(t2 > thresh_temp2)
         {
         }
      if(t2 < trig_temp2)
         {
         } 
      if(h2 > thresh_hum2)
         {
         }
      if(h2 < trig_hum2)
         {
         } 
   }   
