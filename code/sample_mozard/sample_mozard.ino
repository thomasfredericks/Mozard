/*
    IMPORTANT: this sketch requires Mozzi/mozzi_config.h to be
    be changed from STANDARD mode to HIFI.
    In Mozz/mozzi_config.h, change
    #define AUDIO_MODE STANDARD
    //#define AUDIO_MODE HIFI
    to
    //#define AUDIO_MODE STANDARD
    #define AUDIO_MODE HIFI

*/


#include <MozziGuts.h>
#include <Sample.h> // Sample template
#include <samples/burroughs1_18649_int8.h>
#include <samples/bamboo/bamboo_00_2048_int8.h> // wavetable data

#include "Mozard.h"

// powers of 2 please
#define CONTROL_RATE 256

// use: Sample <table_size, update_rate> SampleName (wavetable)
Sample <BURROUGHS1_18649_NUM_CELLS, AUDIO_RATE> aSample(BURROUGHS1_18649_DATA);
Sample <BAMBOO_00_2048_NUM_CELLS, AUDIO_RATE>aBamboo0(BAMBOO_00_2048_DATA);

void setup() {

  Serial.begin(57600);
  startMozzi(CONTROL_RATE);

  mozard.setup();

  // aSample.setFreq((float) BURROUGHS1_18649_SAMPLERATE / (float) BURROUGHS1_18649_NUM_CELLS); // play at the speed it was recorded

}


void updateControl() {

  mozard.updateControl();

  if ( mozard.buttonUpPressed() ) mozard.octaveUp();
  if ( mozard.buttonDownPressed() ) mozard.octaveDown();

  if ( mozard.keyPressed() ) {
    uint8_t note = mozard.getNotePressed();
    float speed =  pow(2, (float)(note - 60) / 12.f);

    if ( mozard.getPot0() > 512 ) {
      aSample.setFreq((float) BURROUGHS1_18649_SAMPLERATE / (float) BURROUGHS1_18649_NUM_CELLS * speed  );

      aSample.start();

    } else {
      aBamboo0.setFreq((float) BAMBOO_00_2048_SAMPLERATE / (float) BAMBOO_00_2048_NUM_CELLS * speed  );

      aBamboo0.start();

    }
  }



}


int updateAudio() {
  //return aSin.next() << 6; // 8 bits scaled up to 14 bits

  return (int) (aSample.next() + aBamboo0.next()) << 6; // 8 bits scaled up to 14 bits
}


void loop() {
  audioHook();
}





