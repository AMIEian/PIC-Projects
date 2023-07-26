// CONFIG
#pragma config FOSC = XT        // Oscillator Selection bits (XT oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config CP = OFF         // FLASH Program Memory Code Protection bits (Code protection off)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low Voltage In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EE Memory Code Protection (Code Protection off)
#pragma config WRT = OFF        // FLASH Program Memory Write Enable (Unprotected program memory may not be written to by EECON control)

#include <xc.h>
#include "usart_pic16.h"

#define _XTAL_FREQ 4000000

#define LED RC5
#define On 1
#define Off 0
#define Water_Sen RA5
#define Phase_1 RC0
#define Phase_2 RC1
#define Phase_3 RC2
#define Start RC3
#define Stop RC4

//Function declarations
void start();
void stop();
void sendStatus();
char phase_check();

//Motor flags
unsigned char MOTOR_FLAG = 0, LP_FLAG = 0;

void main(void)
	{
		TRISA = 0xFE;			//Pin 1, 2, 3, 4 & 5 are inputs 0 output
        TRISB = 0x00;			//Pin 0 is input & all others are output
        TRISC = 0x87;			//Pin 0,1,2 are inputs & 3 - 4 - 5 are outputs 1000 0111
        ADCON1 = 0x06;			// All Digital
		char count = 0;	//General loop counter
		
		//LED blinking for crystal check
		for(count = 0; count <= 4; count++)
			{
				LED = On;
				_delay(1000000);  //1SEC DELAY
				LED = Off;
				_delay(1000000);  //1SEC DELAY
			}	
			
		//Initiate USART with baud rate 9600 and interrupt	
		USARTInit(1200);

		while(1)
			{
				//If motor is on
				if(MOTOR_FLAG == 1)
					{
						//Check water level and phase. Disable interrupts while this checking is going on
						di();
						if(phase_check() == 1)
                            {
                                //Check level & phase flag if it is 0 then motor was off due to Power failure Start it again
                                if(LP_FLAG == 0)
                                    {
                                        start();
                                        sendStatus();
                                        LP_FLAG = 1;
                                    }
                            }
                        //If level or Phase is not ok then stop the motor & set it's flag to 0
                        else
                            {
                                //Level or Power is fail check that the motor was running or not if it was running stop it now
                                if(LP_FLAG == 1)
                                    {
                                        stop();
                                        sendStatus();
                                        LP_FLAG = 0;
                                    }
                            }
                        //Checking is over. Enable Interrupts only if CALL_FLAG is not set
                        ei();
                    }
                //Check new data       
                if(USARTDataAvailable() > 0)
                   {
                        //We have some data
                        //Read it
                        char data = USARTReadData();
                        if(data == '#')
                            sendStatus();
                        else if(data == 'C')
                            MOTOR_FLAG = 1;
                        else if(data == 'B')
                            {
                                stop();
                                MOTOR_FLAG = 0;       
                                LP_FLAG = 0;
                                sendStatus();
                            }
                   }			              		
            }
    }

void __interrupt () my_isr_routine (void)
    {
        if (RCIE && RCIF) 
            {
                USARTHandleRxInt();
                return;
            }
    }

void sendStatus()
  {
    char motorData = 0;
    if(MOTOR_FLAG == 1)     
      motorData = motorData | 0x01;
    if(phase_check() == 1)
      motorData = motorData | 0x02;
    USARTWriteChar(motorData);
  }

// It Starts the motor
void start()
   {
       // PORTC 3 = START
       _delay(1000000);  //1SEC DELAY
       Start = On;
       _delay(10000000);  //10SEC DELAY
       Start = Off;
       LED = On;	//Glow On Off lamp
       return;
   }

// It Stops the motor
void stop()
   {
      // PORTC 4 = STOP
      _delay(1000000);  //1SEC DELAY
      Stop = On;
      _delay(10000000);  //10SEC DELAY
      Stop = Off;
      LED = Off;	//Off the on off lamp
      return;
   }
   
//This checks the phases & return 1 if all phases are OK else return 0
char phase_check()
   {
      // PORTC 0, 1, 2 = PHASE
      if( Phase_1 == On && Phase_2 == On && Phase_3 == On )
         {
            //All phases are Ok
            return 1;
         }
      else
         {
            //One of the 3 or all the phases are off
            return 0;
         }
   }