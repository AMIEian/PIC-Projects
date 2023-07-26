//This file contains pin definations and alias

#ifndef TIMEKEEPER_H_
#define TIMEKEEPER_H_

unsigned char Twenty_Four_Hrs = 0;
unsigned char secs = 00, mins = 00, hrs = 12, day = 1, month = 1, year = 15;
unsigned char alarm_mins = 00, alarm_hrs = 12;
char sec_flag = 0, min_flag = 1, hrs_flag = 0, date_flag = 1, alarm_flag = 0, alarm_auto_repeat = 0, alarm_bell = 0;
char adjustment = 0;
char beeps = 0;

void update_time();
void update_date();
void check_alarm();

#endif