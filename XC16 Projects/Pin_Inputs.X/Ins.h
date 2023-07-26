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
typedef union {
    struct {
      unsigned LAT_IN0:1;
      unsigned LAT_IN1:1;
      unsigned LAT_IN2:1;
      unsigned LAT_IN3:1;
      unsigned LAT_IN4:1;
      unsigned LAT_IN5:1;
      unsigned LAT_IN6:1;
      unsigned LAT_IN7:1;
    };
    struct {
      unsigned w:8;  
    };
} LAT_INSBITS;
extern volatile LAT_INSBITS LAT_INSbits;

/* LAT_LEDSBITS */
#define _IN0 LAT_INSbits.LAT_IN0
#define _IN1 LAT_INSbits.LAT_IN1
#define _IN2 LAT_INSbits.LAT_IN2
#define _IN3 LAT_INSbits.LAT_IN3
#define _IN4 LAT_INSbits.LAT_IN4
#define _IN5 LAT_INSbits.LAT_IN5
#define _IN6 LAT_INSbits.LAT_IN6
#define _IN7 LAT_INSbits.LAT_IN7
#define _INS LAT_INSbits.w

/*****************************************************************************
 * Function: DisplayValueOnLEDs
 * Precondition: None.
 * Overview: Display input value on Explorer 16 LEDs
 * Input: Value to display
 * Output: None.
 *****************************************************************************/

unsigned char GetInPins();
/**
 End of File
 */
