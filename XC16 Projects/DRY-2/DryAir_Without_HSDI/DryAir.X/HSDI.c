/*
 * File:   HSDI.c
 * Author: AMIEian
 *
 * Created on August 4, 2019, 5:48 PM
 */


#include "xc.h"
#include "variables.h"
#include "leds.h"
#include "mcc_generated_files/pin_manager.h"

void checkHSDI()
{
    if(HSDI_1_GetValue() != 0)
        {
            counts[HSDI_1] = 1;
            DI0_LED = 1;
        }
    else
        {
            counts[HSDI_1] = 0;
            DI0_LED = 0;
        }
    
    if(HSDI_2_GetValue() != 0)
        {
            counts[HSDI_2] = 1;
            DI1_LED = 1;
        }
    else
        {
            counts[HSDI_2] = 0;
            DI1_LED = 0;
        }
    
    if(HSDI_3_GetValue() != 0)
        {
            counts[HSDI_3] = 1;
            DI2_LED = 1;
        }
    else
        {
            counts[HSDI_3] = 0;
            DI2_LED = 0;
        }
        
    if(HSDI_4_GetValue() != 0)
        {
            counts[HSDI_4] = 1;
            DI3_LED = 1;
        }
    else
        {
            counts[HSDI_4] = 0;
            DI3_LED = 0;
        }
}