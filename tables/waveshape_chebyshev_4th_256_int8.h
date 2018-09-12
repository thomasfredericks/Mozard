#ifndef CHEBYSHEV_4TH_256_H_
#define CHEBYSHEV_4TH_256_H_

#if ARDUINO >= 100
 #include "Arduino.h"
#else
 #include "WProgram.h"
#endif
#include <avr/pgmspace.h>

/* table for waveshaper using chebyshev polynomials
*/

#define CHEBYSHEV_4TH_256_NUM_CELLS 256
const int8_t __attribute__((section(".progmem.data"))) CHEBYSHEV_4TH_256_DATA [] =
        {
                127, 112, 97, 82,
                68, 55, 42, 30, 19, 7, -3, -13, -23, -32, -40, -49, -56, -63, -70, -77, -83,
                -88, -93, -98, -102, -106, -110, -113, -116, -119, -121, -123, -124, -126, -127,
                -128, -128, -128, -128, -128, -128, -127, -126, -125, -124, -122, -120, -118,
                -116, -114, -112, -109, -106, -103, -100, -97, -94, -91, -87, -84, -80, -76,
                -72, -68, -64, -60, -56, -52, -48, -44, -40, -35, -31, -27, -22, -18, -14, -9,
                -5, -1, 4, 8, 12, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 60, 64, 67, 71,
                74, 78, 81, 84, 87, 90, 93, 96, 98, 101, 103, 105, 108, 110, 112, 114, 115, 117,
                119, 120, 121, 122, 124, 124, 125, 126, 126, 127, 127, 127, 127, 127, 127, 127,
                126, 126, 125, 124, 124, 122, 121, 120, 119, 117, 115, 114, 112, 110, 108, 105,
                103, 101, 98, 96, 93, 90, 87, 84, 81, 78, 74, 71, 67, 64, 60, 57, 53, 49, 45,
                41, 37, 33, 29, 25, 21, 17, 12, 8, 4, -1, -5, -9, -14, -18, -22, -27, -31, -35,
                -40, -44, -48, -52, -56, -60, -64, -68, -72, -76, -80, -84, -87, -91, -94, -97,
                -100, -103, -106, -109, -112, -114, -116, -118, -120, -122, -124, -125, -126,
                -127, -128, -128, -128, -128, -128, -128, -127, -126, -124, -123, -121, -119,
                -116, -113, -110, -106, -102, -98, -93, -88, -83, -77, -70, -63, -56, -49, -40,
                -32, -23, -13, -3, 7, 19, 30, 42, 55, 68, 82, 97, 112,
        };

#endif /* CHEBYSHEV_4TH_256_H_ */
