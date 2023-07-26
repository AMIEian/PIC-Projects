#ifndef USART_PIC18_H
#define	USART_PIC18_H

#include <stdint.h>

#ifdef	__cplusplus
extern "C" {
#endif

//Constants
#define RECEIVE_BUFF_SIZE 128

//Varriables
volatile char URBuff[RECEIVE_BUFF_SIZE];	//USART Receive Buffer
volatile int8_t UQFront;
volatile int8_t UQEnd;

void USARTInit(uint16_t baud_rate);
void USARTWriteChar(char ch);
void USARTWriteString(const char *str);
void USARTWriteLine(const char *str);
void USARTWriteInt(int16_t val, int8_t field_length);
void USARTHandleRxInt();
char USARTReadData();
uint8_t USARTDataAvailable();
void USARTGotoNewLine();
void USARTReadBuffer(char *buff,uint16_t len);
void USARTFlushBuffer();



#ifdef	__cplusplus
}
#endif

#endif	/* USART_PIC18_H */

