

// MOZARD HARDWARE AND MOZZI SETUP
// ===============================
// Increase MOZARD_TOUCH_SENSITIVITY if your keyboard is too sensitive
// Default is 2
#define MOZARD_TOUCH_SENSITIVITY 2
#define NOMIDI


#include <Mozard.h>



// MOZZI STUFF
#include <Oscil.h>
#include <Ead.h> // Exponential attack decay envelope.


// #define POLY
#define SIN_TABLES


#ifdef POLY

#define VOICES 3
uint8_t voice = 0;

#ifdef SIN_TABLES
#include <tables/sin2048_int8.h> // sine table for oscillator
Oscil<SIN2048_NUM_CELLS, AUDIO_RATE> osc[] = {Oscil<SIN2048_NUM_CELLS, AUDIO_RATE>(SIN2048_DATA), Oscil<SIN2048_NUM_CELLS, AUDIO_RATE>(SIN2048_DATA), Oscil<SIN2048_NUM_CELLS, AUDIO_RATE>(SIN2048_DATA)};
#else
#include <tables/triangle_valve_2048_int8.h>
Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE> osc[] = {Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE>(TRIANGLE_VALVE_2048_DATA), Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE>(TRIANGLE_VALVE_2048_DATA), Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE>(TRIANGLE_VALVE_2048_DATA)};
#endif

#else

#ifdef SIN_TABLES
#include <tables/sin2048_int8.h> // sine table for oscillator
Oscil<SIN2048_NUM_CELLS, AUDIO_RATE> osc(SIN2048_DATA);
#else
#include <tables/triangle_valve_2048_int8.h>
Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE> osc(TRIANGLE_VALVE_2048_DATA);
#endif

#endif



// audio oscillator
//Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> osc(SIN2048_DATA);

// envelope generator
// Ead envelope(CONTROL_RATE);
#ifdef POLY
Ead env[] = {Ead(CONTROL_RATE), Ead(CONTROL_RATE), Ead(CONTROL_RATE)};
int gain[] = {0, 0, 0};
#else
Ead env(CONTROL_RATE);
int gain = 0;
#endif


#include <tables/cos2048_int8.h>
#include <mozzi_fixmath.h>
Oscil<COS2048_NUM_CELLS, AUDIO_RATE> lfo(COS2048_DATA);

unsigned int blinkCounter = 0;


boolean arpeggiatorRunning = false;

#include "Arpeggiator.h"
Arpeggiator arp = Arpeggiator();


int ratio;

uint8_t vibratoIntensity = 255;

void setup() {



  mozard.setup();

  // osc[i].setTable(SIN2048_DATA);

  pinMode(13, OUTPUT);
  digitalWrite(13, HIGH);

 ratio = mozard.getPotA();

 lfo.setFreq(1.f);

}


void playNote( uint8_t note ) {

   // int ratio = mozard.getPotA();
   if ( !arpeggiatorRunning ) {
    ratio = mozard.getPotA();
    
  }
  

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


#ifdef POLY
  osc[voice].setFreq( mtof(note));
  env[voice].start(a, r);

  voice = (voice + 1) % VOICES;
#else
  osc.setFreq( mtof(note));
  env.start(a, r);
#endif
}



void updateControl() {

  mozard.updateControl();

  int potB = mozard.getPotB();
  lfo.setFreq( potB );
  vibratoIntensity = (1023-potB)/4;
  
  mozard.setOctave( mozard.getPotC() / 120 + 1 ); // USE MAP INSTEAD

  if ( mozard.buttonAPressed() ) {
    arpeggiatorRunning = !arpeggiatorRunning;
    if ( !arpeggiatorRunning ) {
      arp.clear();
      digitalWrite(13, HIGH);
    }
  }

  if ( mozard.buttonBPressed() ) {
    Serial.println("BUTB");
  }

  if ( arpeggiatorRunning ) {

    if ( mozard.aKeyIsPressed() ) {
      //Serial.println( mozard.getKeyPressed() + 60 ) ;
      arp.addKey( mozard.getKeyPressed() );
    }

    if ( mozard.aKeyIsReleased() ) {
      // Serial.println( mozard.getKeyReleased() + 90 ) ;
      arp.removeKey( mozard.getKeyReleased() );
    }

    if ( arp.update() ) {
      digitalWrite(13, !digitalRead(13));
      if ( arp.available() ) playNote( mozard.keyToNote( arp.getKey() ));

    }

  } else {
    if ( mozard.aKeyIsPressed() ) {
      //Serial.println( mozard.getKeyPressed() ) ;
      playNote( mozard.getNotePressed() );
    }
  }

  if ( arpeggiatorRunning ) {
    arp.interval = (mozard.getPotA()) / 10 + 1;
  }




#ifdef POLY
  for (uint8_t i = 0; i < VOICES; i++) {
    gain[i] = (int) env[i].next();
  }
#else
  gain = (int) env.next();
#endif
}


int updateAudio() {


#ifdef POLY
  int currentSample = 0;
  for (uint8_t i = 0; i < VOICES; i++) {
    currentSample += (gain[i] * osc[i].next()) >> 2 ;
  }
  return (int) (currentSample) >> 2 ; // NORMAL : 16 bits scaled to 14 bits
#else

   Q15n16 vibrato = (Q15n16) vibratoIntensity * lfo.next();
    //return aCos.phMod(vibrato); // phase modulation to modulate frequency
  return (int) (gain * osc.phMod(vibrato) ) >> 3; // MORE REDUCTION //return (int) (gain * osc.next() ) >> 3; // MORE REDUCTION
  //return (int) (gain * osc.next()) >> 2; // 16 bits scaled to 14 bits
#endif
  /*
    return (int) (gain * aSin.next()) >> 2; // 16 bits scaled to 14 bits
  */
}

// DO NOT CHANGE ANYTHING AFTER THIS
void loop() {
  mozard.loop();

}
