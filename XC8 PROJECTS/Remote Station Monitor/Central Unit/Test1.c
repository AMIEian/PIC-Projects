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

void getting_data();
void reset_unit();
void rtc_setting();
void data_to_center();
void local_display();
void tx_packet();
void DisplayReadings();

void main()
   {
      unsigned char choice = 0;
      RTUInit();
      
      //Write Welcome Message
      LCDWriteString("Welcome to CENTR");
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
                     LCDWriteString("MODE = MEMORY");
                     LCDGotoXY(0,1);
                     LCDWriteString("AND RTC DISPLAY");
                     local_display();
                     MyDelay(100);
                     break;
                  case 3:
                     LCDWriteString("MODE = GET");
                     LCDGotoXY(0,1);
                     LCDWriteString("RTC SETTINGS");
                     MyDelay(100);
                     rtc_setting();
                     break;
                  case 4:
                     LCDWriteString("MODE = WAITING");
                     LCDGotoXY(0,1);
                     LCDWriteString("FOR RTU. PACKET");
                     MyDelay(100);
                     getting_data();
                     break;
                  case 5:
                     LCDWriteString("THIS SWITCH IS");
                     LCDGotoXY(0,1);
                     LCDWriteString("FOR FUTURE USE");
                     MyDelay(100);
                     //local_display();
                     break;
                  default :
                     LCDWriteString("MODE = WAITING");
                     LCDGotoXY(0,1);
                     LCDWriteString("FOR RTU. PACKET");
                     MyDelay(100);
                     getting_data();
                     break;
               }   
      
         }
   }   

void getting_data()
   {
      unsigned char result = 0, msb = 0, lsb = 0;
      
      while(1)
         {
            LCDClear();
            LCDWriteString("WAITING FOR DATA");
            
            result = PACKET_FAIL;
            //Get the packet
            while(result == PACKET_FAIL)
               {
                  Clear_Packet();
                  result = Receive_Packet(); 
                  LCDClear();
                  LCDWriteString("WAITING FOR DATA");  
               }
               
            //Packet is received. Check whether it is time packet
            if(PACKET[FUN_CODE] == RTC_SETTING_MODE && PACKET[RTU_ID] == 'x')
               {
                  //Get source ID in Destination ID
                  Destination_ID = PACKET[RTU_ID];
                  LCDClear();
                  LCDWriteString("RTC REQ. BY X");
                  //Create RTC packet
                  Creat_RTC_Packet('x');
                  LCDGotoXY(0,1);
                  LCDWriteString("SENDING SETTINGS");
                  tx_packet();
               } 
               
            //Packet is received. Check whether it is time packet
            if(PACKET[FUN_CODE] == RTC_SETTING_MODE && PACKET[RTU_ID] == 'y')
               {
                  //Get source ID in Destination ID
                  Destination_ID = PACKET[RTU_ID];
                  LCDClear();
                  LCDWriteString("RTC REQ. BY Y");
                  //Create RTC packet
                  Creat_RTC_Packet('y');
                  LCDGotoXY(0,1);
                  LCDWriteString("SENDING SETTINGS");
                  tx_packet();
               } 
               
            if(PACKET[FUN_CODE] != RTC_SETTING_MODE && PACKET[RTU_ID] == 'x')
               {
                  LCDClear();
                  LCDWriteString("PACKET RECEIVED");
                  LCDGotoXY(0,1);
                  LCDWriteString("FROM RTU-1");
                  MyDelay(100);
                  
                  //Packet received from RTU 1 store it in memory 1
                  LCDClear();
                  LCDWriteString("WRITING EEPROM...");
                  device = MEMORY_ONE;
                  write_packet_to_page(Write_Page1);
                  Write_Page1++;
                  
                  msb = Write_Page1 >> 8;
                  lsb = Write_Page1 & 0x00FF;
                  
                  Write_b_eep(0x00, msb);
                  _delay(50);
                  Write_b_eep(0x01, lsb);
                  _delay(50);
                  
                  if(Write_Page1 >= MEM1)
                     {
                        while(1)
                           {
                              LCDClear();
                              MyDelay(1000);
                              LCDWriteString("MEMORY FULL...!");
                              LCDGotoXY(0,1);
                              LCDWriteString("CONNECT PC...");
                              MyDelay(1000);
                           }
                     }         
               }   
            if(PACKET[FUN_CODE] != RTC_SETTING_MODE && PACKET[RTU_ID] == 'y')
               {
                  LCDClear();
                  LCDWriteString("PACKET RECEIVED");
                  LCDGotoXY(0,1);
                  LCDWriteString("FROM RTU-2");
                  MyDelay(100);
                  
                  //Packet received from RTU 1 store it in memory 1
                  LCDClear();
                  LCDWriteString("WRITING EEPROM...");
                  device = MEMORY_TWO;
                  write_packet_to_page(Write_Page2);
                  Write_Page2++;
                  
                  msb = Write_Page2 >> 8;
                  lsb = Write_Page2 & 0x00FF;
                  
                  Write_b_eep(0x02, msb);
                  _delay(50);
                  Write_b_eep(0x03, lsb);
                  _delay(50);
                  
                  if(Write_Page2 >= MEM2)
                     {
                        while(1)
                           {
                              LCDClear();
                              MyDelay(100);
                              LCDWriteString("MEMORY FULL...!");
                              LCDGotoXY(0,1);
                              LCDWriteString("CONNECT PC...");
                              MyDelay(100);
                           }
                     }         
               }
         }  
   } 

void reset_unit()
   {
      LCDClear();
      LCDWriteString("RESETTING MEMORY");
      //Pointer reset
      Write_Page1 = 0;
            
      Write_b_eep(0x00, 0x00);
      _delay(50);
      Write_b_eep(0x01, 0x00);
      _delay(50);
      
       Write_Page2 = 0;
            
       Write_b_eep(0x02, 0x00);
       _delay(50);
       Write_b_eep(0x03, 0x00);
       _delay(50);
       
       //Clear EEPROM
       device = MEMORY_ONE;
       clear_rom();
       device = MEMORY_TWO;
       clear_rom();
       
       LCDClear();
       LCDWriteString("RESETTING RTC");
       day = 1;
  `    month = 1;
       year = 15;
       dow = 2;
       hr = 12;
       min = 0;
       sec = 0;
       ds1307_set_date_time();
       MyDelay(100);
       Write_b_eep(0x04,0);
       _delay(50);
       
       //Reset Threshold values for rtu-1
       Write_b_eep(5,50);
       _delay(50);
       Write_b_eep(6,0);
       _delay(50);
       Write_b_eep(7,90);
       _delay(50);
       Write_b_eep(6,0);
       _delay(50);
       Write_b_eep(9,50);
       _delay(50);
       Write_b_eep(10,0);
       _delay(50);
       Write_b_eep(11,90);
       _delay(50);
       Write_b_eep(12,0);
       _delay(50);
       
       //Reset trigger values for rtu-1
       Write_b_eep(13,45);
       _delay(50);
       Write_b_eep(14,0);
       _delay(50);
       Write_b_eep(15,85);
       _delay(50);
       Write_b_eep(16,0);
       _delay(50);
       Write_b_eep(17,45);
       _delay(50);
       Write_b_eep(18,0);
       _delay(50);
       Write_b_eep(19,85);
       _delay(50);
       Write_b_eep(20,0);
       _delay(50);
       
       //Reset Threshold values rtu-2
       Write_b_eep(21,50);
       _delay(50);
       Write_b_eep(22,0);
       _delay(50);
       Write_b_eep(23,90);
       _delay(50);
       Write_b_eep(24,0);
       _delay(50);
       Write_b_eep(25,50);
       _delay(50);
       Write_b_eep(26,0);
       _delay(50);
       Write_b_eep(27,90);
       _delay(50);
       Write_b_eep(28,0);
       _delay(50);
       
       //Reset trigger values for rtu-2
       Write_b_eep(29,45);
       _delay(50);
       Write_b_eep(30,0);
       _delay(50);
       Write_b_eep(31,85);
       _delay(50);
       Write_b_eep(32,0);
       _delay(50);
       Write_b_eep(33,45);
       _delay(50);
       Write_b_eep(34,0);
       _delay(50);
       Write_b_eep(35,85);
       _delay(50);
       Write_b_eep(36,0);
       _delay(50);
       
       while(1)
         {
            if(sec_flag == On)
               {
                  sec_flag = Off;
                  ds1307_get_time();
                  //Clear the display
                  LCDClear();
                  //Write a string
                  LCDWriteString("RESET COMPLETED!");
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

void rtc_setting()
   {
      //This function get rtc settings from PC
      //Send request packet to rtc
      LCDClear();
      LCDWriteString("REQUESTING RTC...");
      
      //Send RTC packet to center 
      unsigned char result = PACKET_FAIL;
      unsigned char atm = 0;
      
      Clear_Packet();
      Creat_RTC_Packet('x');
      Destination_ID = Master_ID;
      tx_packet();
      LCDClear();
      LCDWriteString("REQUEST SENT!");
      //MyDelay(500);
      
      while(result == PACKET_FAIL && atm < 10)
         {
            result = Receive_Packet();
            atm++;
         }   
      if(result == PACKET_FAIL)
         {
            while(1)
               {
                  LCDClear();
                  MyDelay(100);
                  LCDWriteString("SETTINGS NOT");
                  LCDGotoXY(0,1);
                  LCDWriteString("RECEIVED...");
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
       
       //Store threshold and triger values in eeprom
       LCDClear();
       LCDWriteString("UPDATING THRESHOLDS");
       LCDGotoXY(0,1);
       LCDWriteString("UPDATING TRIGERS");
       
       char mem_loc = 5;
       char i = DATA_START;
       for(i = DATA_START; i<(DATA_START+32);i++)
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

void data_to_center()
   {
      unsigned char msb = 0, lsb = 0;
      
      //This sends all previously collected data to center
      //Get current Write Page address
      if(Write_Page1 == 0 && Write_Page2 == 0)
         {
            LCDClear();
            LCDWriteString("NOTHING TO SEND!");
            MyDelay(1000);   
         }
      if(Write_Page1 != 0)
         {
            device = MEMORY_ONE;
            for(Current_Read_Page = 0; Current_Read_Page < Write_Page1; Current_Read_Page++)
               {
                  Clear_Packet();   //Clear packet before getting data
                  LCDClear();
                  LCDWriteString("READING EEPROM...");
                  read_packet_from_page(Current_Read_Page);
                  MyDelay(10);
                  LCDClear();
                  LCDWriteString("TRANSMITTING...");
                  tx_packet();
               }
            Write_Page1 = 0;
            
            Write_b_eep(0x00, 0x00);
            _delay(50);
            Write_b_eep(0x01, 0x00);
            _delay(50);
         }
      if(Write_Page2 != 0)
         {
            device = MEMORY_TWO;
            for(Current_Read_Page = 0; Current_Read_Page < Write_Page2; Current_Read_Page++)
               {
                  Clear_Packet();   //Clear packet before getting data
                  LCDClear();
                  LCDWriteString("READING EEPROM...");
                  read_packet_from_page(Current_Read_Page);
                  MyDelay(10);
                  LCDClear();
                  LCDWriteString("TRANSMITTING...");
                  tx_packet();
               }
            Write_Page2 = 0;
            
            Write_b_eep(0x02, 0x00);
            _delay(50);
            Write_b_eep(0x03, 0x00);
            _delay(50);   
         }                   
      LCDClear();
      LCDWriteString("FORMATING MEMORY");
      MyDelay(1000);
      
      //Clear EEPROM
      device = MEMORY_ONE;
      clear_rom();
      MyDelay(1);
      device = MEMORY_TWO;
      clear_rom();
      MyDelay(1);
      
      LCDClear();
      LCDWriteString("FORMAT COMPLETE!");
      MyDelay(1000);
      return;
   }   
   
void local_display()
   {
      LCDClear();
      LCDWriteString("MEM1=");
      LCDWriteInt(Write_Page1,3);
      LCDWriteString(" MEM2=");
      LCDWriteInt(Write_Page2,3);
      
      unsigned char s = 0;
      while(s < 60)
         {
            if(sec_flag == On)
               {
                  sec_flag = Off;
                  s++;
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
    
void tx_packet()
   {
      unsigned char attempts = 0;
      unsigned char res = PACKET_NOT_DELIVERED;
      while(res == PACKET_NOT_DELIVERED && attempts < 10)
         {
            res = Send_Packet();
            if(res == ECO_FAIL)
               {
                  MyDelay(5000);
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
                  MyDelay(100);
                  LCDClear();
                  LED1 = Off;
                  MyDelay(100);
               }
         }
      MyDelay(50);
   }
