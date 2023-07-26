/*
 * File:   mcp3424.c
 * Author: AMIEian
 *
 * Created on June 25, 2019, 6:24 PM
 */


#include "xc.h"
#include "mcc_generated_files/i2c1.h"
#include "mcp3424.h"
#include <math.h>

I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;

int8_t adr;
uint8_t res;
uint8_t mod;
uint8_t cfgbyte;
uint8_t PGA;
int8_t buffer[4];
int8_t x;
uint8_t requestedByte;

void MCPbegin(uint8_t adresse)
{
    adr=0x0D<<3;
    adr|=adresse;
}

uint8_t MCP_Read(uint8_t reg, uint8_t *pData)
{
    static I2C1_TRANSACTION_REQUEST_BLOCK trb[2];
 
    I2C1_MasterWriteTRBBuild(&trb[0], &reg, 1, adr);
    I2C1_MasterReadTRBBuild(&trb[1], pData, 1, adr);                
    I2C1_MasterTRBInsert(2, &trb[0], &status);
 
    while(status == I2C1_MESSAGE_PENDING);      // blocking
 
    return (status == I2C1_MESSAGE_COMPLETE); 
}

void MCPconfiguration(uint8_t channel,uint8_t resolution,uint8_t mode,uint8_t PG) 
{
    if(resolution!=12 && resolution!=14 && resolution!=16 && resolution!=18) 
        res=12;
    else 
        res=resolution;
    
    int8_t sps;
    
    if(resolution == 12)
        sps = 0;
    if(resolution == 14)
        sps = 1;
    if(resolution == 16)
        sps = 2;
    if(resolution == 18)
        sps = 3;

    cfgbyte = 0x80;
    
    channel = channel - 1;
    channel = channel << 5;
    
    cfgbyte = cfgbyte | channel;
    
    mode = mode << 4;
    cfgbyte = cfgbyte | mode;
    
    sps = sps << 2;
    cfgbyte = cfgbyte | sps;
    
    PG = PG - 1;
    cfgbyte = cfgbyte | PG;

   I2C1_MasterWrite(&cfgbyte, 1, adr, &status);
   
   while(status == I2C1_MESSAGE_PENDING);      // blocking
}

void MCPnewConversion()
{
   cfgbyte|=128;
    
   I2C1_MasterWrite(&cfgbyte, 1, adr, &status);
   
   while(status == I2C1_MESSAGE_PENDING);      // blocking
}

uint8_t MCPisConversionFinished()
{    
    if(res!=18)
    {
        requestedByte = 3;
    }
    else 
        requestedByte = 4;

    I2C1_MasterRead(&buffer[0], requestedByte, adr, &status);

    while(status == I2C1_MESSAGE_PENDING);      // blocking
    x = buffer[requestedByte-1];
    return (buffer[requestedByte-1] & 0b10000000);
}

int MCPmeasure()
{
    int resultat=0;

    while(MCPisConversionFinished()==1);

    switch (res)
        {

            case 12:

                resultat = (((long)buffer[0] & 0x0F) << 8) | ((long)buffer[1] & 0xFF); 

                resultat |= (long)(buffer[0] & 0x80) << 24;

                resultat = resultat*1000.0/PGA;

                break;

            case 14:

                resultat = (((long)buffer[0] & 0xBF) << 8) | ((long)buffer[1] & 0xFF); 

                resultat |= (long)(buffer[0] & 0x80) << 24;

                resultat = resultat*250/PGA;

                break;

            case 16:
                //resultat = (long)(buffer[0]);
                resultat = (buffer[0] << 8) | buffer[1];
                //resultat = (((long)buffer[0] & 0xFF) << 8) | ((long)buffer[1] & 0xFF);

                //resultat = resultat & 0x0000FFFF;
                
                //resultat = (((long)buffer[0] & 0x7F) << 8) | ((long)buffer[1] & 0xFF); 

                //resultat |= (long)(buffer[0] & 0x80) << 24;

                //resultat = resultat*62.5/PGA;

                break;

            case 18:

                resultat = (((long)buffer[0] & 0x01) << 16) | (((long)buffer[1] & 0xFF) <<8) | ((long)buffer[2] & 0xFF); 

                resultat |=((long)buffer[0] & 0x80) << 24;

                resultat = resultat*15.625/PGA;

                 break;
        }

    return resultat;

}