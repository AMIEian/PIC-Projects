/*
 * File:   RelayOut.c
 * Author: AMIEian
 *
 * Created on July 5, 2019, 2:24 PM
 */
#include "mcc_generated_files/mcc.h"
#include "RelayOut.h"
#include "variables.h"

void SetROs()
{
    LATE = inputCounts[RO_INDEX];
    /*
    uint16_t value = inputCounts[RO_INDEX];
    uint16_t mask = 0x0001;
    uint16_t res;
    res = value & mask;
    if(res != 0)
    {
        RO0_SetHigh();
    }
    else
    {
        RO0_SetLow();
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO1_SetHigh();
    }
    else
    {
        RO1_SetLow();
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO2_SetHigh();
    }
    else
    {
        RO2_SetLow();
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO3_SetHigh();
    }
    else
    {
        RO3_SetLow();
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO4_SetHigh();
    }
    else
    {
        RO4_SetLow();
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO5_SetHigh();
    }
    else
    {
        RO5_SetLow();
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO6_SetHigh();
    }
    else
    {
        RO6_SetLow();
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO7_SetHigh();
    }
    else
    {
        RO7_SetLow();
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO8_SetHigh();
    }
    else
    {
        RO8_SetLow();
    }
    */
}