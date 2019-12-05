

// MOZARD HARDWARE AND MOZZI SETUP
// ===============================
// Increase MOZARD_TOUCH_SENSITIVITY if your keyboard is too sensitive
// Default is 2
#define MOZARD_TOUCH_SENSITIVITY 2
#define NOMIDI


#include "Mozard_additionnal.h" // TO BE PUT IN Mozard.h
#include <Mozard.h>



// MOZZI STUFF
#include <Oscil.h>
#include <Ead.h> // Exponential attack decay envelope.
#include <tables/sin2048_int8.h> // sine table for oscillator
Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> aSin(SIN2048_DATA);
Ead envelope(CONTROL_RATE);


int gain;

unsigned int blinkCounter = 0;


boolean arpeggiatorRunning = false;

#include "Arpeggiator.h"
Arpeggiator arp = Arpeggiator();




void setup() {

  

  mozard.setup();

  pinMode(13, OUTPUT);
  digitalWrite(13, HIGH);

  Mozard_additionnal_setup();


}


void playNote( uint8_t note ) {
  
  aSin.setFreq( mtof(note));

  int potA = mozard.getPotA();

  int a = 10;
  int r = 2048;
  if ( potA < 400) {
    a = 10;
    r = map( potA, 0, 399, 10, 1024);
  } else if ( potA < 800) {
    a = map(potA,400,799,10,512);
    r = map(potA,400,799,1024,2048);
  } else {
    a = 512;//map(potA,800,1023,512,100);
    r = map(potA,800,1023,2048,10);
    
  }

  Serial.print(a);
  Serial.print(" ");
  Serial.println(r);
  
  envelope.start(a, r);

}



void updateControl() {

  mozard.updateControl();

  int potB = mozard.getPotB();
  arp.interval = (1023-potB) / 10 + 1;

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

  gain = (int) envelope.next();
}


int updateAudio() {
  return (int) (gain * aSin.next()) >> 2; // 16 bits scaled to 14 bits
}

// DO NOT CHANGE ANYTHING AFTER THIS
void loop() {
  Mozard_additionnal_loop();
  audioHook();
}
