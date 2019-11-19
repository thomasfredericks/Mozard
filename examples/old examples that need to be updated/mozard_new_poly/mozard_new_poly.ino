

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

#define VOICES 3

#define SIN_TABLES

#ifdef SIN_TABLES
#include <tables/sin2048_int8.h> // sine table for oscillator
Oscil<SIN2048_NUM_CELLS, AUDIO_RATE> osc[] = {Oscil<SIN2048_NUM_CELLS, AUDIO_RATE>(SIN2048_DATA), Oscil<SIN2048_NUM_CELLS, AUDIO_RATE>(SIN2048_DATA), Oscil<SIN2048_NUM_CELLS, AUDIO_RATE>(SIN2048_DATA)};
#else
#include <tables/triangle_valve_2048_int8.h>
Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE> osc[] = {Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE>(TRIANGLE_VALVE_2048_DATA), Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE>(TRIANGLE_VALVE_2048_DATA), Oscil<TRIANGLE_VALVE_2048_NUM_CELLS, AUDIO_RATE>(TRIANGLE_VALVE_2048_DATA)};

#endif



// audio oscillator
//Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> osc(SIN2048_DATA);

// envelope generator
// Ead envelope(CONTROL_RATE);
Ead env[] = {Ead(CONTROL_RATE), Ead(CONTROL_RATE), Ead(CONTROL_RATE)};
int gain[] = {0, 0, 0};


uint8_t voice = 0;



unsigned int blinkCounter = 0;


boolean arpeggiatorRunning = false;

#include "Arpeggiator.h"
Arpeggiator arp = Arpeggiator();




void setup() {



  mozard.setup();

  // osc[i].setTable(SIN2048_DATA);

  pinMode(13, OUTPUT);
  digitalWrite(13, HIGH);



}


void playNote( uint8_t note ) {

  

  int potA = mozard.getPotA();

  int a = 10;
  int r = 2048;
  if ( potA < 400) {
    a = 10;
    r = map( potA, 0, 399, 10, 1024);
  } else if ( potA < 800) {
    a = map(potA, 400, 799, 10, 512);
    r = map(potA, 400, 799, 1024, 2048);
  } else {
    a = 512;//map(potA,800,1023,512,100);
    r = map(potA, 800, 1023, 2048, 10);

  }

  Serial.print(a);
  Serial.print(" ");
  Serial.println(r);

  osc[voice].setFreq( mtof(note));
  env[voice].start(a, r);

  voice = (voice + 1)%VOICES;

}



void updateControl() {

  mozard.updateControl();

  int potB = mozard.getPotB();
  arp.interval = (1023 - potB) / 10 + 1;

  mozard.setOctave( mozard.getPotC() / 120 + 1 ); // USE MAP INSTEAD

  if ( mozard.buttonAPressed() ) {
    arpeggiatorRunning = !arpeggiatorRunning;
    if ( !arpeggiatorRunning ) {
      arp.clear();
      digitalWrite(13, HIGH);
    }
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
  for (uint8_t i = 0; i < VOICES; i++) {
    gain[i] = (int) env[i].next();
  }

}


int updateAudio() {
  int currentSample = 0;

  for (uint8_t i = 0; i < VOICES; i++) {
    currentSample += (gain[i] * osc[i].next()) >> 2 ;
  }
  return (int) (currentSample) >>1 ; // BOOSTED AFTER REDUCTION : 16 bits scaled to 14 bits
  //return (int) (currentSample) >> 2; // NORMAL : 16 bits scaled to 14 bits
                /*
                  return (int) (gain * aSin.next()) >> 2; // 16 bits scaled to 14 bits
                */
}

       // DO NOT CHANGE ANYTHING AFTER THIS
void loop() {
  mozard.loop();

}
