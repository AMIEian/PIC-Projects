#ifndef RTU_H_
#define RTU_H_

//RTU Modes
#define PER_MIN_MODE 1
#define PER_SEC_MODE 2
#define RTC_SETTING_MODE 3

//Variables
unsigned char Source_ID;
unsigned char Destination_ID;
unsigned char sec_flag;
unsigned char min_flag;
unsigned char seconds;
float thresh_temp1, thresh_hum1, thresh_temp2, thresh_hum2;
float trig_temp1, trig_hum1,trig_temp2, trig_hum2;

//Functions
void RTUInit();
void MyDelay(unsigned int ms);
void SecondsInt();
unsigned char getkey(unsigned int msecs);
void beep(unsigned int del);
#endif
