#include <xc.h>
#include "usart.h"
#pragma config OSC=HS, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF

#define _XTAL_FREQ 10000000 //The speed of your internal(or)external oscillator
#define LED PORTE

void USARTWriteChar(char ch);
void MY_DELAY(int ms);
void USART_initialize(void);

char rx;
char data;

typedef enum Android_Commands
		   {
			   Increase,
			   FastIncrease,
			   Stop,
			   Decrease,
			   FastDecrease,
			   Switch_Value
		   }Android_Command;
		   
Android_Command Command = Stop;

char ch, Send_Value = 0;
signed char digits[3] = {1, 2, 3};
char foot = 0;
int count = 0; 

void main() 
   {
       TRISA = 0x00;   //All output 
       TRISB = 0xFF;   //All input 
       TRISD = 0x00;   //All output 
       TRISE = 0x00;    //All output
       ADCON1 = 0x06;	// All Digital
       
       CloseUSART(); //turn off usart if was previously on
       
       USART_initialize();
       
       for(count = 0; count <= 5; count++)
         {
            LED = 0xFF;
            WriteUSART('Z');
            MY_DELAY(1000);  //1SEC DELAY
            LED = 0x00;
            MY_DELAY(1000);  //1SEC DELAY
         }
       count = 0;  //Reset count for reuse
       
       while(1) //infinite loop
         {
            _delay(1000);
            count++;
            if(count > 10000)
               {
                  if(foot == 1)
                     {
                        LED = 0xFF;
                     }
                  if(foot == 0)
                     {   
                        LED = 0x00;
                     }
                  foot = foot ^ 0x01;
                  count = 0;
               }
            
            switch(Command)
               {
                  case Increase:
                     digits[0] = digits[0] + 1;
                     if(digits[0] > 9)
                        {
                           digits[0] = 0;
                           digits[1] = digits[1] + 1;
                           if(digits[1] > 9)
                              {
                                 digits[1] = 0;
                                 digits[2] = digits[2] + 1;
                                 if(digits[2] > 9)
                                    {
                                       digits[2] = 9;
                                       digits[1] = 9;
                                       digits[0] = 9;
                                    }   
                              }
                        }
                     //Send this value over serial
                     USARTWriteChar('A');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[0] + 48;
                     USARTWriteChar(data);
                     USARTWriteChar('B');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[1] + 48;
                     USARTWriteChar(data);
                     USARTWriteChar('C');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[2] + 48;
                     USARTWriteChar(data);
                     MY_DELAY(10);  //10 MSEC DELAY
                     Command = Stop;
                     break;
                     
                  case Decrease:
                     digits[0] = digits[0] - 1;
                     if(digits[0] < 0)
                        {
                           digits[0] = 9;
                           digits[1] = digits[1] - 1;
                           if(digits[1] < 0)
                              {
                                 digits[1] = 9;
                                 digits[2] = digits[2] - 1;
                                 if(digits[2] < 0)
                                    {
                                       digits[2] = 0;
                                       digits[1] = 0;
                                       digits[0] = 0;
                                    }   
                              }
                        }
                     //Send this value over serial
                     USARTWriteChar('A');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[0] + 48;
                     USARTWriteChar(data);
                     USARTWriteChar('B');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[1] + 48;
                     USARTWriteChar(data);
                     USARTWriteChar('C');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[2] + 48;
                     USARTWriteChar(data);
                     MY_DELAY(10);  //10 MSEC DELAY
                     Command = Stop;
                     break;
                     
                  case FastIncrease:
                     digits[0] = digits[0] + 1;
                     if(digits[0] > 9)
                        {
                           digits[0] = 0;
                           digits[1] = digits[1] + 1;
                           if(digits[1] > 9)
                              {
                                 digits[1] = 0;
                                 digits[2] = digits[2] + 1;
                                 if(digits[2] > 9)
                                    {
                                       digits[2] = 9;
                                       digits[1] = 9;
                                       digits[0] = 9;
                                    }   
                              }
                        }
                     if(Send_Value == 1)
                        {
                           //Send this value over serial
                           USARTWriteChar('A');
                           //_delay(100000);  //10 MSEC DELAY
                           data = digits[0] + 48;
                           USARTWriteChar(data);
                           USARTWriteChar('B');
                           //_delay(100000);  //10 MSEC DELAY
                           data = digits[1] + 48;
                           USARTWriteChar(data);
                           USARTWriteChar('C');
                           //_delay(100000);  //10 MSEC DELAY
                           data = digits[2] + 48;
                           USARTWriteChar(data);
                           Send_Value = 0;
                        }   
                     MY_DELAY(500);  //500 MSEC DELAY
                     break;
                     
                  case FastDecrease:
                     digits[0] = digits[0] - 1;
                     if(digits[0] < 0)
                        {
                           digits[0] = 9;
                           digits[1] = digits[1] - 1;
                           if(digits[1] < 0)
                              {
                                 digits[1] = 9;
                                 digits[2] = digits[2] - 1;
                                 if(digits[2] < 0)
                                    {
                                       digits[2] = 0;
                                       digits[1] = 0;
                                       digits[0] = 0;
                                    }   
                              }
                        }
                     if(Send_Value == 1)
                        {
                           //Send this value over serial
                           USARTWriteChar('A');
                           //_delay(100000);  //10 MSEC DELAY
                           data = digits[0] + 48;
                           USARTWriteChar(data);
                           USARTWriteChar('B');
                           //_delay(100000);  //10 MSEC DELAY
                           data = digits[1] + 48;
                           USARTWriteChar(data);
                           USARTWriteChar('C');
                           //_delay(100000);  //10 MSEC DELAY
                           data = digits[2] + 48;
                           USARTWriteChar(data);
                           Send_Value = 0;
                        }
                     MY_DELAY(500);  //500 MSEC DELAY
                     break;
                     
                  case Switch_Value:
                     if(foot == 1)
                        {
                           USARTWriteChar('R');
                           USARTWriteChar('1');
                        }
                     if(foot == 0)
                        {   
                           USARTWriteChar('F');
                           USARTWriteChar('1');
                        } 
                     Command = Stop;
                     break;
                     
                  case Stop:
                     break;
                     
                  default:
                     break;
               }
         }
   }

void interrupt SerialRx()
{
    //check if the interrupt is caused by RX pin
    if(RCIE && RCIF)
      {
        rx = ReadUSART(); //read the byte from rx register
        
        switch(rx)
            {
               case '1':
                  Command = Increase;
                  break;
               case '2':
                  Command = FastIncrease;
                  break;
               case '3':
                  Command = Stop;
                  break;
               case '4':
                  Command = Decrease;
                  break;
               case '5':
                  Command = FastDecrease;
                  break;
               case '6':
                  Command = Switch_Value;
                  break;
               case '7':
                  Send_Value = 1;
                  break;
               default:
                  Command = Stop;
                  break;
            }
         RCIF = 0;
      }
}

void MY_DELAY(int ms)
   {
      while(ms > 0)
         {
            __delay_ms(1);
            ms--;
         }
      return;
   }
   
void USART_initialize()
   {
      //Configuration TX and RX pins
      TRISCbits.RC6 = 0; //TX output
      TRISCbits.RC7 = 1; //RX input

      //TXSTA: Transmit Status and Control Register
      TXSTAbits.SYNC = 0; //Asynchronous mode
      TXSTAbits.TX9 = 0; //8bit transmission
      TXSTAbits.BRGH = 1; //Set HIGH Baud rate
      TXSTAbits.TXEN = 1; //Enable transmitter
      
      //RCSTA: Receive Status and Control Register
      RCSTAbits.SPEN = 1; //Serial Port enabled
      RCSTAbits.RX9 = 0; //8bit reception
      RCSTAbits.CREN = 1; //Enables Receiver

      SPBRG = 64;           // Set to 19200 baud rate, 12Mhz, High Speed, BRG16
    
      // USART interrupts configuration
      INTCONbits.GIE  = 1; // ENABLE interrupts
      INTCONbits.PEIE = 1; // ENable peripheral interrupts.
      PIE1bits.RCIE   = 1; // ENABLE USART receive interrupt
    }

//This function sends a single given character on USART
void USARTWriteChar(char ch)
	{
  		while(!PIR1bits.TXIF);
  			TXREG=ch;
  	   MY_DELAY(10);  //10 MSEC DELAY
	}
