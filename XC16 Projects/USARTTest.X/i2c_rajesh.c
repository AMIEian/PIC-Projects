/*
 * File:   i2c_rajesh.c
 * Author: AMIEian
 *
 * Created on June 26, 2019, 6:39 PM
 */


#include "xc.h"
#include "i2c_rajesh.h"
#include "mcc_generated_files/pin_manager.h"
#include <stdint.h>
#include <inttypes.h>

void fun_nop(void)
    {
        int i;
        for(i = 0; i < 16; i++)
        {
            asm("nop");
        }
    }

void start_i2c(void)
    {
        fun_nop();					
        SDA_SetDigitalOutput(); //btrisdaa = 0 ;
        fun_nop();					
        SDA_SetHigh();  //pdaa = 1 ;
        fun_nop();					
        SCL_SetHigh();  //pclka = 1 ;
        fun_nop();					
        SDA_SetLow();  //pdaa = 0 ;
        fun_nop();					
        SCL_SetLow();  //pclka = 0 ;
        fun_nop();
    }

void stop_i2c(void)
    {
        fun_nop();					
        SDA_SetDigitalOutput(); //btrisdaa = 0 ;
        fun_nop();					
        SDA_SetLow();  //pdaa = 0 ;
        fun_nop();					
        SCL_SetHigh();  //pclka = 1 ;
        fun_nop();					
        SDA_SetHigh();  //pdaa = 1 ;
        fun_nop();					
        SCL_SetLow();  //pclka = 0 ;
        fun_nop();
    }

void write_byte_i2c(char data)
    {
        uint8_t j;
        int8_t i;
        fun_nop();					
        SDA_SetDigitalOutput(); //btrisdaa = 0 ;
        fun_nop();					
        j = 0x80;
        i = data;
        while(j)
            {
                fun_nop();					
                if(i & j)
                    SDA_SetHigh();  //pdaa = 1 ;
                else
                    SDA_SetLow();  //pdaa = 0 ;
                fun_nop();					
                SCL_SetHigh();  //pclka = 1 ;
                fun_nop();					
                SCL_SetLow();  //pclka = 0 ;
                fun_nop();					
                j = j >> 1;		
            }
        SDA_SetDigitalInput(); //btrisdaa = 1 ;
        fun_nop();					
        SCL_SetHigh();  //pclka = 1 ;
        fun_nop();					
        if(SDA_GetValue() == 1)
            i = 1;
        else
            i = 0;
        fun_nop();					
        SCL_SetLow();  //pclka = 0 ;
        fun_nop();
    }

char read_byte_i2c(void)
    {
        uint8_t j;
        char i;
        
        fun_nop();					
        SDA_SetDigitalInput(); //btrisdaa = 1 ;
        fun_nop();					
        i = 0;
        for(j = 0; j<8; ++j)
            {
                SCL_SetHigh();  //pclka = 1 ;
                fun_nop();					
                i = i << 1;		
                if(SDA_GetValue() == 1)
                    i = i | 1;
                fun_nop();					
                SCL_SetLow();  //pclka = 0 ;
                fun_nop();					
            }
        return i;
    }

void ack_i2c(void)
    {
        fun_nop();					
        SDA_SetDigitalOutput(); //btrisdaa = 0 ;
        fun_nop();					
        SDA_SetLow();  //pdaa = 0 ;
        fun_nop();					
        SCL_SetHigh();  //pclka = 1 ;
        fun_nop();					
        SCL_SetLow();  //pclka = 0 ;
        fun_nop();	
    }

void no_ack_i2c(void)
    {
        fun_nop();					
        SDA_SetDigitalOutput(); //btrisdaa = 0 ;
        fun_nop() ;					
        SDA_SetHigh();  //pdaa = 1 ;
        fun_nop() ;					
        SCL_SetHigh();  //pclka = 1 ;
        fun_nop() ;					
        SCL_SetLow();  //pclka = 0 ;
        fun_nop() ;
    }