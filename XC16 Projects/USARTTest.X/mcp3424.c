/*
 * File:   mcp3424.c
 * Author: AMIEian
 *
 * Created on June 25, 2019, 6:24 PM
 */


#include "xc.h"
#include "mcc_generated_files/i2c.h"
#include "mcp3424.h"
#include <math.h>

I2C_MESSAGE_STATUS status = I2C_MESSAGE_PENDING;

uint8_t adr;
uint8_t res;
uint8_t mod;
uint8_t cfgbyte;
uint8_t PGA;
uint8_t buffer[4];

void MCPbegin(uint8_t adresse)
{
    adr=0b1101<<3;
    adr|=adresse;
    I2C_Initialize();
}

uint8_t MCP_Read(uint8_t reg, uint8_t *pData)
{
    static I2C_TRANSACTION_REQUEST_BLOCK trb[2];
 
    I2C_MasterWriteTRBBuild(&trb[0], &reg, 1, adr);
    I2C_MasterReadTRBBuild(&trb[1], pData, 1, adr);                
    I2C_MasterTRBInsert(2, &trb[0], &status);
 
    while(status == I2C_MESSAGE_PENDING);      // blocking
 
    return (status == I2C_MESSAGE_COMPLETE); 
}

void MCPconfiguration(uint8_t channel,uint8_t resolution,uint8_t mode,uint8_t PG) 
{
    if(resolution!=12 && resolution!=14 && resolution!=16 && resolution!=18) 
        res=12;
    else 
        res=resolution;

   PGA=PG;
   mod=mode;

   cfgbyte=0;
   cfgbyte |= ((channel-1) & 0x3) << 5;
   cfgbyte |= (mode & 0x1) << 4;
   cfgbyte |= ((int)((res-12)/2) & 0x3) << 2;
   cfgbyte |= (((int)(logf(PGA)/logf(2))) & 0x3);

   cfgbyte = 0xd8;
   I2C_MasterWrite(&cfgbyte, 1, adr, &status);
   
   while(status == I2C_MESSAGE_PENDING);      // blocking
}

void MCPnewConversion()
{
   cfgbyte|=128;
    
   I2C_MasterWrite(&cfgbyte, 1, adr, &status);
   
   while(status == I2C_MESSAGE_PENDING);      // blocking
}

uint8_t MCPisConversionFinished()
{
    uint8_t requestedByte;

    if(res!=18)
    {
        requestedByte = 3;
    }
    else 
        requestedByte = 4;

    I2C_MasterRead(&buffer[0], requestedByte, adr, &status);

    while(status == I2C_MESSAGE_PENDING);      // blocking
    
    return (buffer[requestedByte-1] & 0b10000000);
}

long MCPmeasure()
{
    long resultat=0;

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
                
                resultat = (((long)buffer[0] & 0xFF) << 8) | ((long)buffer[1] & 0xFF);

                resultat = resultat & 0x0000FFFF;
                
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