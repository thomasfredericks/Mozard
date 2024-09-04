# Mozard

Mozard is a miniature digital synthesizer based on Mozzi and an Arduino Nano ATMEGA328p board.

![A picture of the Mozard](extras/medias/mozard.jpg "Mozard Kidzlab Synth")

## Usage

The Mozard changes behavior when the arpeggiator is deactivated or activated. When in arpeggiator mode, the LED on the Arduino blinks in sync with the arpeggiator interval.

![How to use the Mozard when the arpeggiator is deactivated](extras/medias/instructions_arp-deactivated.png)

![How to use the Mozard when the arpeggiator is activated](extras/medias/instructions_arp-activated.png)

## Hardware

The circuit and Bill Of Materials can be found in the extras/circuit folder.

![A picture of Mozard schematic](extras/medias/schematic.png)

## Source code

1) Download the library source code [here](https://github.com/thomasfredericks/Mozard/archive/refs/heads/master.zip).

2) Extract into your Arduino libraries folder. It should look something like this:
![The installed Mozard library in the Arduino libraries folder](extras/medias/libraries.png)

3) Open Arduino.

4) Find the latest example:
![Finding the latest example](extras/medias/example.png)

5) Configure Arduino for the right microcontroller i.e. "Arduino Nano":
![Selecting Arduino Nano Board](extras/medias/board.png)

7) Configure Arduino for the right Bootloader i.e. "ATmega328 (Old Bootloader)"  if you followed a Mozard workshop or bought a clone:
![Selecting ATmega328 (Old Bootloader)](extras/medias/bootloader.png)

8) Compile and transfer.

