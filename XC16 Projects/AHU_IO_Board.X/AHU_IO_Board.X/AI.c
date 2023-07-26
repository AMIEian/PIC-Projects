/*
 * File:   AI.c
 * Author: AMIEian
 *
 * Created on July 5, 2019, 7:37 PM
 */

#include "xc.h"
#include "AI.h"
#include "variables.h"
#include "mcc_generated_files/adc1.h"
#include "mcc_generated_files/pin_manager.h"

void getAnalogReading(int8_t channel)
    {
        int temp;
        float ratio;
        int16_t result;
        
        switch(channel)
        {
            case 0:
                ADC1_ChannelSelect(ADC1_AN_IN0);
                break;
            case 1:
                ADC1_ChannelSelect(ADC1_AN_IN1);
                break;
            case 2:
                ADC1_ChannelSelect(ADC1_AN_IN2);
                break;
            case 3:
                ADC1_ChannelSelect(ADC1_AN_IN3);
                break;
            case 4:
                ADC1_ChannelSelect(ADC1_AN_IN4);
                break;
            case 5:
                ADC1_ChannelSelect(ADC1_AN_IN5);
                break;
        }
        ADC1_Start();
        //Provide Delay
        for(temp=0;temp <1000;temp++)
        {
        }
        ADC1_Stop();
        while(!ADC1_IsConversionComplete())
        {
            ADC1_Tasks();   
        }
        result = ADC1_ConversionResultGet();
        
        //Add current reading at the end of array (Queue)
        addToAnalogArray(channel, result);
        
        temp = AI_INDEX + channel;
        counts[temp] = getAverageReading(channel);
        
        //Apply Calibrations
        counts[temp] = counts[temp] - zeroVals[temp];
        ratio = (float)counts[temp]/(float)fullVals[temp];
        counts[temp] = (int16_t)(ratio * ADC_MAX_COUNTS);
        
        //Convert Analog reading (ADC Value) to actual value (temp, humidity etc) of entity
        counts[temp] = getRealValue(channel, counts[temp]);
        //uint16_t count;
        //while(!ADC1_IsConversionComplete());
        //count = ADC1_ConversionResultBufferGet(readings);
    }

void addToAnalogArray(int8_t channel, int16_t reading)
    {
        int temp = 0;
        for(temp = 0; temp < 49; temp++)
            Analog_Readings[channel][temp] = Analog_Readings[channel][temp+1];
        Analog_Readings[channel][temp] = reading;
    }

int16_t getAverageReading(int8_t channel)
    {
        int channel_readings;
        int temp;
        long sum = 0;
        int16_t result;
        //Decide number of last readings to be taken for getting an average from damping time of entity
        switch(channel)
        {
            case 0:
                channel_readings = inputCounts[RA_Temp_AI_Damp_Time] * 10;
                break;
            case 1:
                channel_readings = inputCounts[RA_Humidity_AI_Damp_Time] * 10;
                break;
            case 2:
                channel_readings = inputCounts[VFD_AI_Damp_Time] * 10;
                break;
            case 3:
                channel_readings = inputCounts[Air_Velocity_AI_Damp_Time] * 10;
                break;
            case 4:
                channel_readings = inputCounts[CO2_AI_Dampening_Time] * 10;
                break;
            case 5:
                channel_readings = inputCounts[SPARE_AI_Damp_Time] * 10;
                break;
        }
        for(temp = 49; temp >= (50 - channel_readings); temp--)
            sum = sum + Analog_Readings[channel][temp];
        result = sum/channel_readings;
        return result;
    }

int16_t getRealValue(int8_t channel, int16_t val)
{
    int16_t result;
    switch(channel)
        {
            case 0:
                result = map(val, 0, ADC_MAX_COUNTS, inputCounts[RA_Temp_Lower], inputCounts[RA_Temp_Higher]) * 10;
                break;
            case 1:
                result = map(val, 0, ADC_MAX_COUNTS, inputCounts[RA_Humidity_Lower], inputCounts[RA_Humidity_Higher]) * 10;
                break;
            case 2:
                result = map(val, 0, ADC_MAX_COUNTS, inputCounts[VFD_Lower], inputCounts[VFD_Higher]) * 10;
                break;
            case 3:
                result = map(val, 0, ADC_MAX_COUNTS, inputCounts[Air_Velocity_Lower], inputCounts[Air_Velocity_Higher]) * 10;
                break;
            case 4:
                result = map(val, 0, ADC_MAX_COUNTS, inputCounts[CO2_Lower], inputCounts[CO2_Higher]) * 10;
                break;
            case 5:
                result = map(val, 0, ADC_MAX_COUNTS, inputCounts[SPARE_AI_Lower], inputCounts[SPARE_AI_Higher]) * 10;
                break;
        }
    return result;
}

float map(int16_t input, int16_t input_start, int16_t input_end, int16_t output_start, int16_t output_end)
    {
      //return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
      double slope;
      float output;
      slope = 1.0 * (output_end - output_start) / (input_end - input_start);
      output = output_start + slope * (input - input_start);
    }