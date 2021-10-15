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

    get_adress();
}

void loop()
{
    write_buffer(reg_output, OUTs);             //Setze Outputs entsprechend Output-Register
    read_buffer(reg_input, IN_Clk, IN_EN);      //Lese die Feedback-Eingänge zurück
    if (reg_input != reg_output)                //Vergleiche, ob Ausgabe = Eingabe, wenn nicht arbeite Fehlersignalisierung ab
    {
        reg_error = !(reg_input ^ reg_output);  //Berechne das Signal, welches den Fehler verursacht
        write_buffer(reg_error, LEDs);          //Setze die Fehler-LEDs entsprechend des Fehler-Registers
        //reset_fault();                          nicht notwendig, da Schutzbeschaltung
        //trigger_timer();                        kommt später vielleicht mal
    }

    if(Serial.available())                      //Bei Datenverkehr
    {
        byte com_adr = Serial.read();                //Schaue, ob dieses Gerät gemeint ist
        if (com_adr == adress) 
        {
            communication();                    //Wenn ja, springe in Kommunikationsroutine
        }
        else                                    //Wenn nein, leere den Speicher
        {
            while(Serial.available())
            {
                dump = Serial.read();
            }
        }
        
    }
}

void communication()
{
    while (!Serial.available()); //warte bis nächstes Byte angekommen ist
    byte instr = Serial.read();
    if (instr == 0x11)           //Instruction-Code für Empfangen
    {
        while (!Serial.available());
        reg_output = Serial.read();
    }
    else if (instr == 0x21)      //Instruction-Code für Senden
    {
        digitalWrite(DIR, HIGH); //schalte Transceiver um
        Serial.write(0xDD);      //Sende Identifier für Daten
        Serial.write(reg_input); //Sende Input-Register
        Serial.write(reg_error); //Sende Error-register
        digitalWrite(DIR, LOW);  //schalte Transceiver um
    }
    else                         //Falsche Instruction bekommen
    {
        //wait for rest of communication(not yet implemented)
        //send data
        digitalWrite(DIR, HIGH); //schalte Transceiver um
        Serial.write(0xEE);      //sende Identifier für Error
        Serial.write(ERR_INSTR); //sende Fehlercode
        digitalWrite(DIR, LOW);  //schalte Transceiver um
    }
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