/* Microchip Technology Inc. and its subsidiaries.  You may use this software 
 * and any derivatives exclusively with Microchip products. 
 * 
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER 
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A 
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION 
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE 
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS 
 * IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF 
 * ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE 
 * TERMS. 
 */

/*****************************************************************************
 * Union of structures to hold value for display on LEDs
 * LAT_LEDx - bit fields of value
 * w - entire value
 *****************************************************************************/
typedef union {
    struct {
      unsigned LAT_OUT0:1;
      unsigned LAT_OUT1:1;
      unsigned LAT_OUT2:1;
      unsigned LAT_OUT3:1;
      unsigned LAT_OUT4:1;
      unsigned LAT_OUT5:1;
      unsigned LAT_OUT6:1;
      unsigned LAT_OUT7:1;
    };
    struct {
      unsigned w:8;  
    };
} LAT_OUTSBITS;
extern volatile LAT_OUTSBITS LAT_OUTSbits;

/* LAT_LEDSBITS */
#define _OUT0 LAT_OUTSbits.LAT_OUT0
#define _OUT1 LAT_OUTSbits.LAT_OUT1
#define _OUT2 LAT_OUTSbits.LAT_OUT2
#define _OUT3 LAT_OUTSbits.LAT_OUT3
#define _OUT4 LAT_OUTSbits.LAT_OUT4
#define _OUT5 LAT_OUTSbits.LAT_OUT5
#define _OUT6 LAT_OUTSbits.LAT_OUT6
#define _OUT7 LAT_OUTSbits.LAT_OUT7
#define _OUTS LAT_OUTSbits.w

/*****************************************************************************
 * Function: DisplayValueOnLEDs
 * Precondition: None.
 * Overview: Display input value on Explorer 16 LEDs
 * Input: Value to display
 * Output: None.
 *****************************************************************************/

void SetOutPins(unsigned int value);
/**
 End of File
 */

