/*
 * File:   AC_DI.c
 * Author: AMIEian
 *
 * Created on July 3, 2019, 5:57 PM
 */


#include "xc.h"
#include "DI.h"
#include "leds.h"
#include "mcc_generated_files/pin_manager.h"

int16_t acs[12];

void checkACDI()
    {        
        if(AC_DI_0_GetValue() == 0)
            {
                acs[0] = acs[0] << 1;
                acs[0] = acs[0] | 1;
            }
        
        if(AC_DI_1_GetValue() == 0)
            {
                acs[1] = acs[1] << 1;
                acs[1] = acs[1] | 1;
            }
        
        if(AC_DI_2_GetValue() == 0)
            {
                acs[2] = acs[2] << 1;
                acs[2] = acs[2] | 1;
            }
        
        if(AC_DI_3_GetValue() == 0)
            {
                acs[3] = acs[3] << 1;
                acs[3] = acs[3] | 1;
            }
        
        if(AC_DI_4_GetValue() == 0)
            {
                acs[4] = acs[4] << 1;
                acs[4] = acs[4] | 1;
            }
        
        if(AC_DI_5_GetValue() == 0)
            {
                acs[5] = acs[5] << 1;
                acs[5] = acs[5] | 1;
            }
        
        if(AC_DI_6_GetValue() == 0)
            {
                acs[6] = acs[6] << 1;
                acs[6] = acs[6] | 1;
            }
        
        if(AC_DI_7_GetValue() == 0)
            {
                acs[7] = acs[7] << 1;
                acs[7] = acs[7] | 1;
            }
        
        if(AC_DI_8_GetValue() == 0)
            {
                acs[8] = acs[8] << 1;
                acs[8] = acs[8] | 1;
            }
        
        if(AC_DI_9_GetValue() == 0)
            {
                acs[9] = acs[9] << 1;
                acs[9] = acs[9] | 1;
            }
        
        if(AC_DI_10_GetValue() == 0)
            {
                acs[10] = acs[10] << 1;
                acs[10] = acs[10] | 1;
            }
        
        if(AC_DI_11_GetValue() == 0)
            {
                acs[11] = acs[11] << 1;
                acs[11] = acs[11] | 1;
            }
    }

int16_t checkAC()
    {
        int16_t result = 0;
        int16_t res;
        
        res = acs[11] & 0x00FF;
        if(res == 0x00FF)
            {
                AC_DI11_LED = 1;
                result = result | 0x0800;
            }
        else
            AC_DI11_LED = 0;
        acs[11] = 0;
        
        res = acs[10] & 0x00FF;
        if(res == 0x00FF)
            {
                AC_DI10_LED = 1;
                result = result | 0x0400;
            }
        else
            AC_DI10_LED = 0;
        acs[10] = 0;
        
        res = acs[9] & 0x00FF;
        if(res == 0x00FF)
            {
                AC_DI9_LED = 1;
                result = result | 0x0200;
            }
        else
            AC_DI9_LED = 0;
        acs[9] = 0;
        
        res = acs[8] & 0x00FF;
        if(res == 0x00FF)
            {
                AC_DI8_LED = 1;
                result = result | 0x0100;
            }
        else
            AC_DI8_LED = 0;
        acs[8] = 0;
        
        res = acs[7] & 0x00FF;
        if(res == 0x00FF)
            {
                AC_DI7_LED = 1;
                result = result | 0x0080;
            }
        else
            AC_DI7_LED = 0;
        acs[7] = 0;
        
        res = acs[6] & 0x00FF;
        if(res == 0x00FF)
            {
                AC_DI6_LED = 1;
                result = result | 0x0040;
            }
        else
            AC_DI6_LED = 0;
        acs[6] = 0;
        
        res = acs[5] & 0x00FF;
        if(res == 0x00FF)
            {
                AC_DI5_LED = 1;
                result = result | 0x0020;
            }
        else
            AC_DI5_LED = 0;
        acs[5] = 0;
        
        res = acs[4] & 0x00FF;
        if(res == 0x00FF)
            {
                AC_DI4_LED = 1;
                result = result | 0x0010;
            }
        else
            AC_DI4_LED = 0;
        acs[4] = 0;
        
        res = acs[3] & 0x00FF;
        if(res == 0x00FF)
            {
                AC_DI3_LED = 1;
                result = result | 0x0008;
            }
        else
            AC_DI3_LED = 0;
        acs[3] = 0;
        
        res = acs[2] & 0x00FF;
        if(res == 0x00FF)
            {
                AC_DI2_LED = 1;
                result = result | 0x0004;
            }
        else
            AC_DI2_LED = 0;
        acs[2] = 0;
        
        res = acs[1] & 0x00FF;
        if(res == 0x00FF)
            {
                AC_DI1_LED = 1;
                result = result | 0x0002;
            }
        else
            AC_DI1_LED = 0;
        acs[1] = 0;
        
        res = acs[0] & 0x00FF;
        if(res == 0x00FF)
            {
                AC_DI0_LED = 1;
                result = result | 0x0001;
            }
        else
            AC_DI0_LED = 0;
        acs[0] = 0;
        
        return result;
    }