#define DIR 2
#define IN_Clk 5
#define IN_EN 6
#define ADR 7

#define prefix 0x00

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
#define REG_ERR 0x0F

byte frame1 = 0, frame2 = 0, frame3 = 0, frame4 = 0, frame5 = 0, frame6 = 0; //Variablen für Seriell-Buffer

byte reg_input = 0;
byte adress = 0;

bool start = false;

void setup()
{
  //Set Bus to input
  Serial.begin(250000, SERIAL_8N2);
  DDRC = 0x00;
  DDRB &= 0xFC;
  DDRD |= 0x9A;
  digitalWrite(DIR, LOW);
  digitalWrite(ADR, HIGH);
  digitalWrite(IN_Clk, LOW);
  digitalWrite(IN_EN, HIGH);

  get_adress();
}

void loop()
{
  read_inputs();
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
    if (frame3 != 0x20 || ((frame3 & 0xF0) != 0x10))
      frame5 = Serial.read();
    answer();
  }
}

void answer()
{
  bool _data_correct = false;
  if (frame3 != 0x20 || ((frame3 & 0xF0) != 0x10))
  {
    if ((frame1 ^ frame2 ^ frame3 ^ frame4 ^ 0xC5) == frame5)
      _data_correct = true;
  } else
  {
    if ((frame1 ^ frame2 ^ frame3 ^ 0xC5) == frame4)
      _data_correct = true;
  }

  byte inst = frame3 & 0xF0;
  byte __reg = frame3 & 0x0F;
  byte __out1 = 0;
  byte __out2 = 0;
  if (frame2 == adress)
  {
    if (_data_correct)
    {
      if (inst == reg_read)
        {
        if (__reg == REG_IN)
        {
          __out2 = reg_input;
          __out1 = ACK;
        }
//        else if (__reg == REG_OUT)
//          __out = reg_output;
//        else if (__reg == REG_ERR)
//          __out = reg_error;
        else
          __out1 = NACK | ERR_REG;
        }/*
        else if (inst ==  reg_write)
      {
        if (__reg == REG_OUT)
        {
          reg_output = frame4;
          __out = ACK;
        }
        */
          else
            __out1 = NACK | ERR_REG;
        }
        else
          __out1 = NACK | ERR_INST;
      }
      else
        __out1 = NACK | ERR_CHECKSUM;
      //send answer
      PORTD |= 0x04;
      Serial.write(__out1);
      if(__out1 == ACK)
        Serial.write(__out2);
      Serial.flush();
      PORTD &= 0xFB;
    }
    else
    {
    }
    start = false;
  }

  void read_inputs()
  {
    //Clock in Data
    PORTD |= 0x08;
    PORTD &= 0xF7;

    //read data
    PORTD &= 0xEF;
    reg_input = (!PINC & 0x3F) | ((!PINB & 0x03) << 6);
    PORTD |= 0x10;
  }

  void get_adress()
  {
    PORTD &= 0x7F;
    delayMicroseconds(1);
    adress = PINC & 0x0F;
    adress = (15 - adress) | prefix;
    PORTD |= 0x80;
  }