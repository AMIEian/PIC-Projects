/*
 * File:   mcp3424.c
 * Author: AMIEian
 *
 * Created on July 5, 2019, 3:31 PM
 */


#include "xc.h"
#include "mcp3424.h"
#include "mcc_generated_files/i2c1.h"

const uint8_t address = 0x68;
uint8_t configWord;
I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;

uint8_t buff[3];

void setMCPChannel(int8_t channelNo)
    {
        switch(channelNo)
            {
                case 1:
                    configWord = 0x88;
                    break;
                case 2:
                    configWord = 0xA8;
                    break;
                case 3:
                    configWord = 0xC8;
                    break;
                case 4:
                    configWord = 0xE8;
                    break;
                default :
                    configWord = 0x88;
            }
        status = I2C1_MESSAGE_PENDING;
        I2C1_MasterWrite(&configWord, 1, address, &status);
        while(status == I2C1_MESSAGE_PENDING);      // blocking
    }

int16_t readMCPChannel()
    {
        int16_t result = 0;
        status = I2C1_MESSAGE_PENDING;
        I2C1_MasterRead(&buff[0], 3, address, &status);
        while(status == I2C1_MESSAGE_PENDING);      // blocking

        result = (buff[0] << 8) | buff[1];
        return result;
    }

