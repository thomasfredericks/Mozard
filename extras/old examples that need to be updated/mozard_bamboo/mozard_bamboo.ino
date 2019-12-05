// MOZARD HARDWARE AND MOZZI SETUP
#include <Mozard.h>


// MOZZI STUFF
#include <Ead.h> // Exponential attack decay envelope.
Ead envelope(CONTROL_RATE);

/*
#include <Oscil.h>
#include <tables/sin2048_int8.h> // sine table for oscillator
Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> aSin(SIN2048_DATA);
*/
#include <Sample.h> // Sample template
#include <samples/burroughs1_18649_int8.h>
#include <samples/bamboo/bamboo_00_2048_int8.h> // wavetable data

// use: Sample <table_size, update_rate> SampleName (wavetable)
Sample <BURROUGHS1_18649_NUM_CELLS, AUDIO_RATE> aSample(BURROUGHS1_18649_DATA);
Sample <BAMBOO_00_2048_NUM_CELLS, AUDIO_RATE>aBamboo0(BAMBOO_00_2048_DATA);


int gain;

unsigned int attack_ms = 0;
unsigned int decay_ms = 100;

unsigned int blinkCounter = 0;




boolean arpeggiatorRunning = false;

#include "Arpeggiator.h"
Arpeggiator arp = Arpeggiator();

void setup() {

  Serial.begin(57600);

  mozard.setup();

  pinMode(13, OUTPUT);
  digitalWrite(13, HIGH);


}


void playNote( uint8_t note ) {

  float speed =  pow(2, (float)(note - 60) / 12.f);

  int potA = mozard.getPotA();n
  int potB = mozard.getPotB();
  envelope.start(potA / 4, potB * 2 + decay_ms);

  aBamboo0.setFreq((float) BAMBOO_00_2048_SAMPLERATE / (float) BAMBOO_00_2048_NUM_CELLS * speed  );

  aBamboo0.start();

}



void updateControl() {

  mozard.updateControl();

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
      Serial.println( mozard.getKeyPressed() + 60 ) ;
      arp.addKey( mozard.getKeyPressed() );
    }

    if ( mozard.aKeyIsReleased() ) {
      Serial.println( mozard.getKeyReleased() + 90 ) ;
      arp.removeKey( mozard.getKeyReleased() );
    }

    if ( arp.update() ) {
      digitalWrite(13, !digitalRead(13));
      if ( arp.available() ) playNote( mozard.keyToNote( arp.getKey() ));
      
    }
    
  } else {
    if ( mozard.aKeyIsPressed() ) {
      Serial.println( mozard.getKeyPressed() ) ;
      playNote( mozard.getNotePressed() );
    }
  }

  gain = (int) envelope.next();
}


int updateAudio() {
   return (int) (aSample.next() + aBamboo0.next()) << 6; // 8 bits scaled up to 14 bits
  //return (int) (gain * aSin.next()) >> 2; // 16 bits scaled to 14 bits
}

// DO NOT CHANGE ANYTHING AFTER THIS
void loop() {
  audioHook();
}
