
WARNING : ON OLD BOARD LM386 IS SUPER HOT! WHY?



// MOZARD HARDWARE AND MOZZI SETUP
// ===============================
// Increase MOZARD_TOUCH_SENSITIVITY if your keyboard is too sensitive
#define MOZARD_TOUCH_SENSITIVITY 3
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

void handleNoteOn(byte channel, byte pitch, byte velocity) {
  playNote(pitch);
}

void handleNoteOff(byte channel, byte pitch, byte velocity) {
  
}


void setup() {

  //Serial.begin(57600);

  mozard.setup();

  pinMode(13, OUTPUT);
  digitalWrite(13, HIGH);

  MIDI.setHandleNoteOn(handleNoteOn);  // Put only the name of the function

  // Do the same for NoteOffs
  MIDI.setHandleNoteOff(handleNoteOff);

  // Initiate MIDI communications, listen to all channels
  MIDI.begin(MIDI_CHANNEL_OMNI);


}


void playNote( uint8_t note ) {
  
  aSin.setFreq( mtof(note));

  int potA = mozard.getPotA();
  int potB = mozard.getPotB();
  /*
  Serial.print(potA);
  Serial.print(" ");
  Serial.print(potB);
  Serial.print(" ");
  Serial.println(note);
  */
  envelope.start(potA / 4 + 1, potB * 2 + 100);

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
  MIDI.read();
  audioHook();
}
