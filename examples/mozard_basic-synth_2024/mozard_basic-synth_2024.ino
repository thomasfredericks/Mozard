// MOZARD HARDWARE AND MOZZI SETUP
// ===============================
// Increase MOZARD_TOUCH_SENSITIVITY if your keyboard is too sensitive
// Default is 2
#define MOZARD_TOUCH_SENSITIVITY 2

#include <Mozard.h>


unsigned int blinkCounter = 0;


#include "Arpeggiator.h"
Arpeggiator arp = Arpeggiator();
bool resetArpOnNextKeyPress = false;

#include "Synth.h"

//byte release = 127;

int previousPot = -1;



void keyPressed(byte key) {

  if (arp.isRunning()) {
    if ( resetArpOnNextKeyPress ) arp.clear();
    resetArpOnNextKeyPress = false;
    arp.addKey(key);

  } else {

    synthPlayNote(Mozard.keyToNote(key), 100);
  }
}

void keyReleased(byte key) {

  if (arp.isRunning()) {
    uint8_t count =Mozard.getKeyPressedCount();   
    if (count == 0 ) {
      resetArpOnNextKeyPress = true;
    }
    //arp.removeKey(key);
  } else {
    synthStopNote(Mozard.keyToNote(key));
  }
}

void receivedMidiNoteOn(byte channel, byte note, byte velocity) {

  //if (channel == 7) {
    if (arp.isRunning()) {
      arp.addKey(Mozard.noteToKey(note));
    } else {

      synthPlayNote(note, velocity);
    }
  //}
}

void receivedMidiNoteOff(byte channel, byte note, byte velocity) {
 // if (channel == 7) {
    if (arp.isRunning()) {
      arp.removeKey(Mozard.noteToKey(note));
    } else {
      synthStopNote(note);
    }
 // }
}


void buttonRightPressed() {

  arp.toggle();
  resetArpOnNextKeyPress = true;
  if (!arp.isRunning()) {
    arp.clear();
    digitalWrite(13, LOW);
  }
}



void receivedPitchBend(byte channel, int bend) {
  //synthBend(bend);
}


void setup() {

  Mozard.setup();
  Mozard.setKeyPressedCallback(keyPressed);
  Mozard.setKeyReleasedCallback(keyReleased);
  Mozard.setButtonLeftPressedCallback(synthNextMode);
  Mozard.setButtonRightPressedCallback(buttonRightPressed);
  Mozard.setMidiNoteOnCallback(receivedMidiNoteOn);
  Mozard.setMidiNoteOffCallback(receivedMidiNoteOff);
  Mozard.setControlChangeCallback(ctl);


  pinMode(13, OUTPUT);
  digitalWrite(13, LOW);


  synthSetup();
}


void updateControl() {



  Mozard.updateControl();


  synthUpdateControl();

  if (arp.isRunning()) {
    int newPot = Mozard.getTopLeftPotentiometer();
    if (previousPot != newPot) {
      previousPot = newPot;
      releaseTime = mtof(newPot >> 3) + 20;
      arp.interval = (Mozard.getTopLeftPotentiometer()) / 10;
    }
    
    if (arp.update()) {
      digitalWrite(13, !digitalRead(13));

      if (arp.noteOn()) synthPlayNote(Mozard.keyToNote(arp.getKey()), 127);
      // WHAT TO DO WITH THE NEXT LINE?
      //else envelope.noteOff();
    }
  } else {
    int newPot = Mozard.getTopLeftPotentiometer();
    if (previousPot != newPot) {
      previousPot = newPot;
      releaseTime = mtof(newPot >> 3) + 20;
    }
  }
}



// DO NOT ADD ANYTHING TO loop().
// IT NEEDS TO EXECUTE REAL FAST!
void loop() {
  Mozard.loop();
}
