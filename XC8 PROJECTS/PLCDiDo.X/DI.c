/*
 * File:   DI.c
 * Author: AMIEian
 *
 * Created on July 3, 2019, 4:59 PM
 */


#include "xc.h"
#include "DI.h"
#include "mcc_generated_files/pin_manager.h"

unsigned int checkDI()
    {
        unsigned int result = 0;
        
        if(DI_0_GetValue() == 0)
            {
                result = result | 0x0001;
            }
        
        if(DI_1_GetValue() == 0)
            {
                result = result | 0x0002;
            }
        
        if(DI_2_GetValue() == 0)
            {
                result = result | 0x0004;
            }
        
        if(DI_3_GetValue() == 0)
            {
                result = result | 0x0008;
            }
        
        if(DI_4_GetValue() == 0)
            {
                result = result | 0x0010;
            }
        
        if(DI_5_GetValue() == 0)
            {
                result = result | 0x0020;
            }
        
        if(DI_6_GetValue() == 0)
            {
                result = result | 0x0040;
            }
        
        if(DI_7_GetValue() == 0)
            {
                result = result | 0x0080;
            }
        
        if(DI_8_GetValue() == 0)
            {
                result = result | 0x0100;
            }
        
        if(DI_9_GetValue() == 0)
            {
                result = result | 0x0200;
            }
        
        if(DI_10_GetValue() == 0)
            {
                result = result | 0x0400;
            }
        
        if(DI_11_GetValue() == 0)
            {
                result = result | 0x0800;
            }
        
        return result;
    }