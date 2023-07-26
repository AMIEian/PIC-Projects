/******************************************************************************

                          eXtreme Electronics xAPI(TM)
						  ----------------------------
xAPI is a Powerful but easy to use C library to program the xBoard(TM)
series of AVR development board. The library has support for commonly use tasks
like:-

*LCD interfacing
*MUXED 7 segment displays.
*Remote Control
*Serial Communication
*DC Motor Controls with Speed Control
*Analog Measurement for Sensor Interface.
*Temperature Measurement.
*I2C Communication.
*EEPROM Interface
*Real Time Clock (RTC Interface)
*GSM Module Interface

The APIs are highly documented and easy to use even by a beginner.

For More Info Log On to 
www.eXtremeElectronics.co.in

Copyright 2008-2012 eXtreme Electronics India

                                    GSM Core
						           ----------
This module is used for interfacing with Standard GSM Module using the AT command
set.

                                     NOTICE
									--------
NO PART OF THIS WORK CAN BE COPIED, DISTRIBUTED OR PUBLISHED WITHOUT A
WRITTEN PERMISSION FROM EXTREME ELECTRONICS INDIA. THE LIBRARY, NOR ANY PART
OF IT CAN BE USED IN COMMERCIAL APPLICATIONS. IT IS INTENDED TO BE USED FOR
HOBBY, LEARNING AND EDUCATIONAL PURPOSE ONLY. IF YOU WANT TO USE THEM IN 
COMMERCIAL APPLICATION PLEASE WRITE TO THE AUTHOR.


WRITTEN BY:
AVINASH GUPTA
me@avinashgupta.com

*******************************************************************************/

#include <stdio.h>
#include <stdint.h>
#include <xc.h>
#include <string.h>
#include <stdlib.h>

#include "usart_pic16.h"
#include "sim300.h"

#define _XTAL_FREQ 4000000

int8_t SIM300Init()
	{
		//Init USART lib
		USARTInit(9600);
	
		//Check communication line
		SIM300Cmd("AT");	//Test command
	
		//Now wait for response
		uint16_t i=0;
	
		//correct response is 6 byte long
		//<CR><LF>AT<CR>LF>
		//So wait until we have got 6 bytes
		//in buffer.
		while(i<10)
			{
				if(USARTDataAvailable()<6)
					{
						i++;
						__delay_ms(10);	//Delay for 10 mili seconds
						continue;
					}			
				else
					{
						//We got a response that is 6 bytes long
						//Now check it	
						USARTReadBuffer(sim300_buffer,6);	//Read serial Data
			
						return SIM300CheckResponse(sim300_buffer,"OK",6);
					}			
			}
	
		//We waited so long but got no response
		//So tell caller that we timed out
	
		return SIM300_TIMEOUT;		
	}

int8_t SIM300Cmd(const char *cmd)
	{
		USARTWriteString(cmd);	//Send Command
		USARTWriteChar(0x0D);	//CR
	
		uint8_t len=strlen(cmd);
	
		len++;	//Add 1 for trailing CR added to all commands
	
		uint16_t i=0;
	
		//Wait for echo
		while(i<10*len)
			{
				if(USARTDataAvailable()<len)
					{
						i++;
						__delay_ms(10);	//Delay for 10 mili seconds
						continue;
					}
				else
					{
						//We got an echo
						//Now check it
						USARTReadBuffer(sim300_buffer,len);	//Read serial Data
			
						return SIM300_OK;
					}
			}
	
		return SIM300_TIMEOUT;		
	}

int8_t SIM300CheckResponse(const char *response,const char *check,uint8_t len)
	{
		len-=2;
	
		//Check leading CR LF
		if(response[0]!=0x0D | response[1]!=0x0A)
			return SIM300_INVALID_RESPONSE;
	
		//Check trailing CR LF
		if(response[len]!=0x0D | response[len+1]!=0x0A)
			return SIM300_INVALID_RESPONSE;
		
	
		//Compare the response
		for(uint8_t i=2;i<len;i++)
			{
				if(response[i]!=check[i-2])
					return SIM300_FAIL;
			}
	
		return SIM300_OK;		
	}

int8_t SIM300WaitForResponse(uint16_t timeout)
	{
		uint8_t i=0;
		uint16_t n=0;
	
		while(1)
			{
				//Wait here for number of miliseconds for response
				while (USARTDataAvailable()==0 && n<timeout)
					{
						n++; 
						__delay_ms(1);	//Delay for 1 mili seconds
						//_delay(1000);	//Delay for 1 mili seconds
					}
				
				if(n==timeout)
					{
						//Did not get any response
						return 0;
					}	
				else
					{
						//Got a response. Start copying it to our buffrer
						sim300_buffer[i]=USARTReadData();
						//Check for end of response
						if(sim300_buffer[i]==0x0D && i!=0)
							{
								USARTFlushBuffer();
								return i+1;
							}				
						else
							i++;
					}
			}	
	}

int8_t SIM300RingResponse(uint16_t timeout)
	{
		int8_t i=0;
		uint16_t n=0;
	
		while(1)
			{
				//Wait here for number of miliseconds for response
				while (USARTDataAvailable()==0 && n<timeout)
					{
						n++; 
						__delay_ms(1);	//Delay for 1 mili seconds
						//_delay(1000);	//Delay for 1 mili seconds
					}
				
				if(n==timeout)
					{
						//Did not get any response
						return 0;
					}	
				else
					{
						//Got a response. Start copying it to our buffrer
						sim300_buffer[i]=USARTReadData();
						//Check for end of response
						if(sim300_buffer[i]==0x0D && i>20)
							{
								USARTFlushBuffer();
								return i+1;
							}				
						else
							i++;
					}
			}		
	}
	
int8_t SIM300GetNetStat()
	{
		//Send Command
		SIM300Cmd("AT+CREG?");
	
		//Now wait for response
		uint16_t i=0;
	
		//correct response is 20 byte long
		//So wait until we have got 20 bytes
		//in buffer.
		while(i<10)
			{
				if(USARTDataAvailable()<20)
					{
						i++;
						__delay_ms(10);	//Delay for 10 mili seconds
						continue;
					}
				else
					{
						//We got a response that is 20 bytes long
						//Now check it
						USARTReadBuffer(sim300_buffer,20);	//Read serial Data
			
						if(sim300_buffer[11]=='1')
							return SIM300_NW_REGISTERED_HOME;
						else if(sim300_buffer[11]=='2')
							return SIM300_NW_SEARCHING;
						else if(sim300_buffer[11]=='5')
							return SIM300_NW_REGISTED_ROAMING;
						else
							return SIM300_NW_ERROR;			
					}
			}
	
		//We waited so long but got no response
		//So tell caller that we timed out
	
		return SIM300_TIMEOUT;
	
	}

int8_t SIM300IsSIMInserted()
	{
		USARTFlushBuffer();
	
		//Send Command
		SIM300Cmd("AT+CSMINS?");
	
		//Now wait for response
		uint16_t i=0;
	
		//correct response is 22 byte long
		//So wait until we have got 22 bytes
		//in buffer.
		while(i<30)
			{
				if(USARTDataAvailable()<22)
					{
						i++;
						__delay_ms(10);	//Delay for 10 mili seconds
						continue;
					}
				else
					{
						//We got a response that is 22 bytes long
						//Now check it
						USARTReadBuffer(sim300_buffer,22);	//Read serial Data
			
				if(sim300_buffer[13]=='1')
					return SIM300_SIM_PRESENT;
				else
					return SIM300_SIM_NOT_PRESENT;
					}
			}
	
		//We waited so long but got no response
		//So tell caller that we timed out
	
		return SIM300_TIMEOUT;
	}

uint8_t SIM300GetProviderName(char *name)
	{
		USARTFlushBuffer();
	
		//Send Command
		SIM300Cmd("AT+CSPN?");
	
		uint8_t len=SIM300WaitForResponse(1000);
	
		if(len==0)
			return SIM300_TIMEOUT;
	
		char *start,*end;
		start=strchr(sim300_buffer,'"');
		start++;
		end=strchr(start,'"');
	
		*end='\0';
	
		strcpy(name,start);
	
		return strlen(name);
	}

int8_t SIM300GetIMEI(char *emei)
	{
		USARTFlushBuffer();
	
		//Send Command
		SIM300Cmd("AT+GSN");
	
		uint8_t len=SIM300WaitForResponse(1000);
	
		if(len==0)
			return SIM300_TIMEOUT;
		
		sim300_buffer[len-1]='\0';
	
		strcpy(emei,sim300_buffer+2);
	
		return SIM300_OK;	
	}

int8_t SIM300GetManufacturer(char *man_id)
	{
		USARTFlushBuffer();
	
		//Send Command
		SIM300Cmd("AT+GMI");
	
		uint8_t len=SIM300WaitForResponse(1000);
	
		if(len==0)
			return SIM300_TIMEOUT;
	
		sim300_buffer[len-1]='\0';
	
		strcpy(man_id,sim300_buffer+2);//+2 for removing leading CR LF
	
		return SIM300_OK;
	}

int8_t SIM300GetModel(char *model)
	{
		USARTFlushBuffer();
	
		//Send Command
		SIM300Cmd("AT+GMM");
	
		uint8_t len=SIM300WaitForResponse(1000);
	
		if(len==0)
		return SIM300_TIMEOUT;
	
		sim300_buffer[len-1]='\0';
	
		strcpy(model,sim300_buffer+2);//+2 for removing leading CR LF
	
		return SIM300_OK;
	}

int8_t	SIM300DeleteMsg(uint8_t i)
	{
		USARTFlushBuffer();
	
		//String for storing the command to be sent
		char cmd[16];
	
		//Build command string
		sprintf(cmd,"AT+CMGD=%d",i);
	
		//Send Command
		SIM300Cmd(cmd);
	
		uint8_t len=SIM300WaitForResponse(1000);
	
		if(len==0)
			return SIM300_TIMEOUT;
	
		sim300_buffer[len-1]='\0';
	
		//Check if the response is OK
		if(strnicmp(sim300_buffer+2,"OK",2)==0)
			return SIM300_OK;
		else
			return SIM300_FAIL;
	}

int8_t	SIM300WaitForMsg(uint8_t *id)
	{	
		uint8_t len=SIM300WaitForResponse(250);
	
		if(len==0)
			return SIM300_TIMEOUT;
	
		sim300_buffer[len-1]='\0';
	
		if(strnicmp(sim300_buffer+2,"+CMTI:",6)==0)
			{
				char str_id[4];
		
				char *start;
		
				start=strchr(sim300_buffer,',');
				start++;
	
				strcpy(str_id,start);
		
				*id=atoi(str_id);
		
				return SIM300_OK;
			}		
		else
			return SIM300_FAIL;
	}
	
int8_t SIM300WaitForValidMsg()
	{
		//Wait for MSG
		uint8_t id = 1;
		uint8_t response;
		//Wait for SMS
		//response = SIM300WaitForMsg(&id);
		if(strnicmp(sim300_buffer+2,"+CMTI:",6)==0)
			{	
				//Message received read it
				response = SIM300ReadValidMsg(id);
				if(response == SIM300_OK)
					{
						//Valid SMS received. Delet SMS and return OK
						response = SIM300DeleteMsg(id);
						return SIM300_OK;
					}
				if(response == SIM300_WRONG_KEYWORD)
					{
						//SMS from valid user but wrong keywords. Delet Message and return WRONG_KEYWORD
						response = SIM300DeleteMsg(id);
						return SIM300_WRONG_KEYWORD;
					}
				if(response == SIM300_FAIL)
					{	
						//SMS Received from invalid user. Delet message. This situation is same as message not received
						response = SIM300DeleteMsg(id);
						return SIM300_FAIL;
					}	
			}
		//Message not received
		return SIM300_FAIL;
	}				
						
				
int8_t	SIM300ReadMsg(uint8_t i, char *msg)
	{
		//Clear pending data in queue
		USARTFlushBuffer();
	
		//String for storing the command to be sent
		char cmd[16];
	
		//Build command string
		sprintf(cmd,"AT+CMGR=%d",i);
	
		//Send Command
		SIM300Cmd(cmd);
	
		uint8_t len=SIM300WaitForResponse(1000);
	
		if(len==0)
			return SIM300_TIMEOUT;
	
		sim300_buffer[len-1]='\0';
	
		//Check of SIM NOT Ready error
		if(strnicmp(sim300_buffer+2,"+CMS ERROR: 517",15)==0)
			{
				//SIM NOT Ready
				return SIM300_SIM_NOT_READY;
			}
	
		//MSG Slot Empty
		if(strnicmp(sim300_buffer+2,"OK",2)==0)
			{
				return SIM300_MSG_EMPTY;
			}
		
		//Now read the actual msg text
		len=SIM300WaitForResponse(1000);
	
		if(len==0)
			return SIM300_TIMEOUT;
	
		sim300_buffer[len-1]='\0';
		strcpy(msg,sim300_buffer+1);//+1 for removing trailing LF of prev line
	
		return SIM300_OK;
	}
	
int8_t SIM300ReadValidMsg(uint8_t i)
	{
		//Clear pending data in queue
		USARTFlushBuffer();
	
		//String for storing the command to be sent
		char cmd[16];
	
		//Build command string
		sprintf(cmd,"AT+CMGR=%d",i);
	
		//Send Command
		SIM300Cmd(cmd);
	
		uint8_t len=SIM300WaitForResponse(1000);
	
		if(len==0)
			return SIM300_TIMEOUT;
	
		sim300_buffer[len-1]='\0';
	
		//Check of SIM NOT Ready error
		if(strnicmp(sim300_buffer+2,"+CMS ERROR: 517",15)==0)
			{
				//SIM NOT Ready
				return SIM300_SIM_NOT_READY;
			}
	
		//MSG Slot Empty
		if(strnicmp(sim300_buffer+2,"OK",2)==0)
			{
				return SIM300_MSG_EMPTY;
			}
			
		//Search for X in string for message validity
		if(strrichr(sim300_buffer,'X') != NULL)
			{
				//Extract phone number
				char *start;
				start = strichr(sim300_buffer+10,',');
				//Two times ++ to skip , and ". Then start will be at +
				start++;
				start++;
				char i = 0;
				while(*start != '"')
					{
						MSG_number[i] = *start;
						start++;
						i++;
					}
				MSG_number[i] = '\0';
				//Now read the actual msg text
				len=SIM300WaitForResponse(1000);
	
				if(len==0)
					return SIM300_TIMEOUT;
	
				sim300_buffer[len-1]='\0';
				
				if(strnicmp(sim300_buffer+1,"EGL",3)==0)
					{
						return SIM300_OK;
					}
				else
					{
						return SIM300_WRONG_KEYWORD;
					}
			}
		else
			{
				//Message from invalid User
				return SIM300_FAIL;
			}			
	}	
int8_t	SIM300SendMsg(const char *num, const char *msg,uint8_t *msg_ref)
	{
		USARTFlushBuffer();
	
		char cmd[25];
	
		sprintf(cmd,"AT+CMGS= %s",num);
	
		cmd[8]=0x22; //"
	
		uint8_t n=strlen(cmd);
	
		cmd[n]=0x22; //"
		cmd[n+1]='\0';
	
		//Send Command
		SIM300Cmd(cmd);
	
		__delay_ms(100);
	
		USARTWriteString(msg);
	
		USARTWriteChar(0x1A);
	
		while(   USARTDataAvailable()<(strlen(msg)+5)   );
	
		//Remove Echo
		USARTReadBuffer(sim300_buffer,strlen(msg)+5);
	
		uint8_t len=SIM300WaitForResponse(6000);
	
		if(len==0)
			return SIM300_TIMEOUT;
	
		sim300_buffer[len-1]='\0';
	
		if(strnicmp(sim300_buffer+2,"CMGS:",5)==0)
			{
		
				*msg_ref=atoi(sim300_buffer+8);
		
				USARTFlushBuffer();
		
				return SIM300_OK;
			}
		else
			{
				USARTFlushBuffer();
				return SIM300_FAIL;	
			}		
	}
