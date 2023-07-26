/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/*
Notes on the USB-I2C Click Operation:

- This module only supports byte operations. Block read and write operations is 
not yet supported by MCC Foundation I2C Slave Drivers.

- This module works with the MCP2221 I2C/SMbus Utility terminal software which
can be downloaded at this link: http://ww1.microchip.com/downloads/en/DeviceDoc/MCP2221Terminal.zip

- The default 7bit address for the MCU is 0x50. 
*/

#include <stdio.h>
#include "drivers/i2c_slave.h"
#include "USBI2C_app.h"
#include "USBI2C_example.h"

void USBI2C_SlaveRead(void);
void USBI2C_SlaveWrite(void);

volatile uint8_t data;

void USBI2C_example(void){
    USBI2C_Initialize();
    i2c_slave_setReadIntHandler(USBI2C_SlaveRead);
    i2c_slave_setWriteIntHandler(USBI2C_SlaveWrite);
}

void USBI2C_SlaveRead(void) {
    data = i2c_slave_read();
}

void USBI2C_SlaveWrite(void) {
    i2c_slave_write(data);
}

