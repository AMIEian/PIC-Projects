/*
 * File:   RTD.c
 * Author: AMIEian
 *
 * Created on July 6, 2019, 6:00 PM
 */


#include "xc.h"
#include "AI.h"
#include "variables.h"
#include "mcc_generated_files/adc1.h"
#include "mcc_generated_files/pin_manager.h"

float getpt100temperature(float resistance)
    {
        float te = -50 ;
        int8_t i = 0 ;
        int8_t j = 0 ;
        float const Pt100[] =
            {
                80.31, 82.29, 84.27, 86.25, 88.22, 90.19, 92.16, 94.12, 96.09, 98.04,
                100.0, 101.95, 103.9, 105.85, 107.79, 109.73, 111.67, 113.61, 115.54, 117.47,
                119.4, 121.32, 123.24, 125.16, 127.07, 128.98, 130.89, 132.8, 134.7, 136.6,
                138.5, 140.39, 142.29, 157.31, 175.84, 195.84 
            } ;
        if(resistance > Pt100[0] )
            {
                while(250 > te)
                    {
                        j = (te < 110) ? 5 : (te > 110) ? 50 : 40 ;
                        if(resistance < Pt100 [++i] )
                            return te + ( (resistance - Pt100[i-1] ) * j / (Pt100[i]-Pt100[i-1] ) ) ;
                        te += j;
                    } ;
            }
        return te;
    }

void getRTDReading(uint8_t rtd)
    {
        int i;
        float temp;
        float res;
        float ratio;
        switch(rtd)
        {
            case 0:
                ADC1_ChannelSelect(ADC1_RTD0);
                break;
            case 1:
                ADC1_ChannelSelect(ADC1_RTD1);
                break;
            case 2:
                ADC1_ChannelSelect(ADC1_RTD2);
                break;
            default :
                ADC1_ChannelSelect(ADC1_RTD0);
                break;
        }
        
        ADC1_Start();
        //Provide Delay
        for(i=0;i <1000;i++)
        {
        }
        ADC1_Stop();
        while(!ADC1_IsConversionComplete())
        {
            ADC1_Tasks();   
        }
        i = RTD_INDEX + rtd;
        counts[i] = ADC1_ConversionResultGet();
        
        // y = 18.784x + 54.035
        // x = (y - 54.035)/18.784
        
        temp = counts[i] - 54.035;
        temp = (float)(temp/18.784);
        
        counts[i] = temp * 10;

        //Apply Calibrations
        /*
        counts[i] = counts[i] - 261;
        temp = counts[i];
        ratio = temp/3427.5;
        res = ratio * 2000;
        
        if(counts[i] > 261)
            counts[i] = counts[i] - 261;
        else
            counts[i] = 0;
        
        if(counts[i] > 43)
            counts[i] = counts[i] - 43;
        else
            counts[i] = 0;
        
        temp = counts[i];
        res = (float)(temp/45.70);
        res = res + 100;
        temp = getpt100temperature(res);
        //temp = getpt100temperature(175.84);
        counts[i] = temp * 10;
        */
        //Apply Calibration
        counts[i] = counts[i] - zeroVals[i];
        ratio = (float)counts[i]/(float)fullVals[i];
        counts[i] = (int16_t)(ratio * RTD_MAX_COUNTS);
    }
