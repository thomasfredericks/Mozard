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
#include <Oscil.h>
#include <Ead.h> // Exponential attack decay envelope.
#include <mozzi_rand.h>
#include <mozzi_midi.h>
#include <tables/sin2048_int8.h> // sine table for oscillator

#include "MozardNano.h"

// powers of 2 please
#define CONTROL_RATE 256

Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> aSin(SIN2048_DATA);
Ead envelope(CONTROL_RATE);
int gain;

unsigned int attack_ms = 10;
unsigned int decay_ms = 200;

void setup() {

  Serial.begin(57600);
  startMozzi(CONTROL_RATE);

  mozard.setup();

}


void updateControl() {

  mozard.updateControl();

  if ( mozard.buttonUpPressed() ) mozard.octaveUp();
  if ( mozard.buttonDownPressed() ) mozard.octaveDown(); 

  if ( mozard.keyPressed() ) {
    uint8_t note = mozard.getNotePressed();
    int freq = mtof(note);
    aSin.setFreq(freq);

    int pot = mozard.getPot0();
    envelope.start(attack_ms, pot * 2 + decay_ms);
    
  }

  gain = (int) envelope.next();

}


int updateAudio() {
  //return aSin.next() << 6; // 8 bits scaled up to 14 bits

  return (int) (gain * aSin.next()) >> 2; // 16 bits scaled to 14 bits
}


void loop() {
  audioHook();
}





