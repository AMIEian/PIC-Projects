//This file holds communication related functions
#ifndef COMMUNICATION_H_
#define COMMUNICATION_H_

#define LINE_BUSY 0x00
#define LINE_FREE 0x01
#define ECO_SUCCESS 0x01
#define ECO_FAIL 0x00
#define ECO_RECEIVED 0x01
#define ECO_NOT_RECEIVED 0x00
#define PACKET_DELIVERED 49
#define PACKET_NOT_DELIVERED 48
#define PACKET_RECEIVED 0x01
#define PACKET_FAIL 0x00

unsigned char Eco_Test();
unsigned char Send_Packet();
unsigned char Receive_Packet();
unsigned char Check_Busy_Line();
unsigned char Eco_Replay();
#endif
