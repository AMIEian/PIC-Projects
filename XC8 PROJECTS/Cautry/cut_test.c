#include <xc.h>
#include "usart.h"
#include "pins.h"
#pragma config OSC=HS, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF

#define _XTAL_FREQ 10000000 //The speed of your internal(or)external oscillator

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

char count = 0, ch, Send_Value = 0;
signed char Display_Values[14] = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 48, 48};

void main() 
   {
       TRISA = 0xFF;   //All input
       TRISB = 0xFF;   //All input
       TRISC = 0x80;    //All outputs, only RC7 input (Rx)
       TRISD = 0x00;   //All output 
       TRISE = 0x00;    //All output
       ADCON1 = 0x06;	// All Digital
       Plus_Minus_Sws = 0xFF;
       PORTC = OFF;
       /*
       for(count = 0; count <= 5; count++)
         {
            LED = 0xFF;
            MY_DELAY(1000);  //1SEC DELAY
            LED = 0x00;
            MY_DELAY(1000);  //1SEC DELAY
         }
       count = 0;  //Reset count for reuse
       */
       CloseUSART(); //turn off usart if was previously on
       
       USART_initialize(); //Set all registers related to serial communication
       /*
       for(count = 0; count <= 5; count++)
         {
            USARTWriteChar('F');
            MY_DELAY(1000);  //1SEC DELAY
            USARTWriteChar('A');
            MY_DELAY(1000);  //1SEC DELAY
         }
         
       count = 0;  //Reset count for reuse
       */
       Cut_Plus = 1;
       Cut_Minus = 1;
       
       INTCONbits.RBIE = 1; // ENable PORTB interrupts.
       
       while(1) //infinite loop
         {
            if(Send_Value == 1)
               {
                  //Send this value over serial
                  USARTWriteChar('A');
                  USARTWriteChar(Display_Values[2]);
                  USARTWriteChar('B');
                  USARTWriteChar(Display_Values[3]);
                  USARTWriteChar('C');
                  USARTWriteChar(Display_Values[8]);
                  Send_Value = 0;
               }
               
            switch(Command)
               {
                  case Increase:
                     Cut_Plus = 0;
                     MY_DELAY(175); //500ms delay to simulate key press action
                     Cut_Plus = 1;
                     Send_Value = 1;
                     Command = Stop;
                     break;
                     
                  case Decrease:
                     Cut_Minus = 0;
                     MY_DELAY(175); //500ms delay to simulate key press action
                     Cut_Minus = 1;
                     Send_Value = 1;
                     Command = Stop;
                     break;
                     
                  case FastIncrease:
                     if(Cut_Plus != 0)
                        Cut_Plus = 0;
                     break;
                     
                  case FastDecrease:
                     if(Cut_Minus != 0)
                        Cut_Minus = 0;
                     break;
                     
                  case Switch_Value:
                     if(Cut_Foot_Sw == 1)
                        {
                           USARTWriteChar('F');
                           USARTWriteChar('1');
                        }
                     if(Cut_Foot_Sw == 0)
                        {   
                           USARTWriteChar('R');
                           USARTWriteChar('1');
                        } 
                     Command = Stop;
                     break;
                     
                  case Stop:
                     //if(Plus_Minus_Sws != 0xFF)
                     Cut_Plus = 1;
                     Cut_Minus = 1;
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
    if(RBIE && RBIF)
      {
         char index = 0, value = 0;
         index = PORTB & 0xF0;   //Clear lower nibble
         index = index >> 4;  //4 right shifts to get actual index value
         if(index >= 8)
            index = index - 1;
         value = PORTB & 0x0F;   //Clear upper nibble
         value = value + 48;  //Convert this value to transmitable value
         Display_Values[index] = value;
         RBIF = 0;
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
