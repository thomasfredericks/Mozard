

// MOZARD HARDWARE AND MOZZI SETUP
// ===============================
// Increase MOZARD_TOUCH_SENSITIVITY if your keyboard is too sensitive
// Default is 2
#define MOZARD_TOUCH_SENSITIVITY 2
#define NOMIDI


#include <Mozard.h>





unsigned int blinkCounter = 0;


boolean arpeggiatorRunning = false;

#include "Arpeggiator.h"
Arpeggiator arp = Arpeggiator();


#include "Simplest.h"

void setup() {



  mozard.setup();


  pinMode(13, OUTPUT);
  digitalWrite(13, LOW);

  synthSetup();
}






void updateControl() {

  mozard.updateControl();

  synthUpdateControl();
  
  mozard.setOctave( mozard.getPotC() / 120 + 1 ); // USE MAP INSTEAD

  if ( mozard.buttonAPressed() ) {
    arpeggiatorRunning = !arpeggiatorRunning;
    if ( !arpeggiatorRunning ) {
      arp.clear();
      digitalWrite(13, LOW);
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

  if ( arpeggiatorRunning ) {
    arp.interval = (mozard.getPotA()) / 10 + 1;
  }

 

}



// DO NOT CHANGE ANYTHING AFTER THIS
void loop() {
  mozard.loop();
}
