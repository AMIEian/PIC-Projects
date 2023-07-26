/*
 * File:   DI.c
 * Author: AMIEian
 *
 * Created on July 3, 2019, 4:59 PM
 */


#include "xc.h"
#include "DI.h"
#include "leds.h"
#include "mcc_generated_files/pin_manager.h"

uint8_t checkDI()
    {
        uint8_t result = 0;
        
        if(DI_9_GetValue() != 0)
            {
                DI9_LED = 1;
                result = result | 0x01;
            }
        else
            DI9_LED = 0;
        
        if(DI_8_GetValue() != 0)
            {
                DI8_LED = 1;
                result = result | 0x02;
            }
        else
            DI8_LED = 0;
        
        if(DI_7_GetValue() != 0)
            {
                DI7_LED = 1;
                result = result | 0x04;
            }
        else
            DI7_LED = 0;
        
        if(DI_6_GetValue() != 0)
            {
                DI6_LED = 1;
                result = result | 0x08;
            }
        else
            DI6_LED = 0;
        
        if(DI_5_GetValue() != 0)
            {
                DI5_LED = 1;
                result = result | 0x10;
            }
        else
            DI5_LED = 0;
        
        if(DI_4_GetValue() != 0)
            {
                DI4_LED = 1;
                result = result | 0x20;
            }
        else
            DI4_LED = 0;
        
        return result;
    }
