#include <xc.h>
#include "adc_pic16.h"
#include "adxl335.h"
#include "pins.h"

char Accident_Detect();
char Vib_Detect();

float Vib_Sensitivity = 20.0f;
float AccidentG = 1.99f;

void main()
   {
      char count;
      TRISB = 0xF0; //Upper input - Lower output
      
      //LED blinking
      for(count = 0; count < 5; count++)
         {
            LED = ON;
            _delay(1000000);
            LED = OFF;
            _delay(1000000);
         }
         
      ADCInit();
      
      while(1)
         {
            if(Accident_Detect() == 1)
               {
                  Accident_Out = ON;
                  //Remain Here until reset is low
                  while(Reset == LOW)
                     {
                        _delay(10);
                     }  
                  Accident_Out = OFF; 
               }
            if(Vib_Detect() == 1)
                  Vib_Out = ON;
            if(Reset == HIGH)
               {
                  _delay(5000);   //5 ms delay for debouncing
                  if(Reset == HIGH)
                     Vib_Out = OFF;
               }      
         }
   }         

char Accident_Detect()
   {
	   float zero_G = 512.0f;
	   float scale = 102.3f;

	   float x_G = (GetXAccl() - zero_G)/scale;
	   float y_G = (GetYAccl() - zero_G)/scale;
	   float z_G = (GetZAccl() - zero_G)/scale;
	
	   //If reading is negative, convert it to positive
	   if(x_G < 0)
		   x_G = x_G * -1;
	   if(y_G < 0)
		   y_G = y_G * -1;
	   if(z_G < 0)
		   z_G = z_G * -1;

	   if(x_G > AccidentG || y_G > AccidentG || z_G > AccidentG)
		   return 1;
	   else
		   return 0;
   } 
   
char Vib_Detect()
   {
      unsigned char X_Diff = 0;
	   unsigned char Y_Diff = 0;
	   unsigned char Z_Diff = 0;
	   int X = 0;
	   int Y = 0;
	   int Z = 0;
	   char readings = 0;
	   char counter = 0;
	   char looper = 1;
	   while(looper == 1 && counter < 5)
		   {
			   //This loop will take 10 readings for 50 mili sec and gets accumulated result of each step
			   for(readings = 0; readings < 10; readings++)
				   {
					   //Get analog readings
					   X = (int)GetXAccl();
					   Y = (int)GetYAccl();
					   Z = (int)GetZAccl();
					   //Wait for 5 ms and get new readings and find if there is any change
					   delay(5000);
					   X_Diff = X_Diff + ((int)GetXAccl() - X);
					   Y_Diff = Y_Diff + ((int)GetYAccl() - Y);
					   Z_Diff = Z_Diff + ((int)GetZAccl() - Z);
					   //Check for negative difference if it is convert it to positive.
					   if(X_Diff < 0)
						   X_Diff = X_Diff * -1;
					   if(Y_Diff < 0)
						   Y_Diff = Y_Diff * -1;
					   if(Z_Diff < 0)
						   Z_Diff = Z_Diff * -1;
				   }
			   if(X_Diff >= Vib_Sensitivity || Y_Diff >= Vib_Sensitivity || Z_Diff >= Vib_Sensitivity)
				   {
					   delay(5000);	//Delay 5 ms for next reading
					   counter++;
					   X_Diff = 0;
					   Y_Diff = 0;
					   Z_Diff = 0;
				   }
			   else
				   looper = 0;
		   }
	   return looper;
   }              