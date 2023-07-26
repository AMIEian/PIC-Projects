/* 
 * File:   I2Clib.h
 * Author: David McCurley
 *
 * Created on September 12, 2013, 6:48 PM
 */

#ifndef I2CLIB_H
#define	I2CLIB_H

#include <stdint.h>
#include <stdbool.h>

//--------------------Constants--------------------
//Used for I2C1_M_RcvByte()
#define I2C_M_ACK	0
#define I2C_M_NACK	1

//Return values.  Errors must be negative.
#define I2C_OK				0		//Success
#define I2C_ACK				0		//ACK, same as OK
#define I2C_Err_Hardware	-1		//Hardware error with I2C bus, inspect PCB
#define I2C_Err_SCL_low		-2		//Clock line stuck low - HW problem on PCB, or I2C slave holding line low
#define I2C_Err_SDA_low		-3		//Data line stuck low
#define I2C_Err_BCL			-4		//Bus collision detected during master operation. Reset I2C interface.
#define I2C_Err_IWCOL		-5		//Attempted to write to I2CxTRN while byte still qued for sending
#define I2C_Err_NAK			-6		//Slave refused/ignored byte sent by master - could re-send byte
#define I2C_Err_TBF			-7		//Transmit buffer full - a byte already qued for sending. Indicates programming error.
#define I2C_Err_Overflow	-9		//Received new byte without processing previous one
#define I2C_Err_RcvTimeout	-10		//Timeout while waiting for byte from slave
#define I2C_Err_BusDirty	-100	//Need to reset I2C bus before high level routines will work
#define I2C_Err_TimeoutHW	-101	//Timeout, unknown reason
#define I2C_Err_CommFail	-102	//General communications failure
#define I2C_Err_BadAddr		-103	//Bad device address or device stopped responding


//--------------------Structs--------------------
//--------------------Variables--------------------
extern uint16_t I2Cflags;
//--------------------Functions--------------------
extern void I2C_HWini(void);
extern void I2C_ModuleStart(void);
extern void I2C_SWini(void);
extern int  I2C1_M_BusReset(void);
extern void I2C1_M_ClearErrors(void);
extern int  I2C1_M_Poll(int8_t);
extern int  I2C1_M_Read(int8_t, int8_t, int, char *);
extern int  I2C1_M_ReadByte(int8_t);
extern int  I2C1_M_RecoverBus(void);
extern int  I2C1_M_Restart(void);
extern int  I2C1_M_Start(void);
extern int  I2C1_M_Stop(void);
extern int  I2C1_M_Write(int8_t, int8_t, int, char *);
extern int  I2C1_M_WriteByte(char);

//-------------------Macros-------------------
#define SetI2C1BusDirty	I2Cflags |=  0x0001
#define ClrI2C1BusDirty	I2Cflags &= ~0x0001
#define IsI2C1BusDirty	(I2Cflags & 0x0001)

#endif	/* I2CLIB_H */

