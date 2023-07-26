/*
 * File:   comm.c
 * Author: AMIEian
 *
 * Created on July 12, 2019, 3:49 PM
 */


#include "xc.h"
#include "comm.h"
#include "variables.h"
#include "storage.h"
//#include "leds.h"
#include <ctype.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include "mcc_generated_files/uart1.h"


char pcCommand[200];
int flashPage[300];
bool newDataRequest = false;
bool pcCommandReceived = false;
bool stringComplete = false;
bool commandReceiving = false;
char newline = '\n';

bool getPCCommandReceived()
{
    return pcCommandReceived;
}

void setPCCommandReceived(bool val)
{
    pcCommandReceived = val;
}

bool getNewDataRequest()
{
    return newDataRequest;
}

void setNewDataRequest(bool val)
{
    newDataRequest = val;
}

bool checkNewDataRequest()
{
    return newDataRequest;
}

void getPCCommand(char* c)
{
    strcpy(c, pcCommand);
}

void appendCharToString(char* s, char c) 
{
        int len = strlen(s);
        s[len] = c;
        s[len+1] = '\0';
}

void trimString(char *input)
{
  int i, j = 0;
  char result[200];
  for (i = 0; input[i] != '\0'; i++) {
    if (!isspace((unsigned char) input[i])) {
      result[j++] = input[i];
    }
  }
  result[j] = '\0';
  clearString(input);
  strcpy(input, result);
}

void clearString(char* s)
{
    s[0] = '\0';
}

void clearPCCommand()
{
    clearString(pcCommand);
}

void sendNewData(int16_t* data, int16_t arrayLength, char spacer)
{
    int i;
    for(i = 0; i < arrayLength; i++)
          {
            printf("%c", spacer);
            printf("%d", data[i]);
          } 
    printf("%c", newline);
    setNewDataRequest(false);
}

char getCharAt(char* s, int loc)
{
    if(strlen(s) < loc)
        return NULL;
    else
        return s[loc];
}

void serialEvent()
{
    char rxData;
    while(UART1_IsRxReady())
    {
        rxData = (char)UART1_Read();
        //Check whether it is data send command
        if (rxData == '#')// && commandReceiving == false) 
          {
            newDataRequest = true;
            commandReceiving = false;
            clearPCCommand();
          }
        else
          {
            commandReceiving = true;
            // if the incoming character is a newline, set a flag so the main loop can
            // do calibration with it:
            if (rxData == '\n' || rxData == '\r') 
              {
                pcCommandReceived = true;
                commandReceiving = false;
                return;
              }
            // If its not then add it to the pcCommand:
            appendCharToString(pcCommand, rxData);
          }
    }
    return;
}

int16_t parsePCCommand()
{
    char firstChar;
    int16_t res = 0;
    
    firstChar = getCharAt(pcCommand, 0);
    switch(firstChar)
    {
        case 'x' :
            calibrateZero();  //Calibrate 0 Values
            break;
        case 'X' :
            calibrateFull();  //Calibrate Full Values
            break;
        case 'Y' :
            analogCalibrate();  //Calibrate Full Values
            break;
        case '>' :
            saveCalibration(getCharAt(pcCommand, 1));  //Save Calibrations to EEPROM
            break;
        case '<' :
            loadCalFromEEPROM();  //Discard Calibrations and Load from EEPROM
            break;
        case '!' :
            saveCalibration('Z');  //Factory Reset. Format user calibration and load calibrations from Factory Values 
            break;
        case '.' :
            allClear();  //Format everything. All calibrations and WiFi settings
            break;
        case '$' :
            saveWiFiConfig(); //Save WiFi Settings to EEPROM
            break;
        case '@' :
            sendWiFiConfig(); //Send WiFi Settings to ESP and PC
            break;
        case '^' :
            comError();
            break;
        case '~' :
            plcError();
            break;
        case '0' :
            parsInputs(); //Get input values and store them in input array
            res = 1;
            break;
        default:
            break;
    }
    clearPCCommand();
    setPCCommandReceived(false);
    return res;
}

void calibrateZero()
  {
    int index = 0;
    int i, len;
    trimString(pcCommand); //Removes Extra Spaces and Newline Character from Command String
    len = strlen(pcCommand);
    if(validCalZeroString())
      {
        for(i = 1; i < len; i++)
          {
            //Store current readings as zeroValues
            index = getCharAt(pcCommand, i) - 'a';
            zeroVals[index] = zeroVals[index] + counts[index];
          }
      }
  }

bool validCalZeroString()
  {
    bool res = true;
    int i, len;
    len = strlen(pcCommand);
    for(i = 1; i < len; i++)
      {
        if(getCharAt(pcCommand, i) >= 'a' && getCharAt(pcCommand, i) <= 'm')
          continue;
        else
          {
            res = false;
            break;
          }
      }
    return res;
  }

void calibrateFull()
  {
    int index = 0;
    int i, len;
    trimString(pcCommand); //Removes Extra Spaces and Newline Character from Command String
    len = strlen(pcCommand);
    if(validCalFullString())
      {
        for(i = 1; i < len; i++)
          {
            //Store current readings as zeroValues
            index = getCharAt(pcCommand, i) - 'A';
            fullVals[index] = counts[index];
          }
      }
  }

bool validCalFullString()
  {
    bool res = true;
    int i, len;
    len = strlen(pcCommand);
    for(i = 1; i < len; i++)
      {
        if(getCharAt(pcCommand, i) >= 'A' && getCharAt(pcCommand, i) <= 'M')
          continue;
        else
          {
            res = false;
            break;
          }
      }
    return res;
  }

void analogCalibrate()
{
    int index = 0;
    int i, len;
    trimString(pcCommand); //Removes Extra Spaces and Newline Character from Command String
    len = strlen(pcCommand);
    if(validAnalogString())
      {
        for(i = 1; i < len; i++)
          {
            //Store current readings as zeroValues
            index = getCharAt(pcCommand, i) - 'A';
            fullVals[index] = analogCounts[index - DAC_FULLVALS_INDEX];
          }
      }
}

bool validAnalogString()
{
    bool res = true;
    int i, len;
    len = strlen(pcCommand);
    for(i = 1; i < len; i++)
      {
        if(getCharAt(pcCommand, i) >= 'N' && getCharAt(pcCommand, i) <= 'S')
          continue;
        else
          {
            res = false;
            break;
          }
      }
}

void saveCalibration(char mode)
  {
    flashPage[0] = 'X'; //Clear user calibration
    assembleFlashPage(mode);
    loadCalFromEEPROM();  //Load the Calibration from EEPROM to get in effect.
  }

void loadCalFromEEPROM()
  {
    loadFlashPage();
  }

void allClear()
  {
    flashPage[0] = 'X';
    flashPage[41] = 'X';
    flashPage[82] = 'X';
    assembleFlashPage('Z');
    loadCalFromEEPROM();
  }

void saveWiFiConfig()
  {
    assembleFlashPage('X');
  }

void sendWiFiConfig()
  {
    char calDone;
    clearPCCommand();
    loadFlashPage();
    calDone = (char)flashPage[82];
    if(calDone == '$')
    {
        printf("%s", pcCommand);
        printf("%c", newline);
    }
    interrupts();
  }

void comError()
{
    /*
    if(getCharAt(pcCommand, 1) == '1')
        COM1_LED = 1;
    else
        COM1_LED = 0;
    */
}

void plcError()
{
    /*
    if(getCharAt(pcCommand, 1) == '1')
        COM2_LED = 1;
    else
        COM2_LED = 0;
    */
}

void parsInputs()
{
    char number[6];
    int i;
    int index = 2;
    int counts = 0;
    trimString(pcCommand); //Removes Extra Spaces and Newline Character from Command String
    while(1)
    {
        for(i = 0; i < 6; i++)
            number[i] = NULL;
        i = 0;
        while(pcCommand[index] != ',')
        {
            if(pcCommand[index] >= '0' || pcCommand[index] <= '9')
                number[i] = pcCommand[index];
            else
                number[i] = '-';
            i++;
            index++;
        }
        index++;
        inputCounts[counts] = atoi(number);
        counts++;
        if(counts >= 25)
            break;
        /*
        if(pcCommand[index] == NULL)
            break;
        */
    }
}

void assembleFlashPage(char mode)
{
    int i;
    if(mode == 'C')
    {
        flashPage[0] = 'C';
        for(i = 1; i < 21; i++)
            flashPage[i] = zeroVals[i-1];
        for(i = 21; i < 41; i++)
            flashPage[i] = fullVals[i-21];
    }
    if(mode == 'F')
    {
        flashPage[41] = 'F';
        for(i = 42; i < 62; i++)
            flashPage[i] = zeroVals[i-42];
        for(i = 62; i < 82; i++)
            flashPage[i] = fullVals[i-62];
    }
    if(mode == 'X')
    {
        i = 82;
        while(pcCommand[i-82] != '\0')
        {
            flashPage[i] = pcCommand[i-82];
            i++;
        }
        flashPage[i] = '\0';
    }
    storeIntArray(&flashPage[0], 200, 0);
}

void loadFlashPage()
{
    char calDone;
    int i;
    readIntArray(&flashPage[0], 200, 0);
    calDone = (char)flashPage[0];
    if(calDone == 'C')
      {
        for(i = 1; i < 21; i++)
            zeroVals[i-1] = flashPage[i];
        for(i = 21; i < 41; i++)
            fullVals[i-21] = flashPage[i];
      }
    else
      {
        calDone = (char)flashPage[41];
        if(calDone == 'F')
          {
            for(i = 42; i < 62; i++)
                zeroVals[i-42] = flashPage[i];
            for(i = 62; i < 82; i++)
                fullVals[i-62] = flashPage[i];
          }
        else
          {
            //If User and Factory Calibration is not found then load default values
            for(i = 0; i < 20; i++)
              zeroVals[i] = 0;
            for(i = 0; i < 6; i++)
                fullVals[i] = 3600;
            for(i = 6; i < 10; i++)
                fullVals[i] = 28000;
            for(i = 10; i < 13; i++)
                fullVals[i] = 2000;
            for(i = 13; i < 20; i++)
                fullVals[i] = 3800;
          }
      }
    i = 82;
    while(flashPage[i] != '\0')
    {
        pcCommand[i-82] = flashPage[i];
        i++;
    }
    pcCommand[i-82] = '\0';
}

void noInterrupts()
{
    //_DISI = 1;
}

void interrupts()
{
    //_GIE = 1;
}