#include "Arduino.h"

//definiere Makros für die einzelnen Pins

#define D0 A0
#define D1 A1
#define D2 A2
#define D3 A3
#define D4 A4
#define D5 A5
#define D6 A6
#define D7 A7
#define DIR 2
#define LEDs 3
#define OUTs 4
#define IN_Clk 5
#define IN_EN 6
#define ADR 7

//Initialisieren der notwendigen globalen Variablen

byte adress = 0;
byte reg_input = 0x00;
byte reg_output = 0x00;
byte reg_error = 0xFF; //invertiert

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
    Serial.begin(250000);
    pinMode(D0, INPUT);
    pinMode(D1, INPUT);
    pinMode(D2, INPUT);
    pinMode(D3, INPUT);
    pinMode(D4, INPUT);
    pinMode(D5, INPUT);
    pinMode(D6, INPUT);
    pinMode(D7, INPUT);
    pinMode(DIR, OUTPUT);
    pinMode(ADR, OUTPUT);
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
    for (int i = 0; i < 300; i++)
    {
        get_adress();
        write_buffer(adress, LEDs);
        delay(100);
    }
    reg_output = 0;
    for (reg_output; reg_output < 256; reg_output++)
    {
        write_buffer(reg_output, OUTs);
        delay(250);
    }
    reg_output = 0;
    for (byte i; i < 256; i++)
    {
        write_buffer(i, LEDs);
        delay(250);
    }
    reg_output = 0;
    write_buffer(reg_output, OUTs);
    for (reg_output; reg_output < 255; reg_output++)
    {
        write_buffer(reg_output, LEDs);
        delay(250);
    }
    byte temp;
    write_buffer(0x00, LEDs);
    write_buffer(0x00, OUTs);
    delay(1000);
    read_buffer(temp, IN_Clk, IN_EN);
    write_buffer(temp, LEDs);
    delay(1000);
    write_buffer(0x55, OUTs);
    delay(1000);
    read_buffer(temp, IN_Clk, IN_EN);
    delay(1000);
    write_buffer(0xAA, OUTs);
    delay(1000);
    read_buffer(temp, IN_Clk, IN_EN);
    delay(1000);
    write_buffer(0xFF, OUTs);
    delay(1000);
    read_buffer(temp, IN_Clk, IN_EN);
    delay(1000);
    write_buffer(0x00, OUTs);
    write_buffer(0x00, LEDs);
}


void write_buffer(byte _reg, byte _clock)
{
    pinMode(D0, OUTPUT);
    pinMode(D1, OUTPUT);
    pinMode(D2, OUTPUT);
    pinMode(D3, OUTPUT);
    pinMode(D4, OUTPUT);
    pinMode(D5, OUTPUT);
    pinMode(D6, OUTPUT);
    pinMode(D7, OUTPUT);

    PORTC = _reg;
    digitalWrite(_clock, HIGH);
    digitalWrite(_clock, LOW);
}

void read_buffer(byte _reg, byte _clock, byte _enable)
{
    pinMode(D0, INPUT);
    pinMode(D1, INPUT);
    pinMode(D2, INPUT);
    pinMode(D3, INPUT);
    pinMode(D4, INPUT);
    pinMode(D5, INPUT);
    pinMode(D6, INPUT);
    pinMode(D7, INPUT);

    digitalWrite(_clock, HIGH);
    digitalWrite(_clock, LOW);
    digitalWrite(_enable, LOW);
    _reg = !PINC;
    digitalWrite(_enable, HIGH);
}

void get_adress()
{
    bool adr0, adr1, adr2, adr3, adr4, adr5, adr6, adr7;

    digitalWrite(ADR, LOW);
    adr0 = !digitalRead(D0);
    adr1 = !digitalRead(D1);
    adr2 = !digitalRead(D2);
    adr3 = !digitalRead(D3);
    adr4 = 0;
    adr5 = 1;
    adr6 = 0;
    adr7 = 0;
    digitalWrite(ADR, HIGH);

    adress = D0 + 2*D1 + 4*D2 + 8*D3 + 16*D4 + 32*D5 + 64*D6 + 128*D7;
}