#include "Arduino.h"

//definiere Makros für die einzelnen Pins

#define DIR 2
#define LEDs 3
#define OUTs 4
#define IN_Clk 5
#define IN_EN 6
#define ADR 7

#define prefix 0x20 // Prefix für Adresse - Digital Output

//Initialisieren der notwendigen globalen Variablen

byte adress = 0;
byte reg_input = 0x00;
byte reg_output = 0x00;
byte reg_leds = 0xff;  //invertiert
byte reg_error = 0x00;

bool start = false;

byte frame1 = 0, frame2 = 0, frame3 = 0, frame4 = 0, frame5 = 0, frame6 = 0; //Variablen für Seriell-Buffer
byte frame[5] = {0, 0, 0, 0, 0};

//Look-Up Werte für Datenkommunikation
//Instructions
#define SCANNING 0x00;
#define reg_read 0x10
#define reg_write 0x20
//Antworten
#define ACK 0x50
#define NACK 0xA0
#define ERR_CHECKSUM 0x0D
#define ERR_INST 0x02
#define ERR_REG 0x01
//Look-Up Werte für Register
#define REG_IN 0x02
#define REG_OUT 0x01
#define REG_ERR 0x0F

//Setup-Funktion
//Daten-pins als Input schalten, Steuerleitungen entsprechend ihrer Funktion schalten und vordefinieren
//Geräte-Adresse auslesen

void setup()
{
  Serial.begin(250000, SERIAL_8N2);
  DDRC |= 0xFF;
  DDRB |= 0x03;

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

  get_adress();
  write_leds(); // setze auf 0
  write_output(); // setze auf 0

}


void loop()
{
  write_output();
  write_leds();
}

void serialEvent()
{
  if (Serial.peek() != 0x5A && !start)
    char dump = Serial.read();
  else if (Serial.peek() == 0x5A)
    start = true;
  if (Serial.available() >= 5)
  {
    frame1 = Serial.read();
    frame2 = Serial.read();
    frame3 = Serial.read();
    frame4 = Serial.read();
    if (frame2 != 0x20)
      frame5 = Serial.read();
    answer();
  }
}

void answer()
{
  bool _data_correct = false;
  if ((frame1 ^ frame2 ^ frame3 ^ frame4 ^ 0xC5) == frame5)
    _data_correct = true;

  byte inst = frame3 & 0xF0;
  byte __reg = frame3 & 0x0F;
  byte __out = 0;
  reg_leds = frame2;
  if (frame2 == adress)
  {
    if (_data_correct)
    {
      /*if (inst == reg_read)
        {
        if (__reg == REG_IN)
          __out = reg_input;
        else if (__reg == REG_OUT)
          __out = reg_output;
        else if (__reg == REG_ERR)
          __out = reg_error;
        else
          __out = NACK | ERR_REG;
        }
        else*/ if (inst ==  reg_write)
      {
        if (__reg == REG_OUT)
        {
          reg_output = frame4;
          __out = ACK;
        }
        else
          __out = NACK | ERR_REG;
      }
      else
        __out = NACK | ERR_INST;
    }
    else
      __out = NACK | ERR_CHECKSUM;
    //send answer
    PORTD |= 0x04; // bitwise OR current PORTD with Bitmask 0000 0100
    Serial.write(__out);
    Serial.flush();
    PORTD &= 0xFB; // bitwise AND current PORTD with Bitmask 1111 1011
  }
  else
  {
  }
  start = false;
}

void write_output()
{
  DDRC = 0xFF;
  DDRB |= 0x03;

  PORTC = reg_output;
  PORTB = (reg_output >> 6) & 0x03;

  PORTD |= 0x10;
  PORTD &= 0xEF;
}

void write_leds()
{
  DDRC = 0xFF;
  DDRB |= 0x03;

  PORTC = reg_leds;
  PORTB = (reg_leds >> 6) & 0x03;

  PORTD |= 0x08;
  PORTD &= 0xF7;
}

void read_feedback()
{
  DDRC = 0x00;
  DDRB &= 0xFC;

  PORTD |= 0x20;
  PORTD &= 0xCF;
  PORTD &= 0xBF;
  reg_input = (!PINC & 0x3F) | ((!PINB & 0x03) << 6);
  PORTD |= 0x40;
}

void get_adress()
{
  DDRC = 0x00;
  PORTD &= 0x7F;
  delayMicroseconds(1);
  adress = PINC & 0x0F;
  adress = (15 - adress) | prefix;
  PORTD |= 0x80;
}