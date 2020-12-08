#define ARPEGGIATOR_BUFFER_SIZE 12


class Arpeggiator {


  private:
    byte heldkeys[ARPEGGIATOR_BUFFER_SIZE];
    byte heldkeysCount = 0;
    byte arpIndex;
    uint8_t arpTick;
    byte arpkey;
    bool holdingKey = false;
    bool running = false;
    bool notePlaying = false;

  public:

    uint8_t interval = 20;

    bool isRunning() {
      return  running;
    }

    void run() {
      running = false;
    }

    void hold() {
      running = true;
    }

    void toggle() {
      running = !running;
    }

    void clear() {
      for ( byte i = 0; i < ARPEGGIATOR_BUFFER_SIZE ; i++ ) {
        heldkeys[i] = 0;
      }
      heldkeysCount = 0;
      notePlaying = false;
    }

    void addKey(byte key) {
      if ( key == 0 ) return;
      for ( byte i = 0; i < ARPEGGIATOR_BUFFER_SIZE ; i++ ) {
        if ( heldkeys[i] == 0 ) {
          heldkeys[i] = key;
          heldkeysCount++;
          break;
        }
      }
    }

    void removeKey(byte key) {
      if ( key == 0 ) return;
      for ( byte i = 0; i < ARPEGGIATOR_BUFFER_SIZE ; i++ ) {
        if ( heldkeys[i] == key ) {
          heldkeys[i] = 0;
          heldkeysCount--;
          break;
        }
      }
    }

    byte  getKey() {
      return arpkey;
    }

   // RETURNS TRUE IF A NOTEON OR NOTEOFF
    boolean update() {
      holdingKey = false;

      if ( !running ) return false;

      arpTick++;
      if ( arpTick > interval ) {

        arpTick = 0;

        if ( notePlaying ) {
          notePlaying = false;
          return true;
        } else {
          if ( heldkeysCount > 0 ) {
            do {
              arpIndex = (arpIndex + 1) % ARPEGGIATOR_BUFFER_SIZE;
            }  while ( heldkeys[arpIndex] == 0 );
            arpkey = heldkeys[arpIndex];
            holdingKey = true;
          }
          notePlaying = true;
        }

        return true;
      }
      return false;
    }

    boolean noteOn() {
      if ( !running || !notePlaying ) return false;
      return holdingKey;
    }

    // IMPLICIT noteOff();
    

};
