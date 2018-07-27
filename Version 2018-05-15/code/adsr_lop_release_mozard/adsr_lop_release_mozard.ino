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
#include <LowPassFilter.h>
#include <ADSR.h>

// powers of 2 please : fast control rate for fast key response
#define CONTROL_RATE 256

//Oscillator Tables used for output Waveshape
// SELECT ONE PAIR :
//#include <tables/sin2048_int8.h>
//Oscil <2048, AUDIO_RATE> osc(SIN2048_DATA);

//#include <tables/triangle2048_int8.h>
//Oscil <2048, AUDIO_RATE> osc(TRIANGLE2048_DATA);

//#include <tables/saw2048_int8.h>
//Oscil <2048, AUDIO_RATE> osc(SAW2048_DATA);

#include <tables/square_no_alias_2048_int8.h>
Oscil <2048, AUDIO_RATE> osc(SQUARE_NO_ALIAS_2048_DATA);

// LFO TABLE
#include <tables/cos2048_int8.h> // for filter modulation
Oscil<COS2048_NUM_CELLS, CONTROL_RATE> lfo(COS2048_DATA);


ADSR <CONTROL_RATE, AUDIO_RATE> envelope;

LowPassFilter lpf;

uint8_t lastNote;

#include "Mozard.h"

void setup() {

  Serial.begin(57600);
  startMozzi(CONTROL_RATE);


  // HARDWARE SETUP
  mozard.setup();

  lpf.setResonance(10);

  envelope.setADLevels(250,250);               // Sets Attack and Decay Levels; assumes Sustain, Decay, and Idle times
  envelope.setDecayTime(100);                  // Sets Decay time in milliseconds
  envelope.setSustainTime(32500);              // Sustain Time setting for envelope
  envelope.setReleaseTime(250); 

}


void updateControl() {

  mozard.updateControl();

  if ( mozard.buttonUpPressed() ) mozard.octaveUp();
  if ( mozard.buttonDownPressed() ) mozard.octaveDown();

  if ( mozard.keyPressed() ) {
    lastNote = mozard.getNotePressed();
    int freq = mtof(lastNote);
    
    osc.setFreq(freq);

    envelope.noteOn();

  }

  if ( mozard.keyReleased() ) {
    if ( lastNote == mozard.getNoteReleased() ) envelope.noteOff();
     
  }

 
  envelope.update();
  
   int pot = mozard.getPot0();
  
   lfo.setFreq( (float)pot * 0.05f);
   byte cutoff_freq = lfo.next() / 4 + 32;
   lpf.setCutoffFreq(cutoff_freq);


}


int updateAudio() {

 return (int) (lpf.next(osc.next()) * envelope.next())>>2;
}


void loop() {
  audioHook();
}





