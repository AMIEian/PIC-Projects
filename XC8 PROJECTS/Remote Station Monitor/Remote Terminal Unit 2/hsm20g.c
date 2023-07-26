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
      t1 = voltage_to_temp(voltage1);
      Temp1 = float_to_int(t1);
      
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
      h1 = voltage_to_hum(voltage2);
      Hum1 = float_to_int(h1);
      
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
      t2 = voltage_to_temp(voltage3);
      Temp2 = float_to_int(t2);
      
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
      h2 = voltage_to_hum(voltage4);
      Hum2 = float_to_int(h2);
      
      CloseADC(); //turn off ADC
   }   
int float_to_int(double value)
   {
      unsigned char decimals, points;
      unsigned int int_value;
      double integral;
      double fractional;
      
      
      fractional = modf(value, &integral);
      fractional = fractional * 100;
      decimals = integral;
      points = fractional;
      
      int_value = 0x0000;
      int_value = int_value + decimals;
      int_value = int_value << 8;
      int_value = int_value + points;
      
      return int_value;
   }   
double voltage_to_temp(float voltage)
   {
      double temp;
      //Temperature Calculation Formula
      temp = (5.26*pow(voltage,3))-(27.34*pow(voltage,2))+(68.87*voltage)-17.81;
      return temp;
   }   

double voltage_to_hum(float voltage)
   {
      double temp;
      //Humidity Calculation Formula
      temp = (3.71*pow(voltage,3))-(20.65*pow(voltage,2))+(64.81*voltage)-27.44;
      return temp;
   }   
