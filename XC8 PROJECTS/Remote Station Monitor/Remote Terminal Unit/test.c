#include <xc.h>
#include <adc.h>
#include<math.h>
#include "usart_pic18.h"
#include "custom_char.h"
#include "lcd_hd44780_pic18.h"
#include "myeeprom.h"
#include "myrtc.h"
#include "myutils.h"
#include "packet.h"
#include "pins.h"
#include "rtu.h"
#include "communication.h"
#include "hsm20g.h"

#pragma config OSC=HS, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF

void main()
   {
      char i;
      unsigned int ADCResult, dec, points;
      double voltage;
      double integral;
      double fractional;
      unsigned int humidity;
      double temp;
      
      TRISA = 0x1F;
      USARTInit(9600);
      
      OpenADC( ADC_FOSC_16 & ADC_RIGHT_JUST & ADC_5ANA_0REF, ADC_CH0 & ADC_INT_OFF );
      _delay( 50 ); // Delay for 50TCY
      SetChanADC( ADC_CH0 );
      
      //---sample and convert----
      for(i=0;i<16;i++)
         {
            ConvertADC();
            while(BusyADC());
            ADCResult += (unsigned int) ReadADC();
         }
      ADCResult /= 16;
      voltage = (ADCResult*5.0)/1024; // convert ADC count into voltage
           
      //Temperature Calculation Formula
      temp = (5.26*pow(voltage,3))-(27.34*pow(voltage,2))+(68.87*voltage)-17.81;
      
      fractional = modf(temp, &integral);
      fractional = fractional * 100;
      dec = integral;
      points = fractional;
      
      USARTWriteInt(dec , 2);
      USARTWriteChar('.');
      USARTWriteInt(points , 2);
      
      USARTWriteChar('-');
      
      _delay( 50 ); // Delay for 50TCY
      SetChanADC( ADC_CH1 );
      
      //---sample and convert----
      for(i=0;i<16;i++)
         {
            ConvertADC();
            while(BusyADC());
            ADCResult += (unsigned int) ReadADC();
         }
      ADCResult /= 16;
      voltage = (ADCResult*5.0)/1024; // convert ADC count into voltage
      CloseADC(); //turn off ADC
      
      //Humidity Calculation Formula
      humidity = (3.71*pow(voltage,3))-(20.65*pow(voltage,2))+(64.81*voltage)-27.44;
      
      fractional = modf(humidity, &integral);
      fractional = fractional * 100;
      dec = integral;
      points = fractional;
      
      USARTWriteInt(dec , 2);
      USARTWriteChar('.');
      USARTWriteInt(points , 2);
      
      while(1);
   }   
