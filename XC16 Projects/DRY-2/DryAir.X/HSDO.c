/*
 * File:   HSDO.c
 * Author: AMIEian
 *
 * Created on August 5, 2019, 5:19 PM
 */


#include "xc.h"
#include "HSDO.h"
#include "variables.h"

#include "mcc_generated_files/oc1.h"
#include "mcc_generated_files/oc2.h"
#include "mcc_generated_files/oc3.h"
#include "mcc_generated_files/oc4.h"
#include "leds.h"

void setHSDOs()
{
    uint16_t time;
    uint16_t frequency;
    double freq;
    
    if(inputCounts[HSDO_1] >= 1000 && inputCounts[HSDO_1] <= 10000)
    {
        frequency = inputCounts[HSDO_1];
        freq = (double)1/(double)frequency;
        time = freq * 1000000;
        time = time/2;
        if(frequency >= 5000)
            time = time - 1;
        OC1_Stop();
        OC1_PrimaryValueSet(time);
        OC1_SecondaryValueSet(time);
        OC1_Start();
        DO0_LED = 1;
    }
    else
    {
        OC1_Stop();
        DO0_LED = 0;
    }
    
    if(inputCounts[HSDO_2] >= 1000 && inputCounts[HSDO_2] <= 10000)
    {
        frequency = inputCounts[HSDO_2];
        freq = (double)1/(double)frequency;
        time = freq * 1000000;
        time = time/2;
        if(frequency > 5000)
            time = time - 1;
        OC2_Stop();
        OC2_PrimaryValueSet(time);
        OC2_SecondaryValueSet(time);
        OC2_Start();
        DO1_LED = 1;
    }
    else
    {
        OC2_Stop();
        DO1_LED = 0;
    }
    
    if(inputCounts[HSDO_3] >= 1000 && inputCounts[HSDO_3] <= 10000)
    {
        frequency = inputCounts[HSDO_3];
        freq = (double)1/(double)frequency;
        time = freq * 1000000;
        time = time/2;
        if(frequency > 5000)
            time = time - 1;
        OC3_Stop();
        OC3_PrimaryValueSet(time);
        OC3_SecondaryValueSet(time);
        OC3_Start();
        DO2_LED = 1;
    }
    else
    {
        OC3_Stop();
        DO2_LED = 0;
    }
    
    if(inputCounts[HSDO_4] >= 1000 && inputCounts[HSDO_4] <= 10000)
    {
        frequency = inputCounts[HSDO_4];
        freq = (double)1/(double)frequency;
        time = freq * 1000000;
        time = time/2;
        if(frequency > 5000)
            time = time - 1;
        OC4_Stop();
        OC4_PrimaryValueSet(time);
        OC4_SecondaryValueSet(time);
        OC4_Start();
        DO3_LED = 1;
    }
    else
    {
        OC4_Stop();
        DO3_LED = 0;
    }
}
