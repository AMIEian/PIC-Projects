#include <xc.h>
#include "usart.h"
#pragma config OSC=XT, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF

#define _XTAL_FREQ 10000000 //The speed of your internal(or)external oscillator
#define LED PORTE

void interrupt SerialRxPinInterrupt();
void MY_DELAY(int ms);
void USART_initialize(void);

unsigned char UART1Config = 0, baud = 0, baudconfig = 0;
unsigned char MsgFromPIC[] = "\r\nYou typed :";
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

char ch;
char value = 0;
char count = 0, foot = 0;

void main() 
   {
       TRISA = 0x00;   //All output 
       TRISB = 0xFF;   //All input 
       TRISD = 0x00;   //All output 
       TRISE = 0x00;    //All output
       ADCON1 = 0x06;	// All Digital
       
       for(count = 0; count <= 5; count++)
         {
            LED = 0xFF;
            MY_DELAY(1000);  //1SEC DELAY
            LED = 0x00;
            MY_DELAY(1000);  //1SEC DELAY
         }
       count = 0;  //Reset count for reuse

       CloseUSART(); //turn off usart if was previously on
     
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
                     value = value + 1;
                     if(value > 9)
                        value = 9;
                     //Send this value over serial
                     WriteUSART('A');
                     //_delay(100000);  //10 MSEC DELAY
                     data = value + 48;
                     WriteUSART(data);
                     MY_DELAY(10000);  //10 MSEC DELAY
                     Command = Stop;
                     break;
                     
                  case Decrease:
                     value = value - 1;
                     if(value < 0)
                        value = 0;
                     //Send this value over serial
                     WriteUSART('A');
                     //_delay(100000);  //10 MSEC DELAY
                     data = value + 48;
                     WriteUSART(data);
                     MY_DELAY(10000);  //10 MSEC DELAY
                     Command = Stop;
                     break;
                     
                  case FastIncrease:
                     value = value + 1;
                     if(value > 9)
                        value = 9;
                     //Send this value over serial
                     WriteUSART('A');
                     //_delay(100000);  //10 MSEC DELAY
                     data = value + 48;
                     WriteUSART(data);
                     MY_DELAY(500000);  //500 MSEC DELAY
                     break;
                     
                  case FastDecrease:
                     value = value - 1;
                     if(value < 0)
                        value = 0;
                     //Send this value over serial
                     WriteUSART('A');
                     //_delay(100000);  //10 MSEC DELAY
                     data = value + 48;
                     WriteUSART(data);
                     MY_DELAY(500000);  //500 MSEC DELAY
                     break;
                     
                  case Switch_Value:
                     if(foot == 1)
                        {
                           WriteUSART('R');
                           WriteUSART('1');
                        }
                     if(foot == 0)
                        {   
                           WriteUSART('F');
                           WriteUSART('1');
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

void interrupt SerialRxPinInterrupt()
{
    //check if the interrupt is caused by RX pin
    if(RCIE && RCIF == 1)
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
               default:
                  Command = Stop;
                  break;
            }
                 
        return;
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
   
void USART_initialize(void){

    //Configuration TX and RX pins
    TRISCbits.RC6 = 0; //TX output
    TRISCbits.RC7 = 1; //RX input

    //TXSTA: Transmit Status and Control Register
    TXSTAbits.SYNC = 0; //Asynchronous mode
    TXSTAbits.TX9 = 0; //8bit transmission
    TXSTAbits.BRGH = 0; //Set HIGH Baud rate
    TXSTAbits.TXEN = 1; //Enable transmitter
    //TXSTAbits.SENDB = 0; //Disable break

    //RCSTA: Receive Status and Control Register
    RCSTAbits.SPEN = 1; //Serial Port enabled
    RCSTAbits.RX9 = 0; //8bit reception
    RCSTAbits.CREN = 1; //Enables Receiver

    SPBRG = 15;           // Set to 19200 baud rate, 12Mhz, High Speed, BRG16
    
    // USART interrupts configuration
    //RCONbits.IPEN   = 1; // ENABLE interrupt priority
    INTCONbits.GIE  = 1; // ENABLE interrupts
    INTCONbits.PEIE = 1; // ENable peripheral interrupts.
    PIE1bits.RCIE   = 1; // ENABLE USART receive interrupt
    //PIE1bits.TXIE   = 0; // disable USART TX interrupt

    }
