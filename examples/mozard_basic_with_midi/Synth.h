// MOZZI STUFF
#include <Oscil.h>



#include <LowPassFilter.h>

LowPassFilter lpf;

// #define POLY
#define SIN_TABLES



#include <tables/sin2048_int8.h> // sine table for oscillator
Oscil<SIN2048_NUM_CELLS, AUDIO_RATE> osc(SIN2048_DATA);



#include <tables/saw2048_int8.h>
Oscil<SAW2048_NUM_CELLS, AUDIO_RATE> saw(SAW2048_DATA );

#include <tables/square_no_alias_2048_int8.h>
Oscil<SQUARE_NO_ALIAS_2048_NUM_CELLS , AUDIO_RATE> sqr(SQUARE_NO_ALIAS_2048_DATA);


// audio oscillator
//Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> osc(SIN2048_DATA);

// envelope generator
// Ead envelope(CONTROL_RATE);

#include <ADSR.h>

//#include <Ead.h> // Exponential attack decay envelope.
//Ead env(CONTROL_RATE);
ADSR <AUDIO_RATE, AUDIO_RATE> envelope;
int gain = 0;
int releaseTime = 1000;


//#include <tables/cos2048_int8.h>
//#include <mozzi_fixmath.h>
Oscil<SIN2048_NUM_CELLS, AUDIO_RATE> lfoSin(SIN2048_DATA);

Oscil<SIN2048_NUM_CELLS, CONTROL_RATE> lfoControl(SIN2048_DATA);

#include <tables/triangle_valve_2048_int8.h>
//Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE> tri(TRIANGLE_VALVE_2048_DATA);
Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE> lfoTri(TRIANGLE_VALVE_2048_DATA);


float baseNote = 48;
float lastFreq = 440.0f;
float noteBend = 0;

float modulation = 0;
float modulationOffset = 0;
uint8_t modulationIntensity = 0;

byte octave = 3;

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
  
  lfoSin.setFreq(1.f);

  envelope.setADLevels(255,200);
  envelope.setTimes(20,20,1000,1000);
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

  //gain = (int) env.next();
}


void synthSetOctave(int newOctave  ) {
  octave = constrain(newOctave,1,10);
    //Mozard.setOctave( Mozard.getRightPotentiometer() / 120 + 1 ); // USE MAP INSTEAD
}

void _setFrequency() {
   
    lastFreq = mtof(baseNote + noteBend + ((octave-4)*12));
        
    osc.setFreq( lastFreq);
    sqr.setFreq( lastFreq);
//  tri.setFreq( lastFreq );
    saw.setFreq( lastFreq);
}

void synthBend(int rawBend) {
   noteBend = (map(rawBend, 0, 16383, -1200, 1200))/100.0f;
   _setFrequency();
 
}

void synthPlayNote(byte note, byte velocity) {

 

  /*
  if ( velocity < 64 ) {
   // a = 10;
    r = map( velocity, 0, 63, 10, 1024);
  } else {

    //a = map(velocity, 64, 127, a, 512);
    r = map(velocity, 64, 127, 1024, 20000);

  }
*/
  int level = velocity;
  level = map(level,0,127,64,255);
  envelope.setADLevels(level,level-8);
  int a = 10;
  int r = releaseTime ;
  envelope.setTimes(a,a,r,r/4);
  
  baseNote = (float)note;
  _setFrequency();
  //env.start(a, r);
  envelope.noteOn();
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

  envelope.update();
  gain = envelope.next();

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
