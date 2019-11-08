// tables / samples
#include <tables/sin2048_int8.h> // 
#include <tables/saw2048_int8.h> // 
#include <tables/triangle2048_int8.h> // 
#include <bastlTables/whitenoise2048_int8.h>
const int8_t* WAVE_TABLES[]={
  SIN2048_DATA, SAW2048_DATA, WHITENOISE2048_DATA};//TRIANGLE2048_DATA TRIANGLE_DIST_CUBED_2048_DATA};

#define NUMBER_OF_WAVETABLES 3
#define NUMBER_OF_LFO_SHAPES 8

#define NUMBER_OF_MODULATORS 3
#define MOD_1 0
#define MOD_2 1
#define MOD_3 2

Oscil<SIN2048_NUM_CELLS, AUDIO_RATE> aCar(SIN2048_DATA);
Oscil<SIN2048_NUM_CELLS, AUDIO_RATE> aMod[NUMBER_OF_MODULATORS]={
  (SIN2048_DATA),(SIN2048_DATA),(SIN2048_DATA)};
lfo LFO;

long modulation[NUMBER_OF_MODULATORS];
boolean gate=true;

int updateAudio(){

  
  long finalModulation;
  int val;
  switch(var[ALGORITHM]) {

  case 0:
    modulation[MOD_1]=(((int)var[MOD_1_AMT]+lfoNow*isDestination(3))*aMod[MOD_1].next());
    modulation[MOD_2]=(((int)var[MOD_2_AMT]+lfoNow*isDestination(5))*aMod[MOD_2].next());
    modulation[MOD_3]=(((int)var[MOD_3_AMT]+lfoNow*isDestination(7))*aMod[MOD_3].next());

    // finalModulation=((modulation[MOD_1]+modulation[MOD_2]+modulation[MOD_3])*(var[MOD_AMT])+lfoNow*isDestination(1))>>8;
    val=((aCar.next()*(int)var[MOD_AMT])+modulation[MOD_1]+modulation[MOD_2]+modulation[MOD_3])>>3;
    break;
  case 1:
    modulation[MOD_1]=((int)var[MOD_1_AMT]+lfoNow*isDestination(3))*aMod[MOD_1].next();
    modulation[MOD_2]=((int)var[MOD_2_AMT]+lfoNow*isDestination(5))*aMod[MOD_2].next();
    modulation[MOD_3]=((int)var[MOD_3_AMT]+lfoNow*isDestination(7))*aMod[MOD_3].next();

    finalModulation=((modulation[MOD_1]+modulation[MOD_2]+modulation[MOD_3])*((int)var[MOD_AMT])+lfoNow*isDestination(1))>>8;
    val=aCar.phMod(finalModulation)<<5;


    break;
  case 2:
    modulation[MOD_1]=(var[MOD_1_AMT]+lfoNow*isDestination(3))*aMod[MOD_1].next();
    modulation[MOD_2]=(var[MOD_2_AMT]+lfoNow*isDestination(5))*aMod[MOD_2].next();
    modulation[MOD_3]=(var[MOD_3_AMT]+lfoNow*isDestination(7))*aMod[MOD_3].next();

    finalModulation=((modulation[MOD_1]+modulation[MOD_2]+modulation[MOD_3])*(var[MOD_AMT])+lfoNow*isDestination(1))>>8;
    val=aCar.phMod(finalModulation)<<5;

    break;
  case 3:
    modulation[MOD_1]=(var[MOD_1_AMT]+lfoNow*isDestination(3))*aMod[MOD_1].phMod(modulation[MOD_1]);
    modulation[MOD_2]=(var[MOD_2_AMT]+lfoNow*isDestination(5))*aMod[MOD_2].phMod(modulation[MOD_2]);
    modulation[MOD_3]=(var[MOD_3_AMT]+lfoNow*isDestination(7))*aMod[MOD_3].phMod(modulation[MOD_3 ]);

    finalModulation=((modulation[MOD_1]+modulation[MOD_2]+modulation[MOD_3])*(var[MOD_AMT])+lfoNow*isDestination(1))>>8;
    val=aCar.phMod(finalModulation)<<5;
    break;
  case 4:
    modulation[MOD_1]=(var[MOD_1_AMT]+lfoNow*isDestination(3))*aMod[MOD_1].next();// +2
    modulation[MOD_2]=(var[MOD_2_AMT]+lfoNow*isDestination(5))*aMod[MOD_2].next();
    modulation[MOD_3]=(var[MOD_3_AMT]+lfoNow*isDestination(7))*aMod[MOD_3].phMod(modulation[MOD_1]+modulation[MOD_2]);

    finalModulation=(modulation[MOD_3])*(var[MOD_AMT]+lfoNow*isDestination(1))>>8;
    val=aCar.phMod(finalModulation)<<5;
    break;
  case 5:

    modulation[MOD_1]=(var[MOD_1_AMT]+lfoNow*isDestination(3))*aMod[MOD_1].phMod(modulation[MOD_1]);// +2
    modulation[MOD_2]=(var[MOD_2_AMT]+lfoNow*isDestination(5))*aMod[MOD_2].phMod(modulation[MOD_2]);
    modulation[MOD_3]=(var[MOD_3_AMT]+lfoNow*isDestination(7))*aMod[MOD_3].phMod(modulation[MOD_1]+modulation[MOD_2]);

    finalModulation=(modulation[MOD_3])*(var[MOD_AMT]+lfoNow*isDestination(1))>>8;
    val=aCar.phMod(finalModulation)<<5;
    break;
  case 6:

    modulation[MOD_1]=(var[MOD_1_AMT]+lfoNow*isDestination(3))*aMod[MOD_1].next(); // + 5
    modulation[MOD_2]=(var[MOD_2_AMT]+lfoNow*isDestination(5))*aMod[MOD_2].phMod(modulation[MOD_1]);
    modulation[MOD_3]=(var[MOD_3_AMT]+lfoNow*isDestination(7))*aMod[MOD_3].next();

    finalModulation=(modulation[MOD_2]+modulation[MOD_3])*(var[MOD_AMT]+lfoNow*isDestination(1))>>8;
    val=aCar.phMod(finalModulation)<<5;
    break;
  case 7:

    modulation[MOD_1]=(var[MOD_1_AMT]+lfoNow*isDestination(3))*aMod[MOD_1].next(); //+5
    modulation[MOD_2]=(var[MOD_2_AMT]+lfoNow*isDestination(5))*aMod[MOD_2].phMod(modulation[MOD_1]);
    modulation[MOD_3]=(var[MOD_3_AMT]+lfoNow*isDestination(7))*aMod[MOD_3].phMod(modulation[MOD_2]);

    finalModulation=modulation[MOD_3]*(var[MOD_AMT]+lfoNow*isDestination(1))>>8;
    val=aCar.phMod(finalModulation)<<5;
    break;

  }

  // long finalModulation=modulation[MOD_1]+modulation[MOD_2]+modulation[MOD_3];
  return val*gate;

}

void playNote( uint8_t note ) {

   // int ratio = mozard.getPotA();
   if ( !arpeggiatorRunning ) {
    ratio = mozard.getPotA();
    
  }
  

  int a = 10;
  int r = 2048;
  if ( ratio< 400) {
    a = 10;
    r = map( ratio, 0, 399, 10, 1024);
  } else if ( ratio < 800) {
    a = map(ratio, 400, 799, 10, 512);
    r = map(ratio, 400, 799, 1024, 2048);
  } else {
    a = 512;//map(ratio,800,1023,512,100);
    r = map(ratio, 800, 1023, 2048, 10);

  }



  osc.setFreq( mtof(note));
  env.start(a, r);

}

void synthUpdateControl() {
  int potB = mozard.getPotB();
  lfo.setFreq( potB );
  vibratoIntensity = (1023-potB)/4;


   gain = (int) env.next();
}

void synthSetup(){
  
}
