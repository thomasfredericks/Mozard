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
#include <tables/whitenoise8192_int8.h>
#include <StateVariable.h>
#include <mozzi_midi.h>
#include <ADSR.h>

// powers of 2 please : fast control rate for fast key response
#define CONTROL_RATE 256


Oscil <WHITENOISE8192_NUM_CELLS, AUDIO_RATE> osc(WHITENOISE8192_DATA); // audio noise
StateVariable <BANDPASS> svf; // can be LOWPASS, BANDPASS, HIGHPASS or NOTCH

ADSR <CONTROL_RATE, AUDIO_RATE> envelope;

uint8_t lastNote;

#include "MozardNano.h"

void setup() {

  Serial.begin(57600);
  startMozzi(CONTROL_RATE);


  // HARDWARE SETUP
  mozard.setup();

  osc.setFreq(1.27f * (float)AUDIO_RATE / WHITENOISE8192_SAMPLERATE); // * by an oddish number (1.27) to avoid exact repeating of noise oscil
  svf.setResonance(1); // 0 to 255, 0 is the "sharp" end
  svf.setCentreFreq(500);

  envelope.setADLevels(250, 250);              // Sets Attack and Decay Levels; assumes Sustain, Decay, and Idle times
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

    svf.setCentreFreq(freq);

    envelope.noteOn();

  }

  if ( mozard.keyReleased() ) {
    if ( lastNote == mozard.getNoteReleased() ) envelope.noteOff();

  }


  envelope.update();

  int pot = mozard.getPot0();
  svf.setResonance(pot>>2); 

}


int updateAudio() {

  
  return (int) (svf.next(osc.next()>>1) * envelope.next())>>2; // shift down osc.next() to avoid distortion with extreme resonant filter setting
  
}


void loop() {
  audioHook();
}





