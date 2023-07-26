/*
 * File:   mcp4922.c
 * Author: AMIEian
 *
 * Created on July 1, 2019, 7:19 PM
 */


#include "xc.h"
#include "mcp4922.h"
#include "mcc_generated_files/pin_manager.h"

uint16_t setChannelA(int val)
    {
        //Set channel A
        int16_t out = 0;
        uint16_t result = 0;
        out = 0x3000;   //Channel B, Unbuffered, Output Gain = 1, Active mode
        out = out | val;
        SPI1_Exchange16bit(out);
        //result = SPI1_Exchange16bit(out);
        return result;
    }

uint16_t setChannelB(int val)
    {
        //Set channel B
        int16_t out = 0;
        uint16_t result = 0;
        out = 0xB000;   //Channel B, Unbuffered, Output Gain = 1, Active mode
        out = out | val;
        SPI1_Exchange16bit(out);
        //result = SPI1_Exchange16bit(out);
        return result;
    }

void SPI1_Exchange16bit(int16_t data)
    {
        uint16_t intk = 0x8000, i;
        int16_t inti = data ;
        while(intk != 0)
            {
                if ( (inti & intk)==0 )
                    SDO_SetLow() ;
                else
                    SDO_SetHigh() ;
                i = 0 ;
                i = 0 ;
                i = 0 ;
                i = 0 ;
                i = 0 ;
                i = 0 ;
                i = 0 ;
                i = 0 ;
                SCL_SetHigh() ;
                i = 0 ;
                i = 0 ;
                i = 0 ;
                i = 0 ;
                i = 0 ;
                i = 0 ;
                i = 0 ;
                i = 0 ;
                SCL_SetLow() ;
                intk = intk >> 1 ;		
            }
    }