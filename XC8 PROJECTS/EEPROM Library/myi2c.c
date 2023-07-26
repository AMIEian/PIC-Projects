#include <xc.h>
//#include<htc.h>
//#include<pic18.h>
#include "myi2c.h"

void I2CInit(void)
    {
        TRISC3 = 1; 
        TRISC4 = 1;
        SSPSTAT |= 0x80; // Slew rate disabled 
        SSPCON1 = 0x28; 
        SSPADD = 0x28; /* 100Khz @ 4Mhz Fosc */
    }

void I2CStart()
    {
        SEN = 1; 
        while(SEN); 
    }

void I2CStop()
    {
        PEN = 1;
        while(PEN); 
    }

void I2CRestart()
    {
        RSEN = 1; 
        while(RSEN);
    }

void I2CAck()
    {
        ACKDT = 0;
        ACKEN = 1; 
        while(ACKEN); 
    }

void I2CNak()
    {
        ACKDT = 1; 
        ACKEN = 1;
        while(ACKEN); 
    }

void I2CWait()
    {
        while ((SSPCON2 & 0x1F ) || ( SSPSTAT & 0x04 ) );
    }

void I2CSend(unsigned char dat)
    {
        SSPBUF = dat;
        while(BF); 
        I2CWait();
    }

unsigned char I2CRead()
    {
        unsigned char temp;
        RCEN = 1; 
        while(!BF); 
        temp = SSPBUF; 
        I2CWait(); 
        return temp;
    }