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

#include <tables/saw2048_int8.h>
Oscil<SAW2048_NUM_CELLS, AUDIO_RATE> saw(SAW2048_DATA );

#include <tables/square_no_alias_2048_int8.h>
Oscil<SQUARE_NO_ALIAS_2048_NUM_CELLS , AUDIO_RATE> sqr(SQUARE_NO_ALIAS_2048_DATA);


// audio oscillator
//Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> osc(SIN2048_DATA);

// envelope generator
// Ead envelope(CONTROL_RATE);

Ead env(CONTROL_RATE);
int gain = 0;



//#include <tables/cos2048_int8.h>
//#include <mozzi_fixmath.h>
Oscil<SIN2048_NUM_CELLS, AUDIO_RATE> lfoSin(SIN2048_DATA);

Oscil<SIN2048_NUM_CELLS, CONTROL_RATE> lfoControl(SIN2048_DATA);

Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE> lfoTri(TRIANGLE_VALVE_2048_DATA);

int release;

float lastFreq = 440.0f;

float modulation = 0;
float modulationOffset = 0;
uint8_t modulationIntensity = 0;

#define MODES 5
uint8_t mode = 4;
uint8_t currentMode = mode;

struct Preset {
  uint8_t carrierWave;
  bool phaseModulation;
  bool filterModulation;
  bool widthModulation;
  bool pitchModulation;
  bool retriggerLfo;

};

Preset presets[4];
size_t presetCount =  sizeof(presets) / sizeof(Preset);





void synthSetup() {
  release = Mozard.getTopLeftPotentiometer();
  lfoSin.setFreq(1.f);
}

void synthChangeMode() {

  mode = ( mode + 1 ) % MODES ;

  /*
    mode = ( mode + 1 ) % (MODES + 1);
    if ( mode == MODES ) {
    currentMode = random(MODES);
    } else {
    currentMode = mode;
    }
  */

  currentMode = mode;
}



void synthUpdateControl() {


  int potB = Mozard.getBottomLeftPotentiometer();
  /*

    modulation = floor((potB ) / 64.0f)+1;
    lfo.setFreq( (1/modulation) * lastFreq * 2);
  */



  modulation = potB / 1023.0;
  modulation = modulation * modulation * modulation * modulation;
 // modulation = modulation+ modulationOffset;
 // if ( modulation > 1 ) modulation = 1;
 // if ( modulation < 0 ) modulation = 0;

  lfoSin.setFreq( modulation * lastFreq * 3);
  lfoTri.setFreq( modulation * lastFreq * 3);

  lfoControl.setFreq( modulation * 1000 + 1  );
  if ( currentMode == 3 ) {

    osc.setFreq(lastFreq + map( lfoControl.next(), -128, 127, -lastFreq / 2, lastFreq / 2));

  }


  if ( currentMode == 2 ) {
    lpf.setCutoffFreq(lfoControl.next() / 2 + 64);
  } else {
    lpf.setCutoffFreq(potB >> 3 + 10);
  }

  modulationIntensity = min(potB << 3, 127);

  gain = (int) env.next();
}

void synthPlayNote(byte note) {

  

  if ( !arp.isRunning() ) release = Mozard.getTopLeftPotentiometer();

  int a = 10;
  int r = 2048;
  if ( release < 512 ) {
    a = 10;
    r = map( release, 0, 511, 10, 1024);
  } else {

    a = map(release, 512, 1023, 10, 512);
    r = map(release, 512, 1023, 1024, 5000);

  }
  lastFreq = mtof(note) + float(random(100)-50)/40.0f;
  osc.setFreq( lastFreq);
  sqr.setFreq( lastFreq);
  tri.setFreq( lastFreq );
  saw.setFreq( lastFreq);
  env.start(a, r);
  lfoControl.setPhase(0);

 // modulationOffset = float(random(100)-50)/20000.0f;

}


int updateAudio() {


  /*
    presets[0].carrierWave = 0;
    presets[0].phaseModulation = true;
    filterModulation
    widthModulation
    pitchModulation
  */


  if ( currentMode == 0 ) {
    Q15n16 vibrato = (Q15n16) modulationIntensity * lfoSin.next();
    return (int) (gain * osc.phMod(vibrato) ) >> 3; // MORE REDUCTION //return (int) (gain * osc.next() ) >> 3; // MORE REDUCTION

  } else if ( currentMode == 1) {
    return (int) (gain *  ( (saw.next() > lfoTri.next()) ? -120 : 120 )   ) >> 3;


  } else if (currentMode == 2) {

    return (int) (gain * lpf.next(lpf.next(lpf.next( sqr.next() ) ))) >> 3;

  } else if ( currentMode == 3 ) {


    return (int) (gain * osc.next() ) >> 3; // MORE REDUCTION //return (int) (gain * osc.next() ) >> 3; // MORE REDUCTION
  } else if ( currentMode == 4 ) {
    unsigned char xorAmt = floor(modulation * 255);
    return (int) ((osc.next()^xorAmt) * gain) >> 3;
  }

  // NOISE FILTER

  /*


      return (int) (gain * lpf.next( (sqr.next() + tri.next()) >> 1 ) ) >> 3;
  */

  /*
    // AMPLITUDE MODULATION BUT PHASE IS BETTER
    unsigned int mod = (128u + lfo.next()) * gain;
    int out = ((long)mod * osc.next())>> 11 ; // 16 bit   8 bit = 24 bit, then >>10 = 14 bit
    return out;
  */


}
