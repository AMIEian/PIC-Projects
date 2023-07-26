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
        temp = AI_INDEX + channel;
        counts[temp] = ADC1_ConversionResultGet();
        
        //Apply Calibrations
        counts[temp] = counts[temp] - zeroVals[temp];
        ratio = (float)counts[temp]/(float)fullVals[temp];
        counts[temp] = (int16_t)(ratio * ADC_MAX_COUNTS);
        
        //uint16_t count;
        //while(!ADC1_IsConversionComplete());
        //count = ADC1_ConversionResultBufferGet(readings);
    }