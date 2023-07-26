/*
 * File:   AO.c
 * Author: AMIEian
 *
 * Created on July 24, 2019, 7:36 PM
 */


#include "xc.h"
#include "AO.h"
#include "mcp4922.h"
#include "variables.h"

#include "mcc_generated_files/pin_manager.h"

void setAOs()
{
    uint16_t res;
    uint16_t outValue;
    uint16_t inValue;
    float temp;
    
    my_delay();
    //Set Dac1 channel A
    inValue = inputCounts[AO_INDEX + 0];
    temp = (float)inValue/(float)DAC_MAX_COUNTS;
    outValue = (int)(temp * fullVals[DAC_FULLVALS_INDEX + 0]);
    analogCounts[0] = outValue;
    DAC1_SetLow();
    res = setChannelA(outValue);
    DAC1_SetHigh();
    my_delay();
    //Set Dac1 channel B
    inValue = inputCounts[AO_INDEX + 1];
    temp = (float)inValue/(float)DAC_MAX_COUNTS;
    outValue = (int)(temp * fullVals[DAC_FULLVALS_INDEX + 1]);
    analogCounts[1] = outValue;
    DAC1_SetLow();
    res = setChannelB(outValue);
    DAC1_SetHigh();
    my_delay();
    
    //Set Dac2 channel A
    inValue = inputCounts[AO_INDEX + 2];
    temp = (float)inValue/(float)DAC_MAX_COUNTS;
    outValue = (int)(temp * fullVals[DAC_FULLVALS_INDEX + 2]);
    analogCounts[2] = outValue;
    DAC2_SetLow();
    res = setChannelA(outValue);
    DAC2_SetHigh();
    my_delay();
    //Set Dac2 channel B
    inValue = inputCounts[AO_INDEX + 3];
    temp = (float)inValue/(float)DAC_MAX_COUNTS;
    outValue = (int)(temp * fullVals[DAC_FULLVALS_INDEX + 3]);
    analogCounts[3] = outValue;
    DAC2_SetLow();
    res = setChannelB(outValue);
    DAC2_SetHigh();
    my_delay();

    //Set Dac3 channel A
    inValue = inputCounts[AO_INDEX + 4];
    temp = (float)inValue/(float)DAC_MAX_COUNTS;
    outValue = (int)(temp * fullVals[DAC_FULLVALS_INDEX + 4]);
    analogCounts[4] = outValue;
    DAC3_SetLow();
    res = setChannelA(outValue);
    DAC3_SetHigh();
    my_delay();
    //Set Dac3 channel B
    inValue = inputCounts[AO_INDEX + 5];
    temp = (float)inValue/(float)DAC_MAX_COUNTS;
    outValue = (int)(temp * fullVals[DAC_FULLVALS_INDEX + 5]);
    analogCounts[5] = outValue;
    DAC3_SetLow();
    res = setChannelB(outValue);
    DAC3_SetHigh();
    my_delay();
}

void my_delay()
{
    int16_t i;
    for(i = 0; i < 100; i++)
    {
        
    }
}