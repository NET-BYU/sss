#include <Arduino.h>
#include <SPI.h>
#include <stdint.h>

#define MAX72XX_DIGITS  8
#define MAX72XX_REG_NOOP  0x0
#define MAX72XX_REG_DIGIT0  0x1
#define MAX72XX_REG_DIGIT1  0x02
#define MAX72XX_REG_DIGIT2  0x3
#define MAX72XX_REG_DIGIT3  0x4
#define MAX72XX_REG_DIGIT4  0x5
#define MAX72XX_REG_DIGIT5  0x6
#define MAX72XX_REG_DIGIT6  0x7
#define MAX72XX_REG_DIGIT7  0x8
#define MAX72XX_REG_DECODEMODE  0x9
#define MAX72XX_REG_INTENSITY  0xA
#define MAX72XX_REG_SCANLIMIT  0xB
#define MAX72XX_REG_SHUTDOWN  0xC
#define MAX72XX_REG_DISPLAYTEST  0xF
#define DEFAULT_BAUDRATE  2000000
#define NUM_MAX_CHIPS_PER_SIDE 6
#define TOTAL_MAX_CHIPS NUM_MAX_CHIPS_PER_SIDE*2
#define LCS 21
#define RCS 13

// DHCP Control Panel
#if (USE_DHCP)
    #define DHCP_HOSTNAME "hermes"
#endif 

SPISettings spisettings(DEFAULT_BAUDRATE, MSBFIRST, SPI_MODE0);
uint8_t txL[TOTAL_MAX_CHIPS];
uint8_t txR[TOTAL_MAX_CHIPS];

/*
Controls low level max72xx registers
Parameters:
  SPIClassRP2040 spi-> Spi bus to write command to
  int registerNum   -> Register number to write to
  int value         -> Value to write to register
  int chips         -> max72xx physical chips bit mask, 
*/
void command(SPIClassRP2040 spi, int registerNum, int value, int chips) {
  // generate send buffers
  uint8_t actualRegisterValue = MAX72XX_REG_NOOP;
  uint8_t actualValue = 0;
  uint8_t actuallyWrite = 0;
  for (int i = 0; i < TOTAL_MAX_CHIPS; i++) {
    if (chips & 1<<i) {
      // bit mask for which registers to activate
      // Serial.printf("Activating register %d\n",i);
      actualRegisterValue = registerNum;
      actualValue = value;
      actuallyWrite = 1;
    }
    else{
      // not activating this register
      actualRegisterValue = MAX72XX_REG_NOOP;
      actualValue = 0;
    }
    if (!(i % 2)) {
      // evens, left side
      // Serial.printf("left side: %d %d to %d\n",actualRegisterValue,actualValue,NUM_MAX_CHIPS_PER_SIDE*2-2-i);
      txL[NUM_MAX_CHIPS_PER_SIDE*2-2-i] = actualRegisterValue;
      txL[NUM_MAX_CHIPS_PER_SIDE*2-1-i] = actualValue;
    }
    else {
      // odds, right side
      // Serial.printf("right side: %d %d to %d\n",actualRegisterValue,actualValue,NUM_MAX_CHIPS_PER_SIDE*2-1-i);
      txR[NUM_MAX_CHIPS_PER_SIDE*2-1-i] = actualRegisterValue;
      txR[NUM_MAX_CHIPS_PER_SIDE*2-i] = actualValue;
    }
  }
  if (actuallyWrite) {
    spi.beginTransaction(spisettings);
    digitalWrite(LCS,LOW);
    spi.transfer(txL,nullptr,NUM_MAX_CHIPS_PER_SIDE*2);
    digitalWrite(LCS,HIGH);
    digitalWrite(RCS,LOW);
    spi.transfer(txR,nullptr,NUM_MAX_CHIPS_PER_SIDE*2);
    digitalWrite(RCS,HIGH);
    spi.endTransaction();
  }
}

void command(SPIClassRP2040 spi, uint8_t registerNum, uint8_t* value, size_t length) {
  // generate send buffers
  uint8_t actualRegisterValue = MAX72XX_REG_NOOP;
  uint8_t actualValue = 0;
  uint8_t actuallyWrite = 0;
  if (length < TOTAL_MAX_CHIPS) {
    Serial.printf("Not enough information passed into COMMAND\n");
    return;
  }
  for (int i = 0; i < TOTAL_MAX_CHIPS; i++) {
    actualRegisterValue = registerNum;
    actualValue = value[i];
    actuallyWrite = 1;
    if (!(i % 2)) {
      // evens, left side
      // Serial.printf("left side: %d %d to %d\n",actualRegisterValue,actualValue,NUM_MAX_CHIPS_PER_SIDE*2-2-i);
      txL[NUM_MAX_CHIPS_PER_SIDE*2-2-i] = actualRegisterValue;
      txL[NUM_MAX_CHIPS_PER_SIDE*2-1-i] = actualValue;
    }
    else {
      // odds, right side
      // Serial.printf("right side: %d %d to %d\n",actualRegisterValue,actualValue,NUM_MAX_CHIPS_PER_SIDE*2-1-i);
      txR[NUM_MAX_CHIPS_PER_SIDE*2-1-i] = actualRegisterValue;
      txR[NUM_MAX_CHIPS_PER_SIDE*2-i] = actualValue;
    }
  }
  if (actuallyWrite) {
    spi.beginTransaction(spisettings);
    digitalWrite(LCS,LOW);
    spi.transfer(txL,nullptr,NUM_MAX_CHIPS_PER_SIDE*2);
    digitalWrite(LCS,HIGH);
    digitalWrite(RCS,LOW);
    spi.transfer(txR,nullptr,NUM_MAX_CHIPS_PER_SIDE*2);
    digitalWrite(RCS,HIGH);
    spi.endTransaction();
  }
}


void digits(SPIClassRP2040 spi, uint8_t *digitBuffer, int length,bool clear=false) {
  int digitCounter = 0;
  int leftDigitCounter = 0;
  int rightDigitCounter = 0;
  for (int i = 0; i < MAX72XX_DIGITS & i < length; i++) {
    digitCounter = 0;
    leftDigitCounter = 0;
    rightDigitCounter = 0;
    for (int j = i; j < length; j+=MAX72XX_DIGITS*2) {
      // evens, left side
      // Serial.printf("left side: %d %d to %d\n",actualRegisterValue,actualValue,NUM_MAX_CHIPS_PER_SIDE*2-2-i);
      txL[NUM_MAX_CHIPS_PER_SIDE*2-2-digitCounter*2] = MAX72XX_REG_DIGIT0+i;
      txL[NUM_MAX_CHIPS_PER_SIDE*2-1-digitCounter*2] = !clear ? digitBuffer[j] : 0;
      leftDigitCounter += 1;
      if (j + 8 < length) {
        // we have a right side as well
        txR[NUM_MAX_CHIPS_PER_SIDE*2-2-digitCounter*2] = MAX72XX_REG_DIGIT0+i;
        txR[NUM_MAX_CHIPS_PER_SIDE*2-1-digitCounter*2] = !clear ? digitBuffer[j+8] : 0;
        rightDigitCounter += 1;
      }
      digitCounter += 1;
    }
    // need to fill in the rest with noops
    for(int k = 0; k < NUM_MAX_CHIPS_PER_SIDE; k++) {
      // there may need to be more noops on the right side than the left
      if (k==(NUM_MAX_CHIPS_PER_SIDE-rightDigitCounter)) {
        break;
      }
      txR[k*2] = MAX72XX_REG_NOOP;
      txR[k*2+1] = 0;
      if (k < (NUM_MAX_CHIPS_PER_SIDE-leftDigitCounter)) {
        txL[k*2] = MAX72XX_REG_NOOP;
        txL[k*2+1] = 0;
      }
    }
    spi.beginTransaction(spisettings);
    digitalWrite(LCS,LOW);
    spi.transfer(txL,nullptr,NUM_MAX_CHIPS_PER_SIDE*2);
    digitalWrite(LCS,HIGH);
    if (rightDigitCounter) {
      digitalWrite(RCS,LOW);
      spi.transfer(txR,nullptr,NUM_MAX_CHIPS_PER_SIDE*2);
      digitalWrite(RCS,HIGH);
    }
    spi.endTransaction();
  }
}

// void setup() {
//   Serial.begin(115200);
//   pinMode(LCS, OUTPUT);
//   pinMode(RCS,OUTPUT);
//   pinMode(10,OUTPUT);
//   pinMode(11,OUTPUT);
//   digitalWrite(LCS,HIGH);
//   digitalWrite(RCS,HIGH);
//   SPI1.setRX(12);
//   // SPI1.setCS(1);
//   SPI1.setSCK(10);
//   SPI1.setTX(11);
//   SPI1.begin(false); // manually control cs pin
//   command(SPI1,MAX72XX_REG_SHUTDOWN,1,4095); // turn on display
//   command(SPI1,MAX72XX_REG_DECODEMODE,0,4095); // set input mode
//   command(SPI1,MAX72XX_REG_SCANLIMIT,MAX72XX_DIGITS-1,4095); // set number of digits to display per segment
//   command(SPI1,MAX72XX_REG_DISPLAYTEST,0,4095); // not doing display test
//   command(SPI1,MAX72XX_REG_INTENSITY,1,4095);
//   digits(SPI1,nullptr,MAX72XX_DIGITS*TOTAL_MAX_CHIPS,true);

//   delay(5000);
//   uint8_t temp[96];
//   temp[0] = 0b01111110;
//   temp[1] = 0b00110000;
//   temp[2] = 0b01101101;
//   temp[3] = 0b01111001;
//   temp[4] = 0b00110011;
//   temp[5] = 0b01011011;
//   temp[6] = 0b01011111;
//   temp[7] = 0b01110000;
//   for (int i = 0; i < 96; i++) {
//     temp[i] = i;
//   }
//   digits(SPI1,temp,96);
// }

// void loop() {
//   // put your main code here, to run repeatedly:
//   // for (int i = 0; i < 12; i++) {
//   //   command(SPI1,MAX72XX_REG_DISPLAYTEST,1,1<<i);
//   //   delay(100);
//   //   command(SPI1,MAX72XX_REG_DISPLAYTEST,0,1<<i);
//   // }
// }

#define _ETG_LOGLEVEL_ 3
// #define USING_SPI2 true
#define USING_CUSTOM_SPI            false
// #define ETHERNET_GENERIC_USING_SPI2 true
#define ETHERNET_USE_RPIPICO true
// SCK: GPIO14,  MOSI: GPIO15, MISO: GPIO12, SS/CS: GPIO13 for SPI1
#define USE_THIS_SS_PIN       PIN_SPI0_SS   //13
#define SS_PIN_DEFAULT        USE_THIS_SS_PIN
#define SHIELD_TYPE           "W5x00 using Ethernet_Generic Library"
#include "Ethernet_Generic.h" 

unsigned int localPort = 1883;    //10002;  // local port to listen on

uint8_t packetBuffer[255];          // buffer to hold incoming packet
char ReplyBuffer[] = "ACK";      // a string to send back

// A UDP instance to let us send and receive packets over UDP
EthernetUDP Udp;
IPAddress ip(172, 0, 0, 3); 

#define SerialDebug   Serial

void setup()
{
  SerialDebug.begin(9600);

  Ethernet.init (USE_THIS_SS_PIN);
  
  #if (USE_DHCP)
    Ethernet.setHostname(DHCP_HOSTNAME);
  #endif
  
  Ethernet.setRstPin(20);
  Ethernet.hardreset();

  byte mac[6] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0x01 };
  
  #if (USE_DHCP)
    Ethernet.begin(mac);
  #else
    Ethernet.begin(mac, ip);
  #endif
  
  Udp.begin(localPort);

  pinMode(LCS, OUTPUT);
  pinMode(RCS,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
  digitalWrite(LCS,HIGH);
  digitalWrite(RCS,HIGH);
  SPI1.setRX(12);
  // SPI1.setCS(1);
  SPI1.setSCK(10);
  SPI1.setTX(11);
  SPI1.begin(false); // manually control cs pin
  command(SPI1,MAX72XX_REG_SHUTDOWN,1,4095); // turn on display
  command(SPI1,MAX72XX_REG_DECODEMODE,0,4095); // set input mode
  command(SPI1,MAX72XX_REG_SCANLIMIT,MAX72XX_DIGITS-1,4095); // set number of digits to display per segment
  command(SPI1,MAX72XX_REG_DISPLAYTEST,0,4095); // not doing display test
  command(SPI1,MAX72XX_REG_INTENSITY,1,4095);
  digits(SPI1,nullptr,MAX72XX_DIGITS*TOTAL_MAX_CHIPS,true);
  delay(6000);

}

void commandExecute(uint8_t* buffer,int dataLength,int registerNum) {
  uint16_t onCase = 0;
  uint16_t offCase = 0;
  uint8_t chips = dataLength <= MAX72XX_DIGITS ? dataLength : MAX72XX_DIGITS;
  for (int i = 0; i < chips; i++) {
    if ((buffer)[i]) { // on case
      onCase |= 1 << i;
    } else {
      offCase |= 1 << i;
    }
  }
  command(SPI1,registerNum,1,onCase);
  command(SPI1,registerNum,0,offCase);
}

void parsePacket(uint8_t*buffer, size_t length) {
  // grab header first
  if (length > 2) {
    uint8_t protocolType = buffer[0];
    uint8_t dataLength = buffer[1];
    // Serial.printf("proto: %d len: %d\n",protocolType,dataLength);
    switch (protocolType)
    {
    case 0x0: // Data
      digits(SPI1,buffer+2,dataLength,false);
      break;
    case 0xC: // Shutdown
      // commandExecute(buffer+2,dataLength,MAX72XX_REG_SHUTDOWN);
      command(SPI1,MAX72XX_REG_SHUTDOWN,buffer+2,dataLength);
      break;
    case 0xA: // Intensity
      // commandExecute(buffer+2,dataLength,MAX72XX_REG_INTENSITY);
      command(SPI1,MAX72XX_REG_INTENSITY,buffer+2,dataLength);
      break;
    case 0xB: // Scan Limit
      // commandExecute(buffer+2,dataLength,MAX72XX_REG_SCANLIMIT);
      command(SPI1,MAX72XX_REG_SCANLIMIT,buffer+2,dataLength);
      break;
    case 0xF: // Test
      // commandExecute(buffer+2,dataLength,MAX72XX_REG_DISPLAYTEST);
      command(SPI1,MAX72XX_REG_DISPLAYTEST,buffer+2,dataLength);
      break;
    case 0x9: // Decode Mode
      // commandExecute(buffer+2,dataLength,MAX72XX_REG_DECODEMODE);
      command(SPI1,MAX72XX_REG_DECODEMODE,buffer+2,dataLength);
      break;
    case 0x1: // clear screen
      digits(SPI1,buffer+2,dataLength,true);
      break;
    default:
      break;
    }
  }
}

void loop(){
  // if there's data available, read a packet
  int packetSize = Udp.parsePacket();

  if (packetSize){
    // SerialDebug.print(F("Received packet of size "));
    // SerialDebug.println(packetSize);
    // SerialDebug.print(F("From "));
    IPAddress remoteIp = Udp.remoteIP();
    // SerialDebug.print(remoteIp);
    // SerialDebug.print(F(", port "));
    // SerialDebug.println(Udp.remotePort());

    // read the packet into packetBufffer
    int len = Udp.read(packetBuffer, 255);

    // SerialDebug.println(F("Contents:"));
    // for (int i = 0; i < len; ++i){
      // SerialDebug.printf("%d ",packetBuffer[i]);
    // }
    // SerialDebug.printf("\n");
    parsePacket(packetBuffer,len);
  //   // send a reply, to the IP address and port that sent us the packet we received
  //   Udp.beginPacket(Udp.remoteIP(), Udp.remotePort());
  //   Udp.write(ReplyBuffer);
  //   Udp.endPacket();
  }
}