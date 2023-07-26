//This file contains packet related things
#ifndef PACKET_H_
#define PACKET_H_

#define PACKET_MAXIMUM_SIZE 128

#define PREAMB 0
#define PACKET_SIZE 1
#define RTU_ID 2
#define MASTER_ID 3
#define FUN_CODE 4
#define TOTAL_READINGS 5

//TIME_STAMP
#define PACKET_YEAR 6
#define PACKET_MONTH 7
#define PACKET_DATE 8
#define PACKET_DAY 9
#define PACKET_HRS 10
#define PACKET_MIN 11
#define PACKET_SEC 12

//Actual Data starting pointer
#define DATA_START 13

//Operational Constants
#define PACKET_FULL 0
#define DATA_ADDED 1
#define PREAMBLE 0xFA
#define END_CHAR 0xEA
#define CRC_OK 1
#define CRC_FAIL 0

//Variables
volatile unsigned char PACKET[PACKET_MAXIMUM_SIZE];
volatile char Current_Pos;
volatile char Data_End;

//Packet related functions
void Creat_Packet(char F_Code, char Readings);
void Creat_RTC_Packet(char id);
void Clear_Packet();
char Add_Reading_To_Packet(int t1, int h1, int t2, int h2);
int Calculate_CRC();
char Check_CRC();

#endif
