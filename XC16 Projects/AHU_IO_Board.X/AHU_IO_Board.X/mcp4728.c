/*
 * File:   mcp4728.c
 * Author: AMIEian
 *
 * Created on June 29, 2020, 6:11 PM
 */


#include "xc.h"
#include "mcp4728.h"
#include "mcc_generated_files/i2c2.h"

void setAnalogOutput(int16_t a, int16_t b, int16_t c, int16_t d)
{
    const uint8_t address = 0x61;
    I2C2_MESSAGE_STATUS status = I2C2_MESSAGE_PENDING;

    uint8_t data[8];
    
    data[0] = a >> 8;
    data[1] = a & 0x00FF;
    data[2] = b >> 8;
    data[3] = b & 0x00FF;
    data[4] = c >> 8;
    data[5] = c & 0x00FF;
    data[6] = d >> 8;
    data[7] = d & 0x00FF;
    
    status = I2C2_MESSAGE_PENDING;
    I2C2_MasterWrite(&data, 8, address, &status);
    while(status == I2C2_MESSAGE_PENDING);      // blocking
    if (status == I2C2_MESSAGE_FAIL)
        {
            //printf("Message Fail");
        }
}
