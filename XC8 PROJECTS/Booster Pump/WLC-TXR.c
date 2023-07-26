// PIC16F628A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = INTOSCIO  // Oscillator Selection bits (INTOSC oscillator: I/O function on RA6/OSC2/CLKOUT pin, I/O function on RA7/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = OFF      // RA5/MCLR/VPP Pin Function Select bit (RA5/MCLR/VPP pin function is digital input, MCLR internally tied to VDD)
#pragma config BOREN = OFF      // Brown-out Detect Enable bit (BOD disabled)
#pragma config LVP = OFF        // Low-Voltage Programming Enable bit (RB4/PGM pin has digital I/O function, HV on MCLR must be used for programming)
#pragma config CPD = ON         // Data EE Memory Code Protection bit (Data memory code-protected)
#pragma config CP = ON          // Flash Program Memory Code Protection bit (0000h to 07FFh code-protected)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

#define Hi 1
#define Low 0
#define Common_in_UP_out 0x04	//Only RB5 (LP) is input and all other output 0000 0001
#define Common_in_LP_out 0x04	//Only RB6 (UP) is input and all other output 0000 0010
#define All_Output 0x00

#define Lower_Prob RA0
#define Upper_Prob RA1
#define Common_Prob RA2
#define Motor_LED RB1
#define U_LED RB2
#define L_LED RB3
#define Right_Volve RB4
#define Left_Volve RB5
#define Motor RB6

void main(void)
	{
		PCON = 0x0B;	//Set internal oscillator frequency to 4 MHz.
		CMCON = 0x07;	//Disable analog functions on PORTA

		char UL = Low, UU = Low, i = 0;

		TRISB = All_Output;
		Right_Volve = Low;	//Set TE hi to disable transmission
		Left_Volve = Low;
		Motor = Low;

		TRISA = All_Output;
        Common_Prob = Low;
		Lower_Prob = Low;
		Upper_Prob = Low;
		
		for(i = 0; i <= 5; i++)
		{
   		   U_LED = Hi;
   		   L_LED = Hi;
   		   _delay(1000000);
   		   U_LED = Low;
   		   L_LED = Low;
   		   _delay(1000000);
   		}   

		while(1)
			{
				//Check the Lower Water Level
				TRISA = Common_in_UP_out;
				Upper_Prob = Hi;
				_delay(1000000);  //1SEC DELAY
				if(Common_Prob == Hi)
					{
						UL = Hi;
					}
				else
					{
						UL = Low;
					}

				//Reset PORTA
				TRISA = All_Output;
				Lower_Prob = Low;
				Upper_Prob = Low;
				_delay(1000000);  //1SEC DELAY

				//Check the Upper Water Level
				TRISA = Common_in_LP_out;
				Lower_Prob = Hi;
				_delay(1000000);  //1SEC DELAY
				if(Common_Prob == Hi)
					{
						UU = Hi;
					}
				else
					{
						UU = Low;
					}

				//Reset PORTA
				TRISA = All_Output;
				Lower_Prob = Low;
				Upper_Prob = Low;
				_delay(1000000);  //1SEC DELAY

				//One of probs in water
				if(UU == Hi)
					{
						U_LED = Hi;
                        Right_Volve = Hi;
					}	
                else
                    {
                        U_LED = Low;
                        Right_Volve = Low;
                    }
                
                if(UL == Hi)
					{
						L_LED = Hi;
                        Left_Volve = Hi;
					}	
                else
                    {
                        L_LED = Low;
                        Left_Volve = Low;
                    }
				
				//Motor On/Off
				if(UU == Hi || UL == Hi)
					{
                        for(i = 0; i <= 30; i++)
                            {
                                _delay(1000000);  //1SEC DELAY
                            }
                        Motor_LED = Hi;
                        Motor = Hi;
					}	
				else
                    {
                        Motor_LED = Low;
                        Motor = Low;
                    }
			
				//Wait for 15 Seconds for net reading
				for(i = 0; i <= 15; i++)
					{
						_delay(1000000);  //1SEC DELAY
					}
			}
	}	