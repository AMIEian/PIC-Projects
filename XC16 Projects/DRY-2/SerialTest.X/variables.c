/*
 * File:   variables.c
 * Author: AMIEian
 *
 * Created on July 16, 2019, 7:47 PM
 */


#include "xc.h"
#include "variables.h"

int16_t zeroVals[20] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int16_t fullVals[20] = {10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000};
int16_t counts[21] = {1000, 970, 760, -550, 930, 120, 680, 540, 8743, 3190, 7310, -2340, -4560, 810, 620, 1960, 0, 0, 0, 0, 640};
int16_t inputCounts[20] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
uint16_t MCPReadings[4] = {0, 0, 0, 0};
uint16_t analogReadings[6] = {0, 0, 0, 0, 0, 0};
uint16_t RTDReadings[3] = {0, 0, 0};
uint16_t DIFrequencies[4] = {0, 0, 0, 0};
int16_t DIReadings = 0x0000;
int16_t ACDIReadings = 0x0000;