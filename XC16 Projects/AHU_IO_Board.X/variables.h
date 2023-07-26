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
#define DAC_MAX_COUNTS 10000

//Indexes for various readings in counts array
#define RA_Temp_AI 0
#define RA_Humidity_AI 1
#define VFD_Speed_AI 2
#define Air_Velocity_AI 3
#define CO2_AI 4
#define SPARE_AI 5

#define AHU_On_Off 6
#define AHU_Trip 7
#define Filter_1 8
#define Filter_2 9
#define Fire_Input 10
#define Fire_Supply 11
#define Fire_Return 12
#define AHU_Door 13
#define SA_Temp 14
#define SA_Humidity 15
#define Fine_Filter 16
#define HEPA_Filter 17

#define AI_INDEX 0
#define DI_INDEX 6

//Indexes for various readings in input_counts array
#define RO_INDEX 0  //{0000 00 [A/M Relay] [BUZZER] [SPARE] [SPARE] [SPARE] [SPARE] [Fresh Air] [Fire Damper Return] [Fire Damper Supply] [AHU ON/OFF]}

#define RA_Temp_AI_Damp_Time 1
#define RA_Temp_Lower 2
#define RA_Temp_Higher 3

#define Chilled_Water_AO 5
#define Hot_Water_AO 6
#define VFD_AO 7
#define SPARE_AO 8

#define RA_Humidity_AI_Damp_Time 9
#define RA_Humidity_Lower 10
#define RA_Humidity_Higher 11

#define VFD_AI_Damp_Time 12
#define VFD_Lower 13
#define VFD_Higher 14

#define Air_Velocity_AI_Damp_Time 15
#define Air_Velocity_Lower 16
#define Air_Velocity_Higher 17

#define CO2_AI_Dampening_Time 18
#define CO2_Lower 19
#define CO2_Higher 20

#define SPARE_AI_Damp_Time 21
#define SPARE_AI_Lower 22
#define SPARE_AI_Higher 23

#define AO_INDEX 5

//Indexes for various readings in fullVals array
#define AI_FULLVALS_INDEX 0
#define DAC_FULLVALS_INDEX 13

extern int16_t zeroVals[20];
extern int16_t fullVals[20];
extern int16_t counts[21];
extern int16_t analogCounts[6];
extern int16_t inputCounts[25];
extern int16_t Analog_Readings[6][50];