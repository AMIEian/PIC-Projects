/*
 * File:   sht3x.c
 * Author: AMIEian
 *
 * Created on 13 April, 2020, 6:41 PM
 */


#include "xc.h"
#include "sht3x.h"
#include "mcc_generated_files/i2c1.h"
#include "variables.h"

const uint8_t address = 0x44;
uint8_t commandBuffer[2] = {0x24, 0x0b};
I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;

uint8_t data[6];

float sht3x_temp;
float sht3x_humidity;

uint16_t TemperatureRaw = 0;
uint16_t RelHumidityRaw = 0;

void UpdateData()
    {
        int temp;
        //Send command for single short reading
        status = I2C1_MESSAGE_PENDING;
        I2C1_MasterWrite(&commandBuffer, 2, address, &status);
        while(status == I2C1_MESSAGE_PENDING);      // blocking
        if (status == I2C1_MESSAGE_FAIL)
        {
            //printf("Message Fail");
        }
        //Provide Delay for measurement
        for(temp=0;temp <10000;temp++)
        {
            /*
            for(temp=0;temp <10000;temp++)
            {
                
                for(temp=0;temp <10000;temp++)
                {
                }
                
            }
            */
        }
        
        //Read results
        status = I2C1_MESSAGE_PENDING;
        I2C1_MasterRead(&data[0], 6, address, &status);
        while(status == I2C1_MESSAGE_PENDING);      // blocking
        if (status == I2C1_MESSAGE_FAIL)
        {
            //printf("Message Fail");
        }
        /*
        printf("%d ", data[0]);
        printf("%d ", data[1]);
        printf("%d ", data[2]);
        printf("%d ", data[3]);
        printf("%d ", data[4]);
        printf("%d ", data[5]);
        */
        TemperatureRaw 	= (data[0]<<8)+(data[1]<<0);
        RelHumidityRaw 	= (data[3]<<8)+(data[4]<<0);
        /*
        printf("%d ", TemperatureRaw);
        printf("%d ", RelHumidityRaw);
        */
        sht3x_temp =	((float) TemperatureRaw) * 0.00267033 - 45;
        sht3x_humidity =	((float) RelHumidityRaw) * 0.0015259;
        
        counts[SA_Temp] = sht3x_temp * 10;
        counts[SA_Humidity] = sht3x_humidity * 10;
        /*
        printf("%f ", sht3x_temp);
        printf("%f ", sht3x_humidity);
        */
    }