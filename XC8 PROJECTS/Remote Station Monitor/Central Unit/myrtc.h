//This file contains RTC related fuctions

#ifndef MYRTC_H_
#define MYRTC_H_

unsigned char day;
unsigned char month;
unsigned char year;
unsigned char dow;
unsigned char hr;
unsigned char min;
unsigned char sec;

void ds1307_init();
void ds1307_set_date_time();
void ds1307_get_date();
void ds1307_get_time();
unsigned char bin2bcd(unsigned char binary_value);
unsigned char bcd2bin(unsigned char bcd_value);

#endif
