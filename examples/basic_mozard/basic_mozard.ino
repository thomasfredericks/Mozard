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


void setup() {

  Serial.begin(57600);
  
  mozard.setup();

  pinMode(13,OUTPUT);
  
}


void updateControl() {

  blinkCounter++;
  if ( blinkCounter > 250 ) {
    digitalWrite(13,!digitalRead(13));
    blinkCounter = 0;
  }

  mozard.updateControl();

  if ( mozard.buttonAPressed() ) {
    // do something
  }
  

  if ( mozard.aKeyIsPressed() ) {

    mozard.setOctave( mozard.getPotC() / 120 + 1 ); 
    
    uint8_t note = mozard.getNotePressed();
    Serial.println(note);
    int freq = mtof(note);
    
    aSin.setFreq(freq);

    int potA = mozard.getPotA();
    int potB = mozard.getPotB();
    envelope.start(potA / 4, potB * 2 + decay_ms);

  }

  gain = (int) envelope.next();

}


int updateAudio() {
  //return aSin.next() << 6; // 8 bits scaled up to 14 bits

  return (int) (gain * aSin.next()) >> 2; // 16 bits scaled to 14 bits
}


// DO NOT CHANGE LOOP()
void loop() {
  audioHook();
}
