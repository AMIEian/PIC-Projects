//Configuration Bit Value 3F39

//RB4 = TE
//RB5 = Lower Prob
//RB6 = Upper Prob

#include <xc.h>

#define TE RB4
#define Lower_Prob RB5
#define Upper_Prob RB6
#define Hi 1
#define Low 0
#define LP_in_UP_out 0x20	//Only RB5 (LP) is input and all other output 0010 0000
#define UP_in_LP_out 0x40	//Only RB6 (UP) is input and all other output 0100 0000
#define All_Output 0x00

void main(void)
	{
		PCON = 0x0B;	//Set internal oscillator frequency to 4 MHz.
		char LL = 0, UU = 0, i = 0;
		TRISB = All_Output;
		TE = Hi;	//Set TE hi to disable transmission
		Lower_Prob = Low;
		Upper_Prob = Low;
		while(1)
			{
				//Check the Lower Water Level
				TRISB = LP_in_UP_out;
				TE = Hi;
				Upper_Prob = Hi;
				_delay(1000000);  //1SEC DELAY
				if(Lower_Prob == Hi)
					{
						LL = 1;
					}
				else
					{
						LL = 0;
					}

				//Reset PORTB
				TRISB = All_Output;
				TE = Hi;	//Set TE hi to disable transmission
				Lower_Prob = Low;
				Upper_Prob = Low;
				_delay(1000000);  //1SEC DELAY

				//Check the Upper Water Level
				TRISB = UP_in_LP_out;
				TE = Hi;
				Lower_Prob = Hi;
				_delay(1000000);  //1SEC DELAY
				if(Upper_Prob == Hi)
					{
						UU = 1;
					}
				else
					{
						UU = 0;
					}

				//Reset PORTB
				TRISB = All_Output;
				TE = Hi;	//Set TE hi to disable transmission
				Lower_Prob = Low;
				Upper_Prob = Low;
				_delay(1000000);  //1SEC DELAY

				//Enable Transmission
				TRISB = All_Output;
				Lower_Prob = LL;	//Assign LL value to Data Pin of HT12D
				Upper_Prob = UU;	//Assign UU value to Data Pin of HT12D

				//Transmite the data
				TE = Low;	//Enable Transmissin by pulling TE down
				_delay(1000000);  //1SEC DELAY
				TE = Hi;	//Off the transmission by pulling TE up
				_delay(1000000);  //1SEC DELAY

				//Transmite the data once aganin
				TE = Low;	//Enable Transmissin by pulling TE down
				_delay(1000000);  //1SEC DELAY
				TE = Hi;	//Off the transmission by pulling TE up
				_delay(1000000);  //1SEC DELAY

				//Reset PORTB
				TRISB = All_Output;
				TE = Hi;	//Set TE hi to disable transmission
				Lower_Prob = Low;
				Upper_Prob = Low;
				_delay(1000000);  //1SEC DELAY
			
				//Wait for 15 Seconds for net reading
				for(i = 0; i <= 15; i++)
					{
						_delay(1000000);  //1SEC DELAY
					}
			}
	}	