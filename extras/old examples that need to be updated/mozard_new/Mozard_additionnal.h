
#ifndef NOMIDI
#include <mozzi_midi.h>
#include <MIDI.h>
MIDI_CREATE_DEFAULT_INSTANCE();

#endif

/*
void handleNoteOn(byte channel, byte pitch, byte velocity) {
  playNote(pitch);
}

void handleNoteOff(byte channel, byte pitch, byte velocity) {
  
}
*/
Mozard_additionnal_setup() {
#ifndef NOMIDI

   MIDI.setHandleNoteOn(handleNoteOn);  // Put only the name of the function

  // Do the same for NoteOffs
  MIDI.setHandleNoteOff(handleNoteOff);

  // Initiate MIDI communications, listen to all channels
  MIDI.begin(MIDI_CHANNEL_OMNI);
  #else
  Serial.begin(57600);
  #endif

}

Mozard_additionnal_loop() {
  #ifndef NOMIDI
  MIDI.read();
  #endif
}
