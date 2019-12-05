

// MOZARD HARDWARE AND MOZZI SETUP
// ===============================
// Increase MOZARD_TOUCH_SENSITIVITY if your keyboard is too sensitive
// Default is 2
#define MOZARD_TOUCH_SENSITIVITY 2
//#define NOMIDI


#include <Mozard.h>


unsigned int blinkCounter = 0;


#include "Arpeggiator.h"
Arpeggiator arp = Arpeggiator();


#include "Synth.h"

byte release = 127;


 
void keyPressed(byte key) {

  if ( arp.isRunning() ) {
    
    arp.addKey( key );
    
  } else {

    synthPlayNote( Mozard.keyToNote(key), release);
  }

}

void keyReleased(byte key) {

  if ( arp.isRunning() ) {
    arp.removeKey( key );
  } 
  
}

void receivedMidiNoteOn(byte channel, byte note, byte velocity) {
  
   if ( arp.isRunning() ) {
    arp.addKey( note - 36);
   } else {
   
  synthPlayNote(note, map(velocity,0,127,release >> 3,release));
  }
}

void receivedMidiNoteOff(byte channel, byte note, byte velocity) {
  
   if ( arp.isRunning() ) {
    arp.removeKey( note - 36 );
  }
  
  
}

void buttonLeftPressed() {

  synthChangeMode();

}

void buttonRightPressed() {

  arp.toggle();
  if ( !arp.isRunning()  ) {
    arp.clear();
    digitalWrite(13, LOW);
  }

}



void receivedPitchBend(byte channel, int bend) {
  synthBend(bend);
}

void setup() {

  Mozard.setup();
  Mozard.setKeyPressedCallback( keyPressed );
  Mozard.setKeyReleasedCallback( keyReleased );
  Mozard.setButtonLeftPressedCallback( buttonLeftPressed );
  Mozard.setButtonRightPressedCallback( buttonRightPressed );
  Mozard.setMidiNoteOnCallback( receivedMidiNoteOn );
  Mozard.setMidiNoteOffCallback( receivedMidiNoteOff );
  Mozard.setPitchBendCallback( receivedPitchBend );
  
  pinMode(13, OUTPUT);
  digitalWrite(13, LOW);


 synthSetup();
 

}


void updateControl() {

  synthSetOctave( Mozard.getRightPotentiometer() / 120 + 1 );

  Mozard.updateControl();

  release = Mozard.getTopLeftPotentiometer() >> 4;

  synthUpdateControl();

  if ( arp.isRunning() ) {
    arp.interval = (Mozard.getTopLeftPotentiometer()) / 10 ;
    if ( arp.update() ) {
      digitalWrite(13, !digitalRead(13));
      if ( arp.available() ) synthPlayNote( Mozard.keyToNote(arp.getKey()) , release);
    }
  }

}



// DO NOT ADD ANYTHING TO loop().
// IT NEEDS TO EXECUTE REAL FAST!
void loop() {
  Mozard.loop();
}
