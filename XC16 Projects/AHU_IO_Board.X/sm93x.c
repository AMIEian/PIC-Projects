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
        int16_t PressureRaw = 0;
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
            //printf("Message Fail 2");
        }
        
        //printf("%d ", data[0]);
        //printf("%d ", data[1]);
        //printf("%d ", data[2]);
        //printf("%d ", data[3]);
        //printf("%d ", data[4]);
        //printf("%d ", data[5]);
        
        PressureRaw = (data[3]<<8) + (data[2]<<0);
        if(PressureRaw < 0)
            PressureRaw = 0;
        
        float p_p;
        p_p = (float)PressureRaw / 32767.0f * 250.0f;
        
        //PressureRaw = PressureRaw * -1;
        //printf("%f ", p_p);
        //printf("\n");
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
        int16_t PressureRaw = 0;
        int temp;
        
        //Send command for single short reading
        status2 = I2C2_MESSAGE_PENDING;
        I2C2_MasterWrite(&commandBuffer, 1, address, &status2);
        while(status2 == I2C2_MESSAGE_PENDING);      // blocking
        if (status2 == I2C2_MESSAGE_FAIL)
        {
            //printf("Message Fail");
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
            //printf("Message Fail 2");
        }
        
        PressureRaw = (data[3]<<8) + (data[2]<<0);
        if(PressureRaw < 0)
            PressureRaw = 0;
        
        float p_p;
        p_p = (float)PressureRaw / 32767.0f * 250.0f;
        
        counts[HEPA_Filter] = p_p * 10;
        //PressureRaw = PressureRaw * -1;
        //printf("%f ", p_p);
        //printf("\n");
        //printf("\n");
    } 