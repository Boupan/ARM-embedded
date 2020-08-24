#include <stdint.h>
#include "macr.h"

//macros @ definition file
// ENABLE ADC FOR WINDDIR INPUT-WITHOUT IT NO A2D PERIPHERALS
struct weatherdata {
  uint16_t humidity;
  uint8_t wind_dir;
  uint8_t wind_pw;
  float temp;
  time_t time;
};

//we want to push the data on-demand
//so as to refresh old values


int main (void)
{
  //uint8_t *p1_out = (uint8_t*)0x40004c02;
  //uint8_t *p1_dir = (uint8_t*)0x40004c04;
  WDTCTL = WDTPW | WDTHOLD;
  while(1){
    //while (WL_CONNECTED){}
  void refreshData(weatherdata *olData);
  }
}

void refreshData(weatherdata *olData){
  olData->humidity = HUM_PORT;
  olData->wind_pw = WIND_PORT;
  olData->wind_dir = WIND_DIR;
  olData->temp = HUM_PORT;
  olData->time = 0; //resetting time for debugging--check time instances consistancy
}

/* LCD SCREEN LIB + WEATHER API*/