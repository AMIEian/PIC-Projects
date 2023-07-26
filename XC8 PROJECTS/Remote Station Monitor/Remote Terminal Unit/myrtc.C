#include "myrtc.h"
#include <i2c.h>

void ds1307_init() 
{ 
   unsigned char seconds = 0; 

   IdleI2C();
   StartI2C(); 
   WriteI2C(0xD0);      // WR to RTC 
   IdleI2C();
   WriteI2C(0x00);      // REG 0 
   IdleI2C();
   RestartI2C(); 
   WriteI2C(0xD1);      // RD from RTC 
   seconds = ReadI2C(); // Read current "seconds" in DS1307 
   NotAckI2C();
   StopI2C();
   
   seconds = bcd2bin(seconds); 
   seconds &= 0x7F; 
   seconds = bin2bcd(seconds);
   
   _delay(10); 

   IdleI2C(); 
   StartI2C();
   WriteI2C(0xD0);      // WR to RTC 
   IdleI2C();
   WriteI2C(0x00);      // REG 0 
   IdleI2C();
   WriteI2C(seconds);     // Start oscillator with current "seconds value 
   IdleI2C();
   RestartI2C(); 
   WriteI2C(0xD0);      // WR to RTC 
   IdleI2C();
   WriteI2C(0x07);      // Control Register
   IdleI2C(); 
   WriteI2C(0x10);     // 1Hz output on SQWE pin
   IdleI2C(); 
   StopI2C(); 

} 

void ds1307_set_date_time() 
{ 
  sec &= 0x7F; 
  hr &= 0x3F; 
  //Convert binary to BCD
  sec = bin2bcd(sec); 
  min = bin2bcd(min); 
  hr = bin2bcd(hr);  
  dow = bin2bcd(dow); 
  day = bin2bcd(day);  
  month = bin2bcd(month);  
  year = bin2bcd(year);
  
  IdleI2C();
  StartI2C(); 
  WriteI2C(0xD0);            // I2C write address 
  IdleI2C();
  WriteI2C(0x00);            // Start at REG 0 - Seconds 
  IdleI2C();
  WriteI2C(sec);      // REG 0 
  IdleI2C();
  WriteI2C(min);      // REG 1 
  IdleI2C();
  WriteI2C(hr);      // REG 2 
  IdleI2C();
  WriteI2C(dow);      // REG 3 
  IdleI2C();
  WriteI2C(day);      // REG 4 
  IdleI2C();
  WriteI2C(month);      // REG 5 
  IdleI2C();
  WriteI2C(year);      // REG 6 
  IdleI2C();
  WriteI2C(0x10);            // REG 7 - 1Hz output on SQWE pin
  IdleI2C(); 
  StopI2C(); 
} 

void ds1307_get_date() 
{ 
  IdleI2C();
  StartI2C(); 
  WriteI2C(0xD0);            // I2C write address 
  IdleI2C();
  WriteI2C(0x03);            // Start at REG 3 - Day of week
  IdleI2C();
               
  RestartI2C(); 
  WriteI2C(0xD1);           //Read Mode
  IdleI2C();
  dow = ReadI2C();
  AckI2C();
  day = ReadI2C();
  AckI2C();
  month = ReadI2C();
  AckI2C();
  year = ReadI2C();
  NotAckI2C();
  StopI2C();
   
  dow  = bcd2bin(dow & 0x7f);    
  day  = bcd2bin(day & 0x3f);    
  month  = bcd2bin(month & 0x1f);   
  year = bcd2bin(year);             
} 

void ds1307_get_time() 
{ 
  IdleI2C();
  StartI2C(); 
  WriteI2C(0xD0);      // WR to RTC 
  IdleI2C();
  WriteI2C(0x00);      // REG 0 
  IdleI2C();
  RestartI2C(); 
  WriteI2C(0xD1);      // RD from RTC 
  sec = ReadI2C(); // Read current "seconds" in DS1307 
  AckI2C();
  min = ReadI2C();
  AckI2C();
  hr = ReadI2C();
  NotAckI2C();
  StopI2C();
  
  //Convert BCD to Binary 
  sec = bcd2bin(sec & 0x7f); 
  min = bcd2bin(min & 0x7f); 
  hr  = bcd2bin(hr & 0x3f); 
} 

unsigned char bin2bcd(unsigned char binary_value) 
{ 
  unsigned char temp; 
  unsigned char retval; 

  temp = binary_value; 
  retval = 0; 

  while(1) 
  { 
    // Get the tens digit by doing multiple subtraction 
    // of 10 from the binary value. 
    if(temp >= 10) 
    { 
      temp -= 10; 
      retval += 0x10; 
    } 
    else // Get the ones digit by adding the remainder. 
    { 
      retval += temp; 
      break; 
    } 
  } 

  return(retval); 
} 


// Input range - 00 to 99. 
unsigned char bcd2bin(unsigned char bcd_value) 
{ 
  unsigned char temp; 

  temp = bcd_value; 
  // Shifting upper digit right by 1 is same as multiplying by 8. 
  temp >>= 1; 
  // Isolate the bits for the upper digit. 
  temp &= 0x78; 

  // Now return: (Tens * 8) + (Tens * 2) + Ones 

  return(temp + (temp >> 2) + (bcd_value & 0x0f)); 
} 