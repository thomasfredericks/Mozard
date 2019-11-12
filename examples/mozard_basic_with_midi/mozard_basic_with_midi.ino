

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



void keyPressed(byte key) {

  if ( arp.isRunning() ) {
    arp.addKey( key );
  } else {
    synthPlayNote( Mozard.keyToNote(key));
  }

}

void keyReleased(byte key) {

  if ( arp.isRunning() ) {
    arp.removeKey( key );
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

void receivedMidiNoteOn(byte channel, byte note, byte velocity) {
  synthPlayNote(note);
}


void setup() {

  Mozard.setup();
  Mozard.setKeyPressedCallback( keyPressed );
  Mozard.setKeyReleasedCallback( keyReleased );
  Mozard.setButtonLeftPressedCallback( buttonLeftPressed );
  Mozard.setButtonRightPressedCallback( buttonRightPressed );
  Mozard.setMidiNoteOnCallback( receivedMidiNoteOn );
  
  pinMode(13, OUTPUT);
  digitalWrite(13, LOW);


 synthSetup();
 

}


void updateControl() {

  Mozard.setOctave( Mozard.getRightPotentiometer() / 120 + 1 ); // USE MAP INSTEAD

  Mozard.updateControl();

  synthUpdateControl();

  if ( arp.isRunning() ) {
    arp.interval = (Mozard.getTopLeftPotentiometer()) / 10 ;
    if ( arp.update() ) {
      digitalWrite(13, !digitalRead(13));
      if ( arp.available() ) synthPlayNote( Mozard.keyToNote( arp.getKey() ));
    }
  }

}



// DO NOT ADD ANYTHING TO loop().
// IT NEEDS TO EXECUTE REAL FAST!
void loop() {
  Mozard.loop();
}
