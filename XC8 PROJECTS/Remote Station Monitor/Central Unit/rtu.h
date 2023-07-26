#ifndef RTU_H_
#define RTU_H_

//RTU Modes
#define PER_MIN_MODE 1
#define PER_SEC_MODE 2
#define RTC_SETTING_MODE 3

//Working Constants
#define MEMORY_ONE 0xA0
#define MEMORY_TWO 0xA2
//Variables
unsigned char Source_ID;
unsigned char Destination_ID,Destination_ID1, Destination_ID2;
unsigned char Master_ID;
unsigned int Write_Page1, Write_Page2;
unsigned int Read_Page1, Read_Page2;
unsigned char sec_flag;
unsigned char min_flag;
unsigned char seconds;

//Functions
void RTUInit();
void MyDelay(unsigned int ms);
void SecondsInt();
unsigned char getkey(unsigned int msecs);
void beep(unsigned int del);
#endif
