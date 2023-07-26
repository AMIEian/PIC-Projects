#ifndef DTMF_LIB_H_
#define DTMF_LIB_H_

//Variable to save latest input
volatile unsigned char Latest_Input = 0xFF;

//Functions to handle all DTMF tasks
void init_DTMF();
//unsigned char get_input();

#endif