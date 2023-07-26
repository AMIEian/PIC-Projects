/*
 * File:   RelayOut.c
 * Author: AMIEian
 *
 * Created on July 5, 2019, 2:24 PM
 */
#include "mcc_generated_files/mcc.h"
#include "RelayOut.h"
#include "leds.h"

volatile RELAY_OUTS RELAYS;

void SetRelaysOut(unsigned int value)
{
    RELEAY_OUT = value;
        
    _LATE0 = RELAYS.Relay0;
    _LATE1 = RELAYS.Relay1;
    _LATE2 = RELAYS.Relay2;
    _LATE3 = RELAYS.Relay3;
    _LATE4 = RELAYS.Relay4;
    _LATE5 = RELAYS.Relay5;
    _LATE6 = RELAYS.Relay6;
    _LATE7 = RELAYS.Relay7;
}

void SetRelays()
{ 
    _LATE0 = RELAYS.Relay0;
    _LATE1 = RELAYS.Relay1;
    _LATE2 = RELAYS.Relay2;
    _LATE3 = RELAYS.Relay3;
    _LATE4 = RELAYS.Relay4;
    _LATE5 = RELAYS.Relay5;
    _LATE6 = RELAYS.Relay6;
    _LATE7 = RELAYS.Relay7;
}

void SetROs(uint16_t value)
{
    uint16_t mask = 0x0001;
    uint16_t res;
    res = value & mask;
    if(res != 0)
    {
        RO0_SetHigh();
        RO0_OUT_LED = 1;
    }
    else
    {
        RO0_SetLow();
        RO0_OUT_LED = 0;
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO1_SetHigh();
        RO1_OUT_LED = 1;
    }
    else
    {
        RO1_SetLow();
        RO1_OUT_LED = 0;
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO2_SetHigh();
        RO2_OUT_LED = 1;
    }
    else
    {
        RO2_SetLow();
        RO2_OUT_LED = 0;
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO3_SetHigh();
        RO3_OUT_LED = 1;
    }
    else
    {
        RO3_SetLow();
        RO3_OUT_LED = 0;
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO4_SetHigh();
        RO4_OUT_LED = 1;
    }
    else
    {
        RO4_SetLow();
        RO4_OUT_LED = 0;
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO5_SetHigh();
        RO5_OUT_LED = 1;
    }
    else
    {
        RO5_SetLow();
        RO5_OUT_LED = 0;
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO6_SetHigh();
        RO6_OUT_LED = 1;
    }
    else
    {
        RO6_SetLow();
        RO6_OUT_LED = 0;
    }
    
    mask = mask << 1;
    res = value & mask;
    if(res != 0)
    {
        RO7_SetHigh();
        RO7_OUT_LED = 1;
    }
    else
    {
        RO7_SetLow();
        RO7_OUT_LED = 0;
    }
}