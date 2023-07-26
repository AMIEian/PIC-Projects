//This file contains pin definations and alias

#ifndef DISPLAY_H_
#define DISPLAY_H_

char display[11] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x00};   //For Common Cathode Display
//char display[11] = {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90,0xFF};  //For Common Anode Display
unsigned char time_display_array[6];
unsigned char date_display_array[8];
unsigned char eagle_flag = 0;

void display_time();
void display_secs();
void display_mins();
void display_date();
void display_eagle();

#endif