//This file contains eeprom related fuctions

#ifndef MYI2C_H_
#define MYI2C_H_

void I2CInit();
void I2CStart();
void I2CStop();
void I2CRestart();
void I2CAck();
void I2CNak();
void I2CWait();
void I2CSend(unsigned char dat);
unsigned char I2CRead();

#endif
