// MOZARD HARDWARE AND MOZZI SETUP
#include <Mozard.h>


// MOZZI STUFF
#include <Oscil.h>
#include <Ead.h> // Exponential attack decay envelope.
#include <tables/sin2048_int8.h> // sine table for oscillator
Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> aSin(SIN2048_DATA);
Ead envelope(CONTROL_RATE);


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

  aSin.setFreq( mtof(note));

  int potA = mozard.getPotA();
  int potB = mozard.getPotB();
  envelope.start(potA / 4, potB * 2 + decay_ms);

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
  return (int) (gain * aSin.next()) >> 2; // 16 bits scaled to 14 bits
}

// DO NOT CHANGE ANYTHING AFTER THIS
void loop() {
  audioHook();
}
