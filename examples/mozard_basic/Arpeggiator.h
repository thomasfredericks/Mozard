#define MAX_HELD_keyS 12
byte heldkeys[MAX_HELD_keyS];
byte heldkeysCount = 0;
byte arpIndex;
byte arpTick;
byte arpkey;

void arpClear() {
  for ( byte i = 0; i < MAX_HELD_keyS ; i++ ) {
      heldkeys[i] = 0;
  }
  heldkeysCount = 0;
}

void arpAddKey(uint8_t key) {
  if ( key == 0 ) return;
  for ( byte i = 0; i < MAX_HELD_keyS ; i++ ) {
    if ( heldkeys[i] == 0 ) {
      heldkeys[i] = key;
      heldkeysCount++;
      break;
    }
  }
}

void arpRemoveKey(uint8_t key) {
  if ( key == 0 ) return;
  for ( byte i = 0; i < MAX_HELD_keyS ; i++ ) {
    if ( heldkeys[i] == key ) {
      heldkeys[i] = 0;
      heldkeysCount--;
      break;
    }
  }
}

uint8_t  arpGetKey() {
  return arpkey;
}

boolean arpCheck() {
  arpTick++;
  if ( arpTick > 20 ) {

    arpTick = 0;

    if ( heldkeysCount > 0 ) {
      do {
        arpIndex = (arpIndex + 1) % MAX_HELD_keyS;
      }  while ( heldkeys[arpIndex] == 0 );
      arpkey = heldkeys[arpIndex];
      return true;
    } 

    
  }
  return false;
}
