#include <xc.h>
#include "communication.h"
#include "usart_pic18.h"
#include "packet.h"
#include "rtu.h"
#include "pins.h"
#include "myeeprom.h"
#include "lcd_hd44780_pic18.h"

#define _XTAL_FREQ 100000000 //The speed of your internal(or)external oscillator

unsigned char Check_Busy_Line()
   {
      USARTFlushBuffer();
      unsigned int ms = 0;
      uint8_t n = 0;
      //Get responce
      while(n == 0 && ms < 2500)
         {
            //Get the amount of data waiting in USART queue
            n = USARTDataAvailable();
            ms++;
            __delay_ms(1);
         }
      if(n == 0)
         return LINE_FREE;
      return LINE_BUSY;
   }  
    
unsigned char Eco_Test()
   {
      uint8_t n = 0;
      unsigned int ts = 0;
      unsigned char re = 0;
      
      re = Check_Busy_Line();
      if(re = LINE_FREE)
         {
            LCDClear();
            LCDWriteString("LINE FREE");
            //Clear USART Buffer
            USARTFlushBuffer();
            
            //Send Own ID
            LED3 = On;
            __delay_ms(5);
            __delay_ms(5);
            USARTWriteChar(Source_ID);
            LED3 = Off;
            
            LCDClear();
            LCDWriteString("ECO SENT");
            
            //Get responce
            while(n == 0 && ts < 2000)
               {
                  //Get the amount of data waiting in USART queue
                  n = USARTDataAvailable();
                  ts++;
                  __delay_ms(1);
               }   
               
            //If we have some data. 
            if(n!=0)
               {
                  //Read it
                  LED4 = On;
                  unsigned char data=USARTReadData();
                  LED4 = Off;
                  if(data == Source_ID)
                  {
                     LCDClear();
                     LCDWriteString("ECO SUCCESSFUL ");
                     return ECO_SUCCESS;
                  }   
               }
         }
         
      LCDClear();
      LCDWriteString("ECO FAIL");      
      return ECO_FAIL;
   }   
   
unsigned char Eco_Replay()
   {
      uint8_t n = 0;
      unsigned char ts = 0;
      
      //Clear USART Buffer
      USARTFlushBuffer();
      
      LCDClear();
      LCDWriteString("WAITING FOR ECO ");
      
      //Get responce
      while(n == 0 && ts < 10000)
         {
            //Get the amount of data waiting in USART queue
            n = USARTDataAvailable();
            ts++;
            __delay_ms(1);
         }   
         
      //If we have some data. 
      if(n!=0)
         {
            //Read it
            LED4 = On;
            unsigned char data=USARTReadData();
            LED4 = Off;
            if(data == Destination_ID1 || data == Destination_ID2 || data == Master_ID)
               {
                  LED3 = On;
                  __delay_ms(5);
                  __delay_ms(5);
                  USARTWriteChar(data);   //Give ECO to sender
                  LED3 = Off;
                  __delay_ms(1);
                  
                  LCDClear();
                  LCDWriteString("ECO RECEIVED ");
                  return ECO_RECEIVED;
               }   
         }
         
      LCDClear();
      LCDWriteString("ECO NOT RECEIVED ");
      return ECO_NOT_RECEIVED;
   }  
    
unsigned char Send_Packet()
   {
      //Get Eco Test
      unsigned char result = 0;
      unsigned char count = 0, data = 0, n = 0;
      unsigned int ts = 0;
      
      result = Eco_Test();
      
      if(result == ECO_SUCCESS)
         {     
            //Eco test Successed. Send Paket to master
            //Send Packet over USART
            //USARTWriteString(PACKET);
            LCDClear();
            LCDWriteString("SENDING PACKET ");
            __delay_ms(1);
            count = 0;
            data = PACKET[0];
            while(data != END_CHAR)
               {
                  LED3 = On;
                  USARTWriteChar(data);
                  __delay_ms(5);
                  __delay_ms(5);
                  LED3 = Off;
                  count++;
                  data = PACKET[count];
               }   
            //Send End Char
            LED3 = On;
            USARTWriteChar(data);
            __delay_ms(5);
            __delay_ms(5);
            LED3 = Off;
            LCDClear();
            LCDWriteString("PACKET SENT");
	         //Get responce
            n = 0;
            ts = 0;
            //Clear USART Buffer
            USARTFlushBuffer();
            
            while(n == 0 && ts < 2000)
               {
                  //Get the amount of data waiting in USART queue
                  n = USARTDataAvailable();
                  ts++;
                  __delay_ms(1);
               }
      
            //Get the amount of data waiting in USART queue
            //uint8_t n= USARTDataAvailable();
      
            //If we have some data. 
            if(n!=0)
               {
                  //Read it
                  
                  LED4 = On;
                  result=USARTReadData();
                  LED4 = Off;
                  LCDClear();
                  LCDWriteString("PACKET DELIVERED");
                  return result;
               }
         } 
      return 0;        
   }            

unsigned char Receive_Packet()
   {
      unsigned char count = 0, result = 0;
      int msecs = 0;
      
      //Wait for eco. Send reply if eco received
      result = Eco_Replay();
      
      if(result == ECO_RECEIVED)
         {
            LCDClear();
            LCDWriteString("GOT AN ECO");
            //Clear USART Buffer to get packet
            USARTFlushBuffer();
      
            while(1)
               {                  
                  //Get the amount of data waiting in USART queue
                  uint8_t n= USARTDataAvailable();
      
                  //If we have some data. Add it to packet
                  if(n!=0)
                     {
                        msecs = 0;   //Data received. Make timer 0.
                        while(n > 0)
                           {
                              LED4 = On;
                              PACKET[count] = USARTReadData();
                              LED4 = Off;
                              LCDClear();
                              LCDWriteString("CHARACTER RECEIVED ");
                              if(PACKET[count] == END_CHAR)
                                 {
                                    //End of packet received. Check CRC
                                    result = Check_CRC();
                                    if(result == CRC_OK)
                                       {
                                          LED3 = On;
                                          __delay_ms(5);
                                          __delay_ms(5);
                                          USARTWriteChar(PACKET_DELIVERED);
                                          LED3 = Off;
                                          LED3 = On;
					                           __delay_ms(5);
                                          __delay_ms(5);
                                          USARTWriteChar(PACKET_DELIVERED);
                                          LED3 = Off;
                                          LCDClear();
                                          LCDWriteString("PACKET RECEIVED ");
                                          return PACKET_RECEIVED;
                                       } 
                                    LED3 = On;
                                    __delay_ms(5);
                                    __delay_ms(5);
                                    USARTWriteChar(PACKET_NOT_DELIVERED);
                                    LED3 = Off;
                                    LED3 = On;
				                        __delay_ms(5);
                                    __delay_ms(5);
                                    USARTWriteChar(PACKET_NOT_DELIVERED);
                                    LED3 = Off;
                                    LCDClear();
                                    LCDWriteString("WRONG PACKET RECEIVED ");
                                    return PACKET_FAIL;   
                                 } 
                              n--;
                              count++;
                           }        
                     }
                  else
                     {
                        __delay_ms(1); //Wait for 1 ms
                        msecs++;
                        if(msecs == 2000)
                           {
                              //No data received till 1 sec. Exit the loop
                              LCDClear();
                              LCDWriteString("CHARACTER TIMEOUT");
                              return PACKET_FAIL;
                           }     
                     }   
               }
         }
      LCDClear();
      LCDWriteString("PACKET TIMEOUT");
      return PACKET_FAIL;            
   }   
