// ATMEL ATMEGA8 & 168 / ARDUINO
//
//                  +-\/-+
//            PC6  1|    |28  PC5 (AI 5)
//      (D 0) PD0  2|    |27  PC4 (AI 4)
//      (D 1) PD1  3|    |26  PC3 (AI 3)
//      (D 2) PD2  4|    |25  PC2 (AI 2)
// PWM+ (D 3) PD3  5|    |24  PC1 (AI 1)
//      (D 4) PD4  6|    |23  PC0 (AI 0)
//            VCC  7|    |22  GND
//            GND  8|    |21  AREF
//            PB6  9|    |20  AVCC
//            PB7 10|    |19  PB5 (D 13)
// PWM+ (D 5) PD5 11|    |18  PB4 (D 12)
// PWM+ (D 6) PD6 12|    |17  PB3 (D 11) PWM
//      (D 7) PD7 13|    |16  PB2 (D 10) PWM
//      (D 8) PB0 14|    |15  PB1 (D 9) PWM
//                  +----+
//


// POTS
// A1, A6, A7

// PIANO PADS
// A5, A4, A3, A2, D12, D11, D8, D7, D6, D5, D4, D3

// BUTTON 
// D2

/*
    IMPORTANT: this sketch requires Mozzi/mozzi_config.h to be
    be changed from STANDARD mode to HIFI.
    In Mozz/mozzi_config.h, change
    #define AUDIO_MODE STANDARD
    //#define AUDIO_MODE HIFI
    to
    //#define AUDIO_MODE STANDARD
    #define AUDIO_MODE HIFI

*/



#include "MozziGuts.h"
#include "mozzi_rand.h"
#include "mozzi_midi.h"


// powers of 2 please
#define CONTROL_RATE 256

class MozardNano {

  public:

    /*
        int findHighestKeyHeld() {
          int key = -1;
          for ( uint8_t i = 0; i < 12; i++ ) {
            if ( keys[i] > 0 ) key = i;
          }
          return key;
        }
    */
  private:


    bool keys[13]; // 12 keys + 1 button

    uint8_t keyPins[13] = {A5, A4, A3, A2, 12, 11, 8, 7, 6, 5, 4, 3,2};
    uint8_t thresholds[13] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    uint8_t keyIndex = 0;
    int keyJustPressed = -1;
    int keyJustReleased = -1;
    int buttonJustPressed = -1;

    char octave = 5;

    byte analogReading = 0;
    #define MOZARD_ANALOG_PINS 3
    int analogValues[MOZARD_ANALOG_PINS];
    byte analogPins[MOZARD_ANALOG_PINS] = {6,7,1}; // A, B, C
    
    uint8_t readCapacitivePin(int pinToMeasure) {
      // Variables used to translate from Arduino to AVR pin naming
      volatile uint8_t* port;
      volatile uint8_t* ddr;
      volatile uint8_t* pin;
      // Here we translate the input pin number from
      //  Arduino pin number to the AVR PORT, PIN, DDR,
      //  and which bit of those registers we care about.
      byte bitmask;
      port = portOutputRegister(digitalPinToPort(pinToMeasure));
      ddr = portModeRegister(digitalPinToPort(pinToMeasure));
      bitmask = digitalPinToBitMask(pinToMeasure);
      pin = portInputRegister(digitalPinToPort(pinToMeasure));



      // Discharge the pin first by setting it low and output
      *port &= ~(bitmask);
      *ddr  |= bitmask;

      asm("nop");           // delay(1);

      // noInterrupts();

      // Prevent the timer IRQ from disturbing our measurement
      //noInterrupts();
      // Make the pin an input with the internal pull-up on
      *ddr &= ~(bitmask);
      *port |= bitmask;

      // Now see how long the pin to get pulled up. This manual unrolling of the loop
      // decreases the number of hardware cycles between each read of the pin,
      // thus increasing sensitivity.
      uint8_t cycles = 8;
      if      (*pin & bitmask) {
        cycles =  0;
      }
      else if (*pin & bitmask) {
        cycles =  1;
      }
      else if (*pin & bitmask) {
        cycles =  2;
      }
      else if (*pin & bitmask) {
        cycles =  3;
      }
      else if (*pin & bitmask) {
        cycles =  4;
      }
      else if (*pin & bitmask) {
        cycles =  5;
      }
      else if (*pin & bitmask) {
        cycles =  6;
      }
      else if (*pin & bitmask) {
        cycles =  7;
      }/*
      else if (*pin & bitmask) {
        cycles =  8;
      }
      else if (*pin & bitmask) {
        cycles =  9;
      }
      else if (*pin & bitmask) {
        cycles = 10;
      }
      else if (*pin & bitmask) {
        cycles = 11;
      }
      else if (*pin & bitmask) {
        cycles = 12;
      }
      else if (*pin & bitmask) {
        cycles = 13;
      }
      else if (*pin & bitmask) {
        cycles = 14;
      }
      else if (*pin & bitmask) {
        cycles = 15;
      }
      else if (*pin & bitmask) {
        cycles = 16;
      }
*/
      // End of timing-critical section
      // interrupts();

      // Discharge the pin again by setting it low and output
      //  It's important to leave the pins low if you want to
      //  be able to touch more than 1 sensor at a time - if
      //  the sensor is left pulled high, when you touch
      //  two sensors, your body will transfer the charge between
      //  sensors.
      *port &= ~(bitmask);
      *ddr  |= bitmask;

      return cycles ;
    }





  public:
    void setup() {
      
      startMozzi(CONTROL_RATE);

      
      reconnectDigitalIn  ( 2 ) ;
      reconnectDigitalIn  ( 3 ) ;
      reconnectDigitalIn  ( 4 ) ;
      reconnectDigitalIn  ( 5 ) ;

      randSeed(); // reseed the random generator for different results each time the sketch runs

     
      for ( byte i = 0 ; i <  MOZARD_ANALOG_PINS ; i++ ) {
        analogValues[i] = mozziAnalogRead(analogPins[i]);
      }
      
    }


    void updateControl() {

      analogValues[analogReading] = mozziAnalogRead(analogPins[analogReading]);
      analogReading = ( analogReading + 1 ) % MOZARD_ANALOG_PINS;
      

      keyJustPressed = keyJustReleased = -1;
      buttonJustPressed = -1;


      bool pressed = readCapacitivePin(keyPins[keyIndex]) > 3;


      if ( pressed ) {
        if ( keys[keyIndex] == 0 ) {
          if ( keyIndex < 12 ) keyJustPressed = keyIndex;
          else buttonJustPressed = keyIndex - 12;
        }
        keys[keyIndex] = 1;
      } else {
        if ( keys[keyIndex] == 1 ) {
          if ( keyIndex < 12 ) keyJustReleased = keyIndex;
        }
        keys[keyIndex] = 0;
      }


      keyIndex = (keyIndex + 1) % 13; // 12 keys + 1 button


    }

    bool aKeyIsPressed() {
      return keyJustPressed > -1;
    }

    bool aKeyIsReleased() {
      return keyJustReleased > -1;
    }


    uint8_t getNotePressed() {
      return octave * 12 + keyJustPressed;
    }

    uint8_t getNoteReleased() {
      return octave * 12 + keyJustReleased;
    }

    bool buttonAPressed() {
      return buttonJustPressed == 0;
    }

    int getPotA() {
      return analogValues[0];
    }    
    
    int getPotB() {
      return analogValues[1];
    }

     int getPotC() {
      return analogValues[2];
    }

    void setOctave( char newOctave) {
      octave = constrain(newOctave, 0, 10);

    }

    void octaveUp() {
      setOctave(octave + 1);
    }

    void octaveDown() {
      setOctave(octave - 1);
    }


};

MozardNano mozard;