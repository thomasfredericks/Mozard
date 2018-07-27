# Mozard

Mozard is a miniature digital synthesizer based on Mozzi, the Arduino software, and an Arduino Nano ATMEGA328p board.

More information: http://www.tofstuff.com/Mozard

# Installation

Download Mozzi (https://sensorium.github.io/Mozzi/) and install it in your Arduino libraries.

**IMPORTANT:** this harware requires Mozzi/mozzi_config.h to be be changed from STANDARD mode to HIFI. Open Mozzi/mozzi_config.h and change:
```
#define AUDIO_MODE STANDARD
//#define AUDIO_MODE HIFI
```
to:
```
//#define AUDIO_MODE STANDARD
 #define AUDIO_MODE HIFI
```
Examples are included in the code directory of the version you have.
