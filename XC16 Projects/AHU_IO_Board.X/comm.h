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

/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */
#include <stdbool.h>

bool getPCCommandReceived();
void setPCCommandReceived(bool val);
bool getNewDataRequest();
void setNewDataRequest(bool val);
bool checkNewDataRequest();
void getPCCommand(char *c);
void appendCharToString(char* s, char c);
void trimString(char *input);
void clearString(char* s);
void clearPCCommand();
void sendNewData(int16_t* data, int16_t arrayLength, char spacer);
char getCharAt(char* s, int loc);
void serialEvent();
int16_t parsePCCommand();
void calibrateZero();
bool validCalZeroString();
void calibrateFull();
bool validCalFullString();
void analogCalibrate();
bool validAnalogString();
void saveCalibration(char mode);
void loadCalFromEEPROM();
void allClear();
void saveWiFiConfig();
void sendWiFiConfig();
void comError();
void plcError();
void parsInputs();
void assembleFlashPage(char mode);
void loadFlashPage();

void noInterrupts();
void interrupts();