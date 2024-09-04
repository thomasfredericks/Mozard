
// MOVE MOST OF THE CODE FROM THE MAIN TAB TO Synth.h


// MOZZI STUFF
#include <Oscil.h>

#include <ADSR.h>

#include <StateVariable.h>

//Voices
// MULTIPLE VOICES DOES NOT WORK GREAT
#define NUM_VOICES 1

#include <tables/square_no_alias_2048_int8.h>
#include <tables/sin2048_int8.h>

// REPLACE WITH saw_analogue512_int8.h ?
#include <tables/saw2048_int8.h>

#define OSC_NUM_CELLS 2048

#include <tables/triangle_valve_2048_int8.h>
Oscil<OSC_NUM_CELLS, AUDIO_RATE> vibratoLfo(SIN2048_DATA);
Oscil<OSC_NUM_CELLS, AUDIO_RATE> pwmLfo(TRIANGLE_VALVE_2048_DATA);
Oscil<SIN2048_NUM_CELLS, CONTROL_RATE> controlLfo(SIN2048_DATA);


int potBPrevious = -1;

#define MODES 4
uint8_t mode = 0;

StateVariable <LOWPASS> lpf;
uint8_t filter = 0;

struct Voice {
  Oscil<OSC_NUM_CELLS , AUDIO_RATE> oscillator;  // audio oscillator
  //Oscil<OSC_NUM_CELLS , AUDIO_RATE> sub;
  byte note = 0;
  //bool subActive = 0;
  float frequency;
  ADSR <CONTROL_RATE, AUDIO_RATE> amplitudeEnvelope;
  //StateVariable <LOWPASS> filter; // can be LOWPASS, BANDPASS, HIGHPASS or NOTCH
  //int filerFrequency = 1000;
  //byte vibratoAmount;
  //ADSR <CONTROL_RATE, CONTROL_RATE> modulationEnvelope;
};

uint8_t nextVoice = 0;
struct Voice voices[NUM_VOICES];

int releaseTime = 1000;

//float noteBend = 0;

byte octave = 3;

float lastFreq = 220;

float modulation;
uint8_t vibratoAmount;
uint8_t pwmOn;
uint8_t xorAmount;

#define VIBRATO 1
#define PWM 2
#define XOR 3
#define SHAPE 4
//#define FREQUENCY 5
#define RESONANCE 6
#define FILTER 7

void ctl(byte control, byte value) {
  // Serial.print(control);
  // Serial.print(" ");
  // Serial.println(value);
  switch (control) {
    case 1:
      vibratoAmount = value;
      break;
    case 2:
      pwmOn = value;
      break;
    case 3:
      xorAmount = value;
      break;
    case 7:
      //Serial.println("filter");
      filter = value;
      break;
    case 5: {
        //Serial.println("centerFrequency");
        int centerFrequency = (int)value * 24;
        lpf.setCentreFreq(centerFrequency);
        break;
      }
    case 6:  {
        //Serial.println("resonance");
        int resonance = 255 - ((int)value * 2);
        lpf.setResonance( resonance);
        break;
      }
    case 4: {
        //Serial.println("wave");
        if ( value < 42 ) {
          for ( uint8_t vi = 0 ; vi < NUM_VOICES ; vi++ ) {
            voices[vi].oscillator.setTable(SIN2048_DATA);
          }
        } else if ( value < 84 ) {
          for ( uint8_t vi = 0 ; vi < NUM_VOICES ; vi++ ) {
            voices[vi].oscillator.setTable(SAW2048_DATA );
          }
        } else {
          for ( uint8_t vi = 0 ; vi < NUM_VOICES ; vi++ ) {
            voices[vi].oscillator.setTable( SQUARE_NO_ALIAS_2048_DATA );
          }
        }
        break;
      }
  }
}

void setMode(uint8_t newMode) {

  mode = newMode;

  if ( mode == 0 ) {
    ctl(VIBRATO, 0);
    ctl(PWM, 0);
    ctl(XOR, 0);
    ctl(SHAPE, 88);
    ctl(FILTER, 1);
    ctl(RESONANCE, 99);

  } else if ( mode == 1 ) {
    ctl(VIBRATO, 0);
    ctl(PWM, 0);
    ctl(XOR, 0);
    ctl(SHAPE, 68);
    ctl(FILTER, 1);
    ctl(RESONANCE, 61);

  } else if ( mode == 2 ) {
    ctl(VIBRATO, 0);
    ctl(PWM, 1);
    ctl(XOR, 0);
    ctl(SHAPE, 65);
    ctl(FILTER, 0);
    ctl(RESONANCE, 61);

  } else if ( mode == 3 ) {
    ctl(VIBRATO, 127);
    ctl(PWM, 0);
    ctl(XOR, 0);
    ctl(SHAPE, 6);
    ctl(FILTER, 0);
    ctl(RESONANCE, 61);
  } else if ( mode == 4 ) {
    ctl(VIBRATO, 62);
    ctl(PWM, 0);
    ctl(XOR, 110);
    ctl(SHAPE, 66);
    ctl(FILTER, 0);
    ctl(RESONANCE, 61);
  } else if ( mode == 5 ) {
    ctl(VIBRATO, 0);
    ctl(PWM, 1);
    ctl(XOR, 0);
    ctl(SHAPE, 62);
    ctl(FILTER, 1);
    ctl(RESONANCE, 38);
  } else if ( mode == 6 ) {
    ctl(VIBRATO, 56);
    ctl(PWM, 0);
    ctl(XOR, 0);
    ctl(SHAPE, 61);
    ctl(FILTER, 0);
    ctl(RESONANCE, 61);
  }

}

void synthNextMode() {

  setMode(( mode + 1 ) % MODES) ;

}

void synthSetup() {

  pwmLfo.setFreq(1.f);
  vibratoLfo.setFreq(1.f);
  lpf.setResonance( 220);

  setMode(0);

  for ( uint8_t vi = 0 ; vi < NUM_VOICES ; vi++ ) {
    voices[vi].oscillator.setTable(SAW2048_DATA);
    voices[vi].amplitudeEnvelope.setADLevels(255, 200);
    voices[vi].amplitudeEnvelope.setTimes(20, 20, 1000, 1000);
  }

}




void setModulationFrequencies() {
  float lfoFrequency = modulation * lastFreq ;
  pwmLfo.setFreq( lfoFrequency * 6);
  vibratoLfo.setFreq( lfoFrequency * 2);
  int centerFrequency = modulation * (3000-lastFreq) + (lastFreq);
  if ( centerFrequency > 3000 ) centerFrequency = 3000;
  if ( centerFrequency < 0 ) centerFrequency = 0;
  lpf.setCentreFreq(centerFrequency);
}



void synthUpdateControl() {

  int potB = Mozard.getBottomLeftPotentiometer() ;

  if ( potB != potBPrevious ) {
    potBPrevious = potB;
    modulation = potB / 1023.0;
    modulation = modulation * modulation * modulation * modulation;
    controlLfo.setFreq( modulation * 1000 + 1  );
    setModulationFrequencies();


  }



  for ( uint8_t vi = 0 ; vi < NUM_VOICES ; vi++ ) {
    struct Voice * v = voices + vi;
    v->amplitudeEnvelope.update();
    v->oscillator.setFreq(v->frequency);
    if ( mode == 3 ) {
      // DO PITCH BEND HERE
      //voices[vi].oscillator.setFreq(voices[vi].frequency + map( controlLfo.next(), -128, 127, -lastFreq / 2, lastFreq / 2));
    }
  }




  /*
    if ( currentMode == 2 ) {
    lpf.setCutoffFreq(controlLfo.next() / 2 + 64);
    } else {
    lpf.setCutoffFreq(potB >> 3 + 10);
    }
  */

}

void synthStopNote(byte note) {
  for ( uint8_t vi = 0 ; vi < NUM_VOICES ; vi++ ) {
    if ( note = voices[vi].note )  voices[vi].amplitudeEnvelope.noteOff();
  }
}



void synthPlayNote(byte note, byte velocity) {

  nextVoice = (nextVoice + 1) % NUM_VOICES;

  int level = velocity;
  level = map(level, 0, 127, 32, 255);

  octave = constrain(Mozard.getRightPotentiometer() / 120 + 1 , 1, 10);


  struct Voice * v = voices + nextVoice;
  v->note = note;
  v->frequency = mtof(note + ((octave - 4) * 12));
  lastFreq = v->frequency;


  v->amplitudeEnvelope.setAttackLevel(level);
  v->amplitudeEnvelope.setTimes(5, 5, releaseTime, releaseTime);
  //v->amplitudeEnvelope.setReleaseTime(releaseTime);
  v->amplitudeEnvelope.noteOn();

  setModulationFrequencies();

}


int updateAudio() {

  int output = 0;
  Q15n16 phaseModulation = (Q15n16) vibratoAmount * vibratoLfo.next();
  int8_t pwm = pwmLfo.next();

  for ( uint8_t vi = 0; vi < NUM_VOICES; vi++) {
    int voiceOutput;
    Voice * v = voices + vi;

    if ( vibratoAmount > 0 ) {

      voiceOutput =  v->oscillator.phMod(phaseModulation) ;
    } else {
      voiceOutput =  v->oscillator.next() ;
    }

    if ( xorAmount > 0 ) {

      voiceOutput = (voiceOutput ^ (xorAmount * 2));
    }

    if ( pwmOn > 0 ) {
      voiceOutput = ( (voiceOutput > (pwm)) ? -120 : 120 );

    }

    // CLIP ?


    int gain = v->amplitudeEnvelope.next();
    output += (voiceOutput * gain) >> 3;



  }



  // FILTER?

  if ( filter ) {
    //lpf.setCentreFreq(
    output = lpf.next( output );
  }

  // CLIP
  if ( output > 8000 )  output = 8000;
  if ( output < -8000 )  output = -8000;


  return output;

  /*
    Voice* v = voices;

    Q15n16 vibrato = (Q15n16) (vibratoAmount) * lfo.next();

    int currentSample = v->oscillator.phMod(vibrato) + sub.next();




    if ( xorAmount > 0 ) {
      //int xorAmountInt = (xorAmount << 2) ; //int xorAmountInt = (xorAmount << 7) | xorAmount;
      //currentSample = currentSample ^ (xorAmountInt);
      //currentSample = (((currentSample>>7) ^ xorAmount)<<7) + (currentSample & 127);
      int xorAmountInt = (xorAmount << 7) | xorAmount ;
      currentSample = currentSample ^ xorAmountInt;
    }

    currentSample = lpf.next( currentSample  >> 4  ); //currentSample = lpf.next( currentSample >> 9 );

    //    unsigned char xorAmt = floor(modulation * 255);
    //    return (int) ((osc.next()^xorAmt) * gain) >> 3;



    currentSample *=  v->envelope.next()  ;







    return currentSample;

    //return (int) (currentSample) >> 3;
  */


}
