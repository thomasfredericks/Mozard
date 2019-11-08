// MOZZI STUFF
#include <Oscil.h>
#include <Ead.h> // Exponential attack decay envelope.
#include <LowPassFilter.h>

LowPassFilter lpf;

// #define POLY
#define SIN_TABLES



#include <tables/sin2048_int8.h> // sine table for oscillator
Oscil<SIN2048_NUM_CELLS, AUDIO_RATE> osc(SIN2048_DATA);

#include <tables/triangle_valve_2048_int8.h>
Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE> tri(TRIANGLE_VALVE_2048_DATA);

#include <tables/square_no_alias_2048_int8.h>
Oscil<SQUARE_NO_ALIAS_2048_NUM_CELLS , AUDIO_RATE> sqr(SQUARE_NO_ALIAS_2048_DATA);


// audio oscillator
//Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> osc(SIN2048_DATA);

// envelope generator
// Ead envelope(CONTROL_RATE);

Ead env(CONTROL_RATE);
int gain = 0;



#include <tables/cos2048_int8.h>
#include <mozzi_fixmath.h>
Oscil<COS2048_NUM_CELLS, AUDIO_RATE> lfo(COS2048_DATA);

int ratio;

float lastFreq = 440.0f;

float modulation = 0;
uint8_t modulationIntensity = 0;

#define MODES 3
uint8_t mode = 0;

void synthSetup() {
  ratio = mozard.getPotA();

  lfo.setFreq(1.f);


}



void playNote( uint8_t note ) {

  // int ratio = mozard.getPotA();
  if ( !arpeggiatorRunning ) {
    ratio = mozard.getPotA();

  }

  /*
    int a = 10;
    int r = 2048;
    if ( ratio< 400) {
      a = 10;
      r = map( ratio, 0, 399, 10, 1024);
    } else if ( ratio < 800) {
      a = map(ratio, 400, 799, 10, 512);
      r = map(ratio, 400, 799, 1024, 2048);
    } else {
      a = 512;//map(ratio,800,1023,512,100);
      r = map(ratio, 800, 1023, 2048, 10);

    }

  */
  int a = 10;
  int r = 2048;
  if ( ratio < 512 ) {
    a = 10;
    r = map( ratio, 0, 511, 10, 1024);
  } else {

    a = map(ratio, 512, 1023, 10, 512);
    r = map(ratio, 512, 1023, 1024, 5000);

  }
  lastFreq = mtof(note);
  osc.setFreq( lastFreq);
  sqr.setFreq( lastFreq);
  tri.setFreq( lastFreq * 4);
  env.start(a, r);

}

void synthUpdateControl() {

  if ( mozard.buttonBPressed() ) {
    mode = ( mode + 1 ) % MODES;
  }

  int potB = mozard.getPotB();
  /*

    modulation = floor((potB ) / 64.0f)+1;
    lfo.setFreq( (1/modulation) * lastFreq * 2);
  */



  modulation = potB / 1023.0;
  modulation = modulation * modulation * modulation * modulation;


  lfo.setFreq( modulation * lastFreq * 3);

  

 lpf.setCutoffFreq(potB >> 3);



  modulationIntensity = min(potB << 3, 127);

  gain = (int) env.next();
}


int updateAudio() {

  if ( mode == 0 ) {
    Q15n16 vibrato = (Q15n16) modulationIntensity * lfo.next();
    return (int) (gain * osc.phMod(vibrato) ) >> 3; // MORE REDUCTION //return (int) (gain * osc.next() ) >> 3; // MORE REDUCTION

  } else if ( mode == 1) {
    
    return (int) (gain *  ( (osc.next() > lfo.next()) ? -120 : 120 )   ) >> 3;
  } else if (mode == 2) {

    return (int) (gain * lpf.next( (sqr.next() + tri.next()) >> 1 ) ) >> 3;
  }

  /*
   * 
   * 
   *  return (int) (gain * lpf.next( (sqr.next() + tri.next()) >> 1 ) ) >> 3;
   */

  /*
    // AMPLITUDE MODULATION BUT PHASE IS BETTER
    unsigned int mod = (128u + lfo.next()) * gain;
    int out = ((long)mod * osc.next())>> 11 ; // 16 bit   8 bit = 24 bit, then >>10 = 14 bit
    return out;
  */


}
