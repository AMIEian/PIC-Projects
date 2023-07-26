/*
 * File:   DI.c
 * Author: AMIEian
 *
 * Created on July 3, 2019, 4:59 PM
 */


#include "xc.h"
#include "DI.h"
#include "variables.h"
#include "mcc_generated_files/pin_manager.h"

void checkDI()
    {
        if(DI_0_GetValue() == 0)
            counts[AHU_On_Off] = 1;
        else
            counts[AHU_On_Off] = 0;
        
        if(DI_1_GetValue() == 0)
            counts[AHU_Trip] = 1;
        else
            counts[AHU_Trip] = 0;  
        
        if(DI_2_GetValue() == 0)
            counts[Filter_1] = 1;
        else
            counts[Filter_1] = 0;  
        
        if(DI_3_GetValue() == 0)
            counts[Filter_2] = 1;
        else
            counts[Filter_2] = 0;  
        
        if(DI_4_GetValue() == 0)
            counts[Fire_Input] = 1;
        else
            counts[Fire_Input] = 0;  
        
        if(DI_5_GetValue() == 0)
            counts[Fire_Supply] = 1;
        else
            counts[Fire_Supply] = 0; 
        
        if(DI_6_GetValue() == 0)
            counts[Fire_Return] = 1;
        else
            counts[Fire_Return] = 0; 
        
        if(DI_7_GetValue() == 0)
            counts[AHU_Door] = 1;
        else
            counts[AHU_Door] = 0; 
    }
