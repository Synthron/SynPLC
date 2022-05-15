#include "Arduino.h"

#define D0 A0
#define D1 A1
#define D2 A2
#define D3 A3
#define D4 A4
#define D5 A5
#define D6 A6
#define D7 A7
#define DIR 2
#define ADR 7
#define IN_Clk 3
#define IN_EN 4

//Codes für Protokoll
#define reg_read 0x21
#define ERR_INSTR 0xF1


byte adress = 0;
byte reg_input = 0;
byte dump = 0;
byte com_adr;
byte com_instr;
//byte parity;

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
    digitalWrite(DIR, LOW);
    digitalWrite(IN_Clk, LOW);
    digitalWrite(IN_EN, HIGH);

    get_adress();
}

void loop()
{
    read_Inputs();

    if(Serial.available())
    {
        com_adr = Serial.read();
        if (com_adr == adress) 
        {
            check_and_send();
        }
        else
        {
            while(Serial.available())
            {
                dump = Serial.read();
            }
        }
        
    }

}

void get_adress()
{
    bool adr0, adr1, adr2, adr3, adr4, adr5, adr6, adr7;
/*    
    pinMode(D0, INPUT);
    pinMode(D1, INPUT);
    pinMode(D2, INPUT);
    pinMode(D3, INPUT);
    pinMode(D4, INPUT);
    pinMode(D5, INPUT);
    pinMode(D6, INPUT);
    pinMode(D7, INPUT);
*/
    digitalWrite(ADR, LOW);
    adr0 = !digitalRead(D0);
    adr1 = !digitalRead(D1);
    adr2 = !digitalRead(D2);
    adr3 = !digitalRead(D3);
    adr4 = 1;
    adr5 = 0;
    adr6 = 0;
    adr7 = 0;
    digitalWrite(ADR, HIGH);

    adress = D0 + 2*D1 + 4*D2 + 8*D3 + 16*D4 + 32*D5 + 64*D6 + 128*D7;
}

void read_Inputs()
{
    digitalWrite(IN_Clk, HIGH);
    digitalWrite(IN_Clk, LOW);
    digitalWrite(IN_EN, LOW);
    reg_input = PINC;
    digitalWrite(IN_EN, HIGH);
}

void check_and_send()
{
    while (!Serial.available());
    com_instr = Serial.read();
    if(com_instr == reg_read)
    {
        //wait for rest of communication
        //send data
        digitalWrite(DIR, HIGH);
        Serial.write(0xDD);
        Serial.write(reg_input);
        digitalWrite(DIR, LOW);
    }
    else
    {
        //wait for rest of communication
        //send data
        digitalWrite(DIR, HIGH);
        Serial.write(0xEE);
        Serial.write(ERR_INSTR);
        digitalWrite(DIR, LOW);
    }
    
    
}