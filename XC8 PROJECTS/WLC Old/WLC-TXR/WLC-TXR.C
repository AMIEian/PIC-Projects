//Configuration Bit Value 3F39

//RB4 = TE
//RB5 = Lower Prob Data
//RB6 = Upper Prob Data
//RA0 = Lower Prob
//RA1 = Upper Prob

#include <xc.h>

#define TE RB4
#define Lower_Prob RA0
#define Upper_Prob RA1
#define Hi 1
#define Low 0
#define LP_in_UP_out 0x01	//Only RB5 (LP) is input and all other output 0000 0001
#define UP_in_LP_out 0x02	//Only RB6 (UP) is input and all other output 0000 0010
#define All_Output 0x00
#define UU_Data RB6
#define LL_Data RB5

void main(void)
	{
		PCON = 0x0B;	//Set internal oscillator frequency to 4 MHz.
		CMCON = 0x07;	//Disable analog functions on PORTA

		char LL = 0, UU = 0, i = 0;

		TRISB = All_Output;
		TE = Hi;	//Set TE hi to disable transmission
		UU_Data = Low;
		LL_Data = Low;

		TRISA = All_Output;
		Lower_Prob = Low;
		Upper_Prob = Low;

		while(1)
			{
				//Check the Lower Water Level
				TRISA = LP_in_UP_out;
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

				//Reset PORTA
				TRISA = All_Output;
				Lower_Prob = Low;
				Upper_Prob = Low;
				_delay(1000000);  //1SEC DELAY

				//Check the Upper Water Level
				TRISA = UP_in_LP_out;
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

				//Reset PORTA
				TRISA = All_Output;
				Lower_Prob = Low;
				Upper_Prob = Low;
				_delay(1000000);  //1SEC DELAY

				//Apply Data and Enable Transmission
				LL_Data = LL;	//Assign LL value to Data Pin of HT12E
				UU_Data = UU;	//Assign UU value to Data Pin of HT12E

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

				//Reset PORTA
				TRISA = All_Output;
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