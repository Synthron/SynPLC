#include "Arduino.h"

//definiere Makros für die einzelnen Pins

#define DIR 2
#define LEDs 3
#define OUTs 4
#define IN_Clk 5
#define IN_EN 6
#define ADR 7

//Initialisieren der notwendigen globalen Variablen

volatile byte adress = 0;
volatile byte reg_input = 0x00;
volatile byte reg_output = 0x00;
volatile byte reg_error = 0xFF; //invertiert

byte dump = 0;

//Look-Up Werte für Datenkommunikation
#define reg_read 0x21
#define reg_write 0x11
#define ERR_INSTR 0xF1


//Setup-Funktion
//Daten-pins als Input schalten, Steuerleitungen entsprechend ihrer Funktion schalten und vordefinieren
//Geräte-Adresse auslesen

void setup()
{
    //Serial.begin(250000);
    DDRC = 0xFF;
    DDRB = 0x03;
    
    pinMode(DIR, OUTPUT);
    pinMode(ADR, OUTPUT);
    pinMode(LEDs, OUTPUT);
    pinMode(OUTs, OUTPUT);
    pinMode(IN_Clk, OUTPUT);
    pinMode(IN_EN, OUTPUT);

    digitalWrite(ADR, HIGH);
    digitalWrite(LEDs, LOW);
    digitalWrite(OUTs, LOW);
    digitalWrite(DIR, LOW);
    digitalWrite(IN_Clk, LOW);
    digitalWrite(IN_EN, HIGH);

    
}

void loop()
{  

  // TEST CODE!!!!
  write_buffer(0xff, LEDs);
  delay(1000);
  write_buffer(0xff, OUTs);
  delay(1000);
  write_buffer(0x00, LEDs);
  delay(1000);
  write_buffer(0x00, OUTs);
  delay(1000);
  

  
}


void write_buffer(byte _reg, byte _clock)
{
    DDRC = 0xFF;
    DDRB |= 0x03;

    PORTC = _reg;
    PORTB = (_reg>>6)&0x03;
    
    digitalWrite(_clock, HIGH);
    digitalWrite(_clock, LOW);
}

void read_buffer(byte _reg, byte _clock, byte _enable)
{
    DDRC = 0x00;
    DDRB &= 0xFC;

    digitalWrite(_clock, HIGH);
    digitalWrite(_clock, LOW);
    digitalWrite(_enable, LOW);
    _reg = (!PINC & 0x3F) | ((!PINB & 0x03)<<6);
    digitalWrite(_enable, HIGH);
}

void get_adress()
{
    DDRC = 0x00;
    bool adr0, adr1, adr2, adr3, adr4, adr5, adr6, adr7;

    digitalWrite(ADR, LOW);
    adress = (PINC << 4) | (PINC & 0x0F);
    digitalWrite(ADR, HIGH);
}