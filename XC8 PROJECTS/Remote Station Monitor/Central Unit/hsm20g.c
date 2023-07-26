#include "hsm20g.h"
#include <math.h>
#include <adc.h>

void get_current_readings()
   {
      char i;
      unsigned int ADCResult = 0, dec, points;
      float voltage1, voltage2, voltage3, voltage4;
      
      TRISA = 0x1F;
      
      OpenADC( ADC_FOSC_16 & ADC_RIGHT_JUST & ADC_5ANA_0REF, ADC_CH0 & ADC_INT_OFF );
      
      //Get A0 - Temp1 reading
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
      voltage1 = (ADCResult*5.0)/1024; // convert ADC count into voltage
      Temp1 = voltage_to_temp(voltage1);
      
      //Get A1 - Hum1 reading
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
      voltage2 = (ADCResult*5.0)/1024; // convert ADC count into voltage
      Hum1 = voltage_to_hum(voltage2);
      
      //Get A2 - Temp2 reading
      _delay( 50 ); // Delay for 50TCY
      SetChanADC( ADC_CH2 );
      //---sample and convert----
      for(i=0;i<16;i++)
         {
            ConvertADC();
            while(BusyADC());
            ADCResult += (unsigned int) ReadADC();
         }
      ADCResult /= 16;
      voltage3 = (ADCResult*5.0)/1024; // convert ADC count into voltage
      Temp2 = voltage_to_temp(voltage3);
      
      //Get A3 - Hum2 reading
      _delay( 50 ); // Delay for 50TCY
      SetChanADC( ADC_CH3 );
      //---sample and convert----
      for(i=0;i<16;i++)
         {
            ConvertADC();
            while(BusyADC());
            ADCResult += (unsigned int) ReadADC();
         }
      ADCResult /= 16;
      voltage4 = (ADCResult*5.0)/1024; // convert ADC count into voltage
      Hum2 = voltage_to_hum(voltage4);
      
      CloseADC(); //turn off ADC
   }   

unsigned int voltage_to_temp(float voltage)
   {
      unsigned char decimals, points;
      unsigned int temperature;
      double temp;
      double integral;
      double fractional;
      
      //Temperature Calculation Formula
      temp = (5.26*pow(voltage,3))-(27.34*pow(voltage,2))+(68.87*voltage)-17.81;
      
      fractional = modf(temp, &integral);
      fractional = fractional * 100;
      decimals = integral;
      points = fractional;
      
      temperature = 0x0000;
      temperature = temperature + decimals;
      temperature = temperature << 8;
      temperature = temperature + points;
      
      return temperature;
   }   

unsigned int voltage_to_hum(float voltage)
   {
      unsigned int humidity;
      unsigned char decimals, points;
      double temp;
      double integral;
      double fractional;
      
      //Humidity Calculation Formula
      temp = (3.71*pow(voltage,3))-(20.65*pow(voltage,2))+(64.81*voltage)-27.44;
      
      fractional = modf(temp, &integral);
      fractional = fractional * 100;
      decimals = integral;
      points = fractional;
      
      humidity = 0x0000;
      humidity = humidity + decimals;
      humidity = humidity << 8;
      humidity = humidity + points;
      
      return humidity;
   }   
