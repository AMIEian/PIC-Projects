/*
 * File:   sht3x.c
 * Author: AMIEian
 *
 * Created on 13 April, 2020, 6:41 PM
 */

#define P_MIN -125
#define P_MAX 125

#include "xc.h"
#include "sm93x.h"
#include "mcc_generated_files/i2c1.h"
#include "mcc_generated_files/i2c2.h"
#include "variables.h"
#include <math.h>
#include <assert.h>

/*
void UpdateSn93xData()
    {
        int temp;
        //Send command for single short reading
        status = I2C1_MESSAGE_PENDING;
        I2C1_MasterWrite(&commandBuffer, 1, address, &status);
        while(status == I2C1_MESSAGE_PENDING);      // blocking
        if (status == I2C1_MESSAGE_FAIL)
        {
            //printf("Message Fail");
        }
        //Provide Delay for measurement
        for(temp=0;temp <10000;temp++)
        {
            
        }
        
        //Read results
        status = I2C1_MESSAGE_PENDING;
        I2C1_MasterRead(&data[0], 6, address, &status);
        while(status == I2C1_MESSAGE_PENDING);      // blocking
        if (status == I2C1_MESSAGE_FAIL)
        {
            
        }
        
        TempRaw = (data[1]<<8)+(data[0]<<0);
        PressureRaw = (data[3]<<8)+(data[2]<<0);
    }
*/

void UpdateFine()
    {
        const uint8_t address = 0x6C;
        uint8_t commandBuffer[1] = {0x2E};
        I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;

        uint8_t data[6];

        float temp_reading;
        float pressure_reading;

        uint16_t TempRaw = 0;
        uint16_t PressureRaw = 0;
        int temp;
        
        //Send command for single short reading
        status = I2C1_MESSAGE_PENDING;
        I2C1_MasterWrite(&commandBuffer, 1, address, &status);
        while(status == I2C1_MESSAGE_PENDING);      // blocking
        if (status == I2C1_MESSAGE_FAIL)
        {
            
        }
        //Provide Delay for measurement
        for(temp=0;temp <10000;temp++)
        {
            
        }
        
        //Read results
        status = I2C1_MESSAGE_PENDING;
        I2C1_MasterRead(&data[0], 6, address, &status);
        while(status == I2C1_MESSAGE_PENDING);      // blocking
        if (status == I2C1_MESSAGE_FAIL)
        {
            
        }
        
        PressureRaw = (data[3]<<8) + (data[2]<<0);
        
        float p_pc;
        p_pc = (float)( 100 / (pow(2,16) - 1) ) * (float)(PressureRaw);
        p_pc = p_pc + (float)(100 * pow(2,16)) / (float)(2 * (pow(2,16) - 1));
        // the datasheet calculation of p_p appears to be a mistake. -P_MIN instead of +. 
        float p_p;
        p_p = ( (float)(P_MIN-P_MAX)/80 * p_pc ) - (float)(P_MIN - (P_MIN-P_MAX)/8);
        
        counts[Fine_Filter] = p_p * 10;
    }

void UpdateHepa()
    {
        const uint8_t address = 0x6C;
        uint8_t commandBuffer[1] = {0x2E};
        I2C2_MESSAGE_STATUS status2 = I2C1_MESSAGE_PENDING;

        uint8_t data[6];

        float temp_reading;
        float pressure_reading;

        uint16_t TempRaw = 0;
        uint16_t PressureRaw = 0;
        int temp;
        
        //Send command for single short reading
        status2 = I2C2_MESSAGE_PENDING;
        I2C2_MasterWrite(&commandBuffer, 1, address, &status2);
        while(status2 == I2C2_MESSAGE_PENDING);      // blocking
        if (status2 == I2C2_MESSAGE_FAIL)
        {
            
        }
        //Provide Delay for measurement
        for(temp=0;temp <10000;temp++)
        {
            
        }
        
        //Read results
        status2 = I2C2_MESSAGE_PENDING;
        I2C2_MasterRead(&data[0], 6, address, &status2);
        while(status2 == I2C2_MESSAGE_PENDING);      // blocking
        if (status2 == I2C2_MESSAGE_FAIL)
        {
            
        }
        
        PressureRaw = (data[3]<<8) + (data[2]<<0);
        
        float p_pc;
        p_pc = (float)( 100 / (pow(2,16) - 1) ) * (float)(PressureRaw);
        p_pc = p_pc + (float)(100 * pow(2,16)) / (float)(2 * (pow(2,16) - 1));
        // the datasheet calculation of p_p appears to be a mistake. -P_MIN instead of +. 
        float p_p;
        p_p = ( (float)(P_MIN-P_MAX)/80 * p_pc ) - (float)(P_MIN - (P_MIN-P_MAX)/8);
        
        counts[HEPA_Filter] = p_p * 10;
    }