#include "Arduino.h"
#include <SPI.h>

#define D0 A0
#define D1 A1
#define D2 A2
#define D3 A3
#define D4 A4
#define D5 A5
#define D6 A6
#define D7 A7
#define DIR 2
#define ADR 3
#define LEDs 4
#define ERR_EN 5
#define DAC0 6
#define DAC1 7
#define DAC2 8
#define DAC3 9
#define ERR_CLK 10 


//DAC-Control
#define NOP 0x00
#define write_dac 0x01
//#define read_dac_register 0x02 //MISO Leitungen der DACs deaktiviert, kein Rücklesen
#define write_ctrl 0x55
#define write_rst 0x56
#define write_conf 0x57
#define write_gain_cal 0x58
#define write_zero_cal 0x59
#define reset_watchdog 0x95

byte adress = 0;
uint16_t data0, data1, data2, data3;

void setup()
{
    Serial.begin(250000);
    //SPI.beginTransaction(SPISettings(10000000, MSBFIRST, SPI_MODE0));
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


    get_adress();
    SPI.begin();
}

void loop()
{

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
    adr5 = 0;
    adr6 = 1;
    adr7 = 0;
    digitalWrite(ADR, HIGH);

    adress = D0 + 2*D1 + 4*D2 + 8*D3 + 16*D4 + 32*D5 + 64*D6 + 128*D7;
}

void toggle(int pin)
{
    digitalWrite(pin, HIGH);
    digitalWrite(pin, LOW);
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
    toggle(_clock);
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

    toggle(_clock);
    digitalWrite(_enable, LOW);
    _reg = !PINC;
    digitalWrite(_enable, HIGH);
}