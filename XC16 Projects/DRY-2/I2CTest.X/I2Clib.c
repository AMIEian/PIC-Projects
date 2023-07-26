//Filename:		I2Clib.c
//Author:		David McCurley
//Version:		1.1
//Modified:		2013 Sept 17
//IDE:			MPLabX v1.85
//Compiler:		XC16, v1.11
//Processor:	PIC24FJ256GA110
//Notes:		Currently implements only Master functions (no slave)
//
//The registers I2C1CON and I2C1STAT are specific to this chip family.
//These are blocking functions, meaning they will not return until the operation is complete.
//All functions have error trapping and timeouts, including some timeouts that probably can't happen.
//
//The PIC24FJ256GA110 supports three I2C devices.  This library only implements the first one, but
// it is trivial to implement on other I2C ports.  Just swap out I2C1CON -> I2C2CON, etc.  Also,
// alternate pins are available for I2C2, called "ASCL2,ASDA2".
//
//Usage:
//Init with I2C_SWini(), then I2C_HWini()
//Call I2C1_M_Poll(DevAddr) to clear the bus and verify device is responding
//Then call I2C1_M_Read() and I2C1_M_Write().
//Periodically call I2C1_M_Poll() to verify device is still working.

#define FRC 16000000UL
#define FCY 8000000UL
#define _XTAL_FREQ  16000000UL

#include <xc.h>
#include "I2Clib.h"
#include <libpic30.h>

//-------------------Variables-------------------
uint16_t I2Cflags;
//-------------------Variables-------------------

//----------------Function Prototypes-------------------
void I2C_HWini(void);
void I2C_ModuleStart(void);
void I2C_SWini(void);
int  I2C1_M_BusReset(void);
void I2C1_M_ClearErrors(void);
int  I2C1_M_Poll(int8_t);
int  I2C1_M_Read(int8_t, int8_t, int, char *);
int  I2C1_M_ReadByte(int8_t);
int  I2C1_M_RecoverBus(void);
int  I2C1_M_Restart(void);
int  I2C1_M_Start(void);
int  I2C1_M_Stop(void);
int  I2C1_M_Write(int8_t, int8_t, int, char *);
int  I2C1_M_WriteByte(char);
//----------------Function Prototypes-------------------

void I2C_HWini()
{
	//-----Set pin drive modes-----
	//I2C - drive outputs so we can manually clear lines
	LATGbits.LATG2 = 1;										//Start with bus in idle mode - both lines high
	LATGbits.LATG3 = 1;
	ODCGbits.ODG2 = 1;										//Open drain mode
	ODCGbits.ODG3 = 1;
	TRISGbits.TRISG2 = 0;									//SCL1 output
	TRISGbits.TRISG3 = 0;									//SDA1 output
}

void I2C_ModuleStart()
{
	//Set up I2C for 400kHz operation on I2C port 1 (pins 56,57) on PIC24FJ256GA110
	I2C1CON = 0x1000;										//Set all bits to known state
	I2C1CONbits.I2CEN = 0;									//Disable until everything set up. Pins will be std IO.
	I2C1BRG = 157;	//For 100 kHz (37; //I2C1BRG = (Fcy/Fscl-FCY/10E6)-1 = (16E6/400E3-16E6/10E6)-1 = 40-1.6-1 = 37.4. Actual Fscl=404kHz.)
	I2C1CONbits.DISSLW = 0;									//Enable slew rate control for 400kHz operation
	IFS1bits.MI2C1IF = 0;									//Clear I2C master int flag
	I2C1CONbits.I2CEN = 1;									//Enable I2C

	//For interrupt driven code
	//IEC1bits.MI2C1IE = 1;									//Enable I2C master interrupt
}

void I2C_SWini()
{
	I2Cflags = 0;
	SetI2C1BusDirty;										//I2C bus in unknown state, go ahead and clear it
}

//Reset the I2C bus - called by I2C1_M_RecoverBus()
//This routine will verify that SCL can be set HIGH, then free SDA by clocking until SDA goes HIGH.
//Then the bus will be reset by issuing a START and STOP condition to restart the I2C bus.
//This should clear any devices hung on incomplete I2C transfers.
//
//Note I2C module must not be active or this routine will not work
//Returns:
//I2C_OK
//I2C_Err_SCL_low
//I2C_Err_SDA_low
//*******************************************************************************
int I2C1_M_BusReset()
{
	int i;

	//Start with lines high - sets SCL high if not already there
	LATGbits.LATG2 = 1;										//PORTGbits.RG2 = 1 is equivalent
	LATGbits.LATG3 = 1;

	__delay_us(10); //Delay10us(1);											//Need 5uS delay
    
	if(PORTGbits.RG2 == 0)									//Read if line actually went high
	{
		return I2C_Err_SCL_low;											//SCL stuck low - is the pullup resistor loaded?
	}
	//SCL ok, toggle until SDA goes high.
	i=10;
	while(i>0)
	{
		if(PORTGbits.RG3 == 1)								//If SDA is high, then we are done
		{
			break;
		}
		LATGbits.LATG2 = 0;									//SCL low
		__delay_us(10); //Delay10us(1);										//Need 5uS delay
		LATGbits.LATG2 = 1;									//SCL high
		__delay_us(10); //Delay10us(1);										//Need 5uS delay
		i--;
	}
	if((PORTG & 0x000C) != 0x000C)							//We are ok if SCL and SDA high
	{
		return I2C_Err_SDA_low;
	}

	LATGbits.LATG3 = 0;										//SDA LOW while SCL HIGH -> START
	__delay_us(10); //Delay10us(1);											//Need 5uS delay
	LATGbits.LATG3 = 1;										//SDA HIGH while SCL HIGH -> STOP
	__delay_us(10); //Delay10us(1);											//Need 5uS delay
	return I2C_OK;
}

//Clear any errors that may have occurred
void I2C1_M_ClearErrors()
{
	I2C1CONbits.RCEN = 0;									//Cancel receive request
	I2C1STATbits.IWCOL = 0;									//Clear write-collision flag
	I2C1STATbits.BCL = 0;									//Clear bus-collision flag
}

//Poll an I2C device to see if it is alive
//This should be done periodically, say every 1 second
//Also does error recovery of the I2C bus here, if indicated
//Returns:
//I2C_OK
//I2C_Err_BadAddr
//I2C_Err_CommFail
//I2C_Err_Hardware
int  I2C1_M_Poll(int8_t DevAddr)
{
	int retval;
	int8_t SlaveAddr;

	SlaveAddr = (DevAddr << 1) | 0;

	if(IsI2C1BusDirty)
	{
		I2C1_M_ClearErrors();
		if(I2C1_M_RecoverBus()==I2C_OK)
		{//Recovered
			ClrI2C1BusDirty;
		}
		else
		{
			return I2C_Err_Hardware;
		}
	}

	if(I2C1_M_Start() == I2C_OK)
	{
		retval = I2C1_M_WriteByte((char)SlaveAddr);
		if(I2C1_M_Stop() == I2C_OK)							//Even if we have an error sending, try to close I2C
		{
			if(retval == I2C_ACK)
			{
				return I2C_OK;
			}
			else if(retval == I2C_Err_NAK)
			{
				return I2C_Err_BadAddr;						//Check that correct device address is being used
			}
			else
			{
				return I2C_Err_CommFail;
			}

		}
	}
	//Get here then we had an error
	SetI2C1BusDirty;										//Set error flag
	return I2C_Err_CommFail;
}

//High level function.  Reads data from target into buffer
//Returns:
//I2C_Ok
//I2C_Err_BadAddr
//I2C_Err_BusDirty
//I2C_Err_CommFail
int  I2C1_M_Read(int8_t DevAddr, int8_t SubAddr, int ByteCnt, char *buffer)
{
	int8_t SlaveAddr;
	int retval;
	int i;

	if(IsI2C1BusDirty)										//Ignore requests until Poll cmd is called to fix err.
		return I2C_Err_BusDirty;

	if(I2C1_M_Start() != I2C_OK)							//Start
	{//Failed to open bus
		SetI2C1BusDirty;
		return I2C_Err_CommFail;
	}
	
	SlaveAddr = (DevAddr << 1) | 0;							//Device Address + Write bit
	retval = I2C1_M_WriteByte((char)SlaveAddr);
	if(retval == I2C_Err_NAK)
	{//Bad Slave Address or I2C slave device stopped responding
		I2C1_M_Stop();
		SetI2C1BusDirty;									//Will reset slave device
		return I2C_Err_BadAddr;
	}
	else if(retval<0)
	{
		I2C1_M_Stop();
		SetI2C1BusDirty;
		return I2C_Err_CommFail;
	}

	if( I2C1_M_WriteByte((char)SubAddr) != I2C_OK)			//Sub Addr
	{
		I2C1_M_Stop();
		SetI2C1BusDirty;
		return I2C_Err_CommFail;
	}

	if( I2C1_M_Restart() != I2C_OK)							//Repeated start - switch to read mode
	{
		I2C1_M_Stop();
		SetI2C1BusDirty;
		return I2C_Err_CommFail;
	}

	SlaveAddr = (DevAddr << 1) | 0x01;						//Device Address + Read bit
	if( I2C1_M_WriteByte((char)SlaveAddr) != I2C_OK)		//Slave Addr
	{
		I2C1_M_Stop();
		SetI2C1BusDirty;
		return I2C_Err_CommFail;
	}
	for(i=0;i<ByteCnt;i++)									//Data
	{
		if(i==(ByteCnt-1) )
		{
			retval = I2C1_M_ReadByte(I2C_M_NACK);			//NACK on last byte so slave knows this is it
		}
		else
		{
			retval = I2C1_M_ReadByte(I2C_M_ACK);
		}
		if(retval >= 0)
		{
			buffer[i] = retval;
		}
		else
		{//Error while reading byte.  Close connection and set error flag.
			I2C1_M_Stop();
			SetI2C1BusDirty;
			return I2C_Err_CommFail;
		}
	}

	if(I2C1_M_Stop() != I2C_OK)
	{//Failed to close bus
		SetI2C1BusDirty;
		return I2C_Err_CommFail;
	}
	return I2C_OK;												//Success
}

//Initiates read of one byte from slave on I2C bus
//Slave must already be addressed, and in read mode
//Waits until completed before returning
//*Caution* Slave can cause a timeout by clock stretching too long
//Returns:
//0x0000-0x00FF Read value stored in low byte (returned integer will always be positive)
//  Error status is indicated by negative return values
//I2C_Err_Overflow
//I2C_Err_RcvTimeout (will happen if slave is clock stretching, or SCL suddenly shorted to ground)
//I2C_Err_SCL_stucklow.  SDA stuck low cannot be detected here.
int I2C1_M_ReadByte(int8_t ACKflag)
{
	int t;

	if(ACKflag == I2C_M_NACK)								//Set state in preparation for TX below
	{
		I2C1CONbits.ACKDT = 1;//NACK
	}
	else
	{
		I2C1CONbits.ACKDT = 0;//ACK
	}

	I2C1CONbits.RCEN = 1;									//Start receive
	t=0;//Timeout is processor speed dependent.  @(4*8Mhz=16MIPS) and 8 bits, I expect <=320.
	//We could wait for RCEN to be cleared, but are really interested in incoming byte, so look for I2C1STAT.RBF
	while(!I2C1STATbits.RBF)								//HW cleared when receive complete
	{
		t++;
		if(t>8000)
		{//SCL stuck low
			//RCEN cannot be cleared in SW. Will need to reset I2C interface, or wait until SCL goes high.
			return I2C_Err_RcvTimeout;
		}
	}//Tested: t=30
	//I2C1STATbits.RBF will likely be set

	//As the master we must ACK or NACK every byte, so slave knows if it will send another byte.
	//We have set the bit above, just need to send it
	I2C1CONbits.ACKEN = 1;									//Send ACK bit now
	t=0;//Timeout is processor speed dependent.  @(4*8Mhz=16MIPS), I expect <=40.
	while(I2C1CONbits.ACKEN)								//HW cleared when complete
	{
		t++;
		if(t>1000)
		{//This will timeout if SCL stuck low
			//ACKEN cannot be cleared in SW. I2C interface must be reset after this error.
			return I2C_Err_SCL_low;
		}
	}//Tested: t=4
	if(I2C1STATbits.I2COV)									//If an overflow occurred, it means we received a new byte before reading last one
	{
		I2C1STATbits.I2COV = 0;
		return I2C_Err_Overflow;
	}

	return I2C1RCV;											//Reading this register clears RBF
}

//Attempt to recover after I2C error
//Returns:
//I2C_OK
//I2C_Err_Hardware
int I2C1_M_RecoverBus()
{
	int status;
//	//Level 1: reset the I2C hardware on our side
//	I2C1CONbits.I2CEN = 0;
//	Nop();
//	I2C1CONbits.I2CEN = 1;

	//Level 2: reset devices on I2C network
	//Disable I2C so we can toggle pins
	I2C1CONbits.I2CEN = 0;
	status = I2C1_M_BusReset();
	if(status>0)
	{//Fatal I2C error, nothing we can do about it
		return I2C_Err_Hardware;
	}
	//That worked, bring I2C back online
	I2C1CONbits.I2CEN = 1;

	return I2C_OK;
}

//Initiates repeated start sequence on I2C bus
//Waits until completed before returning
//Returns:
//I2C_OK
//I2C_Err_BCL
//I2C_Err_SCL_low.  SDA stuck low cannot be detected here.
int I2C1_M_Restart()
{
	int t;

	I2C1CONbits.RSEN = 1;									//Initiate restart condition
	t=0;//Timeout is processor speed dependent.  @(4*8Mhz=32Mhz;16MIPS), I expect <=40.
	while(I2C1CONbits.RSEN)									//HW cleared when complete
	{
		t++;
		if(t>1000)
		{//Will timeout if SCL stuck low
			//RSEN cannot be cleared in SW. Will need to reset I2C interface.
			return I2C_Err_SCL_low;
		}
	}//Tested: t=5

	if(I2C1STATbits.BCL)
	{//SDA stuck low
		I2C1STATbits.BCL = 0;								//Clear error to regain control of I2C
		return I2C_Err_BCL;
	}

	return I2C_OK;
}

//Initiates start sequence on I2C bus
//Waits until completed before returning
//Returns:
//I2C_OK
//I2C_Err_BCL
//I2C_Err_IWCOL
//I2C_Err_TimeoutHW
int I2C1_M_Start()
{
	int t;

	I2C1CONbits.SEN = 1;									//Initiate Start condition
	Nop();
	if(I2C1STATbits.BCL)
	{//SCL or SDA stuck low
		I2C1CONbits.SEN = 0;								//Cancel request (will still be set if we had previous BCL)
		I2C1STATbits.BCL = 0;								//Clear error to regain control of I2C
		return I2C_Err_BCL;
	}
	if(I2C1STATbits.IWCOL)
	{//Not sure how this happens but it occurred once, so trap here
		I2C1CONbits.SEN = 0;								//Clear just in case set
		I2C1STATbits.IWCOL = 0;								//Clear error
		return I2C_Err_IWCOL;
	}

	t=0;//Timeout is processor speed dependent.  @(4*8Mhz=32Mhz;16MIPS), I expect <=40.
	while(I2C1CONbits.SEN)									//HW cleared when complete
	{
		t++;
		if(t>1000)
		{//Since SCL and SDA errors are trapped by BCL error above, this should never happen
			return I2C_Err_TimeoutHW;
		}
	}//Tested: t=3.  I2C1STATbits.S will be set indicating start bit detected.

	//If a second start request is issued after first one, the I2C module will instead:
	//generate a stop request, clear SEN, and flag BCL.  Test for BCL here.
	if(I2C1STATbits.BCL)
	{
		I2C1STATbits.BCL = 0;								//Clear error to regain control of I2C
		return I2C_Err_BCL;
	}

	return I2C_OK;
}

//Initiates stop sequence on I2C bus
//Waits until completed before returning
//Returns:
//I2C_OK
//I2C_Err_BCL
//I2C_Err_SCL_low.  SDA stuck low cannot be detected here.
int I2C1_M_Stop()
{
	int t;

	I2C1CONbits.PEN = 1;									//Initiate stop condition
	Nop();
	if(I2C1STATbits.BCL)
	{//Not sure if this can ever happen here
		I2C1STATbits.BCL = 0;								//Clear error
		return I2C_Err_BCL;									//Will need to reset I2C interface.
	}

	t=0;//Timeout is processor speed dependent.  @(4*8Mhz=16MIPS), I expect <=40.
	while(I2C1CONbits.PEN)									//HW cleared when complete
	{
		t++;
		if(t>1000)
		{//Will timeout if SCL stuck low
			//PEN cannot be cleared in SW. Will need to reset I2C interface.
			return I2C_Err_SCL_low;
		}
	}//Tested: t=5
	return I2C_OK;
}

//High level function.  Writes buffered data to target address.
//Returns:
//I2C_OK
//I2C_Err_BadAddr
//I2C_Err_BusDirty
//I2C_Err_CommFail
int I2C1_M_Write(int8_t DevAddr, int8_t SubAddr, int ByteCnt, char *buffer)
{
	int i;
	int retval;
	int8_t SlaveAddr;

	if(IsI2C1BusDirty)										//Ignore requests until Poll cmd is called to fix err.
		return I2C_Err_BusDirty;
	
	if(I2C1_M_Start() != 0)									//Start
	{//Failed to open bus
		SetI2C1BusDirty;
		return I2C_Err_CommFail;
	}

	SlaveAddr = (DevAddr << 1) | 0;							//Device Address + Write bit
	retval = I2C1_M_WriteByte((char)SlaveAddr);
	if(retval == I2C_Err_NAK)
	{//Bad Slave Address or I2C slave device stopped responding
		I2C1_M_Stop();
		SetI2C1BusDirty;									//Will reset slave device
		return I2C_Err_BadAddr;
	}
	else if(retval<0)
	{
		I2C1_M_Stop();
		SetI2C1BusDirty;
		return I2C_Err_CommFail;
	}

	if( I2C1_M_WriteByte((char)SubAddr) != I2C_ACK)			//Sub Addr
	{
		I2C1_M_Stop();
		SetI2C1BusDirty;
		return I2C_Err_CommFail;
	}

	for(i=0;i<ByteCnt;i++)									//Data
	{
		if( I2C1_M_WriteByte(buffer[i]) != I2C_ACK)
		{//Error while writing byte.  Close connection and set error flag.
			I2C1_M_Stop();
			SetI2C1BusDirty;
			return I2C_Err_CommFail;
		}
	}

	if(I2C1_M_Stop() != I2C_OK)
	{//Failed to close bus
		SetI2C1BusDirty;
		return I2C_Err_CommFail;
	}
	return I2C_OK;
}

//Sends a byte to a slave
//Waits until completed before returning
//Returns:
//I2C_ACK
//I2C_Err_BCL
//I2C_Err_NAK
//I2C_Err_SCL_low
//I2C_Err_TBF
int I2C1_M_WriteByte(char cData)
{
	int t;

	if(I2C1STATbits.TBF)									//Is there already a byte waiting to send?
	{
		return I2C_Err_TBF;
	}
	I2C1TRN = cData;										//Send byte
	//Transmission takes several clock cycles to complete.  As a result we won't see BCL error for a while.
	t=0;//Timeout is processor speed dependent.  @(4*8Mhz=32Mhz;16MIPS) and 8 bits, I expect <=320.
	while(I2C1STATbits.TRSTAT)								//HW cleared when TX complete
	{
		t++;
		if(t>8000)
		{//This is bad because TRSTAT will still be set
			return I2C_Err_SCL_low;							//Must reset I2C interface, and possibly slave devices
		}
	}//Testing: t=31

	if(I2C1STATbits.BCL)
	{
		I2C1STATbits.BCL = 0;								//Clear error to regain control of I2C
		return I2C_Err_BCL;
	}

	//Done, now how did slave respond?
	if(I2C1STATbits.ACKSTAT)								//1=NACK
		return I2C_Err_NAK;									//  NACK
	else
		return I2C_ACK;										//  ACK
}