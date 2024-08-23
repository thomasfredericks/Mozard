#ifndef _MOZARD_MIDI_
#define _MOZARD_MIDI_

// TODO
/*
http://midi.teragonaudio.com/tech/midispec/run.htm

A recommended approach for a receiving device is to maintain its "running status buffer" as so:

    Buffer is cleared (ie, set to 0) at power up.
    Buffer stores the status when a Voice Category Status (ie, 0x80 to 0xEF) is received.
    Buffer is cleared when a System Common Category Status (ie, 0xF0 to 0xF7) is received.
    Nothing is done to the buffer when a RealTime Category message is received (ie, Status of 0xF8 to 0xFF).
        Because a RealTime message may be received at any time, including interspersed with another message, it should be handled transparently. For example, if a 0xF8 byte was received inbetween any 2 bytes of the above examples, the 0xF8 should be processed immediately, and then the device should resume processing the example streams exactly as it would have otherwise. Because RealTime messages only consist of a Status, running status obviously can't be implemented on RealTime messages.
    Any data bytes are ignored when the buffer is 0.

*/


#ifndef __MICRO_LOG__
#define LOG(...)
#endif


#define MIDI_PITCH_BEND_CENTER 8192

class MozardMidi {

  void (*noteOnCallback)(byte channel, byte note, byte velocity);
  void (*noteOffCallback)(byte channel, byte note);
  void (*controlChangeCallback) (byte channel, byte controller, byte value);
  void (*pitchBendCallback) (byte channel, int pitch);

private:
  byte midiChannel;
  byte runningStatusIn;

  uint8_t midiMessageLength = 0;
  byte midiMessage[3];
  Stream * stream;

  const static byte MICRO_MIDI_NOTE_OFF = 0x80;
  const static byte MICRO_MIDI_NOTE_ON = 0x90;
  const static byte MICRO_MIDI_CTL = 0xB0;
  const static byte MICRO_MIDI_BEND = 0xE0;


public:

  const static unsigned long MIDI_SERIAL_BAUD = 31250;
  const static int MIDI_SERIAL_CONFIG = SERIAL_8N1;


  /*
    #define MM_NOTE_OFF 0x08
    #define MM_NOTE_ON 0x09
    #define MM_CTL 0x0B
    #define MM_BAUD 31250
  */
  MozardMidi( Stream * stream) {
    this->stream = stream;
  }

  void setControlChangeCallback(void (*fptr)(byte channel, byte controller, byte value)) {
    controlChangeCallback = fptr;
  }

  void setMidiNoteOnCallback(void (*fptr)(byte channel, byte note, byte velocity)) {
    noteOnCallback = fptr;
  }

  void setMidiNoteOffCallback(void (*fptr)(byte channel, byte note)) {
    noteOffCallback = fptr;
  }
  
    void setMidiPitchBendCallback(void (*fptr)(byte channel, int pitch)) {
    pitchBendCallback = fptr;
  }

  /*
      void dd(int indata) {
          Serial.print(indata);
          Serial.print("->");
          Serial.print(midiType);
          Serial.print(" ");
          Serial.print(midiMessageLength);
          Serial.print(" ");
          Serial.print(midiMessage[0]);
          Serial.print(" ");
          Serial.print(midiMessage[1]);
          Serial.println();
      }
  */
  void receiveMessages() {
    while (stream->available() ) {
      int data = stream->read();

      //Serial.print("RAW ");
      //Serial.println(data);

      if (data < 0x80) { // 0x80 == 128 == B10000000
        if ( runningStatusIn && runningStatusIn < 0xF0 ) {
         
            midiMessage[midiMessageLength] = data;
            midiMessageLength++;

            if ( midiMessageLength == 2 ) {
              // dd(indata);

              if ( runningStatusIn == MICRO_MIDI_NOTE_ON    ) {
                if ( midiMessage[1] > 0  ) {
                  LOG("MicroOsc:NoteOn", midiChannel, midiMessage[0], midiMessage[1]);
                  if ( noteOnCallback) noteOnCallback(midiChannel, midiMessage[0], midiMessage[1]);
                } else {
                  LOG("MicroOsc:NoteOff", midiChannel, midiMessage[0]);
                  if ( noteOffCallback ) noteOffCallback(midiChannel, midiMessage[0] );
                }

              } else if ( runningStatusIn == MICRO_MIDI_NOTE_OFF   ) {
                LOG("MicroOsc:NoteOff", midiChannel, midiMessage[0]);
                if ( noteOffCallback ) noteOffCallback(midiChannel, midiMessage[0] );

              } else if ( runningStatusIn == MICRO_MIDI_CTL  ) {
                //Serial.println("CTRL");
                if ( controlChangeCallback ) controlChangeCallback(midiChannel, midiMessage[0] , midiMessage[1]);

              } else if ( runningStatusIn == MICRO_MIDI_BEND  ) {
                  if ( pitchBendCallback) pitchBendCallback(midiChannel, midiMessage[0] + (midiMessage[1]<<7));

              }

              midiMessageLength = 0;
            }
        } else {
          midiMessageLength = 0;
        }

      } else {

        // GET RID OF CHANNEL DATA
        int incommingDataType = data & B11110000;


        if ( incommingDataType  < 0xF0 ) {
          // Voice Category Status
          runningStatusIn = data;
          // GET CHANNEL DATA AND OFFSET IT BY 1
          midiChannel = (data & B00001111) + 1;
        } else if (  incommingDataType < 0xF8 ) {
          // System Common Category Status
          runningStatusIn = 0;
        }
        midiMessageLength = 0;
      }

      //dd(indata);
    }
  }

  // Copied from https://github.com/little-scale/mtof created by Sebastian Tomczak, 25 March 2017 
  static float midiToFrequency( float note , float baseFrequency, float baseNote) {
    return baseFrequency * pow (2.0, (note - baseNote) / 12.0);
  }
  static float midiToFrequency(float note) {
    return midiToFrequency(note, 440.0, 69.0);
  }

  // Copied from https://github.com/little-scale/mtof created by Sebastian Tomczak, 25 March 2017 
  static float frequencyToMidi(float frequency, float baseFrequency, float baseNote) {
    return baseNote + (12.0 * log(frequency / baseFrequency) / log(2));
  }
  static float frequencyToMidi(float frequency) {
    return frequencyToMidi(frequency,440.0, 69.0);
  }


};

template <int L>
class MicroMidiLastNoteHeldTable {
  byte data[L];
  int count = 0;
  void shiftNotes(int index) {
    count = count - 1;
    for (int i = index; i < count; i++) {
      data[i] = data[i + 1];
    }
  }
public:


  void removeNote(byte note) {
    for (int i = 0; i < count; i++) {
      if (data[i] == note) {
        data[i] = 0;
        shiftNotes(i);
        i--;
      }
    }
  }

  void addNote(byte note) {
    if (count < L) {
      data[count] = note;
      count++;
    } else {
      shiftNotes(0);
      data[L - 1] = note;
    }

  }

  void clear() {
    count = 0;
  }

  int getCount() {
    return count;
  }

  byte getActiveNote() {
    if ( count ) return data[count - 1];
    else return 0;
  }


};

#endif