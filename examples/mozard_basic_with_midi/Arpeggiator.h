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

    boolean update() {
      holdingKey = false;

      if ( !running ) return false;
      
      arpTick++;
      if ( arpTick > interval ) {

        arpTick = 0;

        if ( heldkeysCount > 0 ) {
          do {
            arpIndex = (arpIndex + 1) % ARPEGGIATOR_BUFFER_SIZE;
          }  while ( heldkeys[arpIndex] == 0 );
          arpkey = heldkeys[arpIndex];
          holdingKey = true;
        }

        return true;
      }
      return false;
    }

    boolean available() {
      if ( !running ) return false;
      return holdingKey;
    }

};
