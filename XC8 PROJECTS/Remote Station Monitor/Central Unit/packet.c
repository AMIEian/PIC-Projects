#include<xc.h>
#include "packet.h"
#include "myrtc.h"
#include "rtu.h"
#include <string.h>

void Creat_Packet(char F_Code, char Readings)
   {
      PACKET[PREAMB] = PREAMBLE;
      PACKET[PACKET_SIZE] = (Readings * 8) + 16;
      PACKET[RTU_ID] = Source_ID;
      PACKET[MASTER_ID] = Destination_ID;
      PACKET[FUN_CODE] = F_Code;
      PACKET[TOTAL_READINGS] = Readings;  //Each reading is 8 byte long
      
      //Get current time to creat time stamp
      //ds1307_get_time();
      //MyDelay(100);
      PACKET[PACKET_YEAR] = year;
      PACKET[PACKET_MONTH] = month;
      PACKET[PACKET_DATE] = day;
      PACKET[PACKET_DAY] = dow;
      PACKET[PACKET_HRS] = hr;
      PACKET[PACKET_MIN] = min;
      PACKET[PACKET_SEC] = sec;
      
      Current_Pos = DATA_START;
      Data_End = Readings * 8 + 13;
   }   

void Creat_RTC_Packet(char id)
   {
      unsigned char mem_loc = 0;
      
      Clear_Packet();
      Creat_Packet(RTC_SETTING_MODE, 2);  //Create packet with 2 data
      
      if(id == 'x')
         mem_loc = 5;   
      if(id == 'y')
         mem_loc = 21;
         
      char i = 0;
      for(i = 0; i < 16; i++)
         {
            PACKET[Current_Pos] = (unsigned char)Read_b_eep(mem_loc);
            _delay(50);
            Current_Pos++;
            mem_loc++;
         }
         
      unsigned int packet_crc = 0;
      unsigned char crc_h = 0, crc_l = 0;
      
      packet_crc = Calculate_CRC();
      crc_h = packet_crc >> 8;
      crc_l = packet_crc & 0x00FF;
      
      PACKET[Current_Pos] = crc_h;
      Current_Pos++;
      PACKET[Current_Pos] = crc_l;
      Current_Pos++;
      PACKET[Current_Pos] = END_CHAR;   //Sring termination character at end
      //Packet Created
   }      
char Add_Reading_To_Packet(int t1, int h1, int t2, int h2)
   {
      char t1_h, t1_l, h1_h, h1_l;
      char t2_h, t2_l, h2_h, h2_l;
      int CRC;
      char CRC_HI, CRC_LOW;
      
      t1_h = t1 >> 8;   //8 right shifts to get higher byte
      t1_l = t1 & 0x00FF;   //Clear upper 8 bits to get lower byte
      
      h1_h = h1 >> 8;   //8 right shifts to get higher byte
      h1_l = h1 & 0x00FF;   //Clear upper 8 bits to get lower byte
      
      t2_h = t2 >> 8;   //8 right shifts to get higher byte
      t2_l = t2 & 0x00FF;   //Clear upper 8 bits to get lower byte
      
      h2_h = h2 >> 8;   //8 right shifts to get higher byte
      h2_l = h2 & 0x00FF;   //Clear upper 8 bits to get lower byte 
      
      PACKET[Current_Pos] = t1_h;
      Current_Pos++;
      PACKET[Current_Pos] = t1_l;
      Current_Pos++;
      PACKET[Current_Pos] = h1_h;
      Current_Pos++;
      PACKET[Current_Pos] = h1_l;
      Current_Pos++;
      PACKET[Current_Pos] = t2_h;
      Current_Pos++;
      PACKET[Current_Pos] = t2_l;
      Current_Pos++;
      PACKET[Current_Pos] = h2_h;
      Current_Pos++;
      PACKET[Current_Pos] = h2_l;
      Current_Pos++;
      //Check end of packet
      if(Current_Pos == Data_End)
         {
            //Add CRC and string termination at end
            CRC = Calculate_CRC();
            CRC_HI = CRC >> 8;
            CRC_LOW = CRC & 0x00FF;
            PACKET[Current_Pos] = CRC_HI;
            Current_Pos++;
            PACKET[Current_Pos] = CRC_LOW;
            Current_Pos++;
            PACKET[Current_Pos] = END_CHAR;   //Sring termination character at end
            return PACKET_FULL;
         }
      return DATA_ADDED;   
   }   

int Calculate_CRC()
   {
      char count;
      int sum = 0;
      //Find total sum of whole packet data
      for(count = 0; count <= Data_End - 1; count++)
         sum = sum + PACKET[count];
      return sum;
   }
   
char Check_CRC()
   {
      char count = 0, length = 0, CRC_HI, CRC_LOW;
      int sum, CRC;
      
      //Get CRC of received packet
      while(PACKET[length] != END_CHAR)
         length++;
         
      CRC_LOW = PACKET[length - 1];
      CRC_HI = PACKET[length - 2];
      CRC = 0x0000;
      CRC = CRC + CRC_HI;
      CRC = CRC << 8;
      CRC = CRC + CRC_LOW;
      
      sum = 0;
      //Calculate actual CRC of packet 
      for(count = 0; count < length - 2; count++)
            sum = sum + PACKET[count];
            
      if(sum == CRC)
         return CRC_OK;
      else 
         return CRC_FAIL;
   }   
   
void Clear_Packet()
   {
      char i = 0;
      for(i = 0; i < PACKET_MAXIMUM_SIZE; i++)
         PACKET[i] = 0xFF;
   }      
