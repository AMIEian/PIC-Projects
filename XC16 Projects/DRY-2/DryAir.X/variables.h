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

#define ADC_MAX_COUNTS 10000
#define RTD_MAX_COUNTS 2000
#define DAC_MAX_COUNTS 10000

//Indexes for various readings in counts array
#define AI_INDEX 0
#define MCP_AI_INDEX 6
#define RTD_INDEX 10
#define HSDI_1 13
#define HSDI_2 14
#define HSDI_3 15
#define HSDI_4 16
#define DI_INDEX 17
#define ACDI_INDEX 18

//Indexes for various readings in input_counts array
#define RO_INDEX 0
#define HSDO_1 1
#define HSDO_2 2
#define HSDO_3 3
#define HSDO_4 4
#define AO_INDEX 5

//Indexes for various readings in fullVals array
#define AI_FULLVALS_INDEX 0
#define MCP_FULLVALS_INDEX 6
#define RTD_FULLVALS_INDEX 10
#define DAC_FULLVALS_INDEX 13

extern int16_t zeroVals[20];
extern int16_t fullVals[20];
extern int16_t counts[21];
extern int16_t analogCounts[6];
extern int16_t inputCounts[20];

