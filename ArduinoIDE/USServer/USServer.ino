#include <ESP8266WiFi.h>
#include <WiFiUdp.h>

// Set AP credentials
#define AP_SSID "TheOtherESP"
#define AP_PASS "flashmeifyoucan"
#define CLOCKDELAY 50

// UDP
WiFiUDP UDP;
IPAddress local_IP(192,168,4,1);
IPAddress gateway(192,168,4,1);
IPAddress subnet(255,255,255,0);
#define UDP_PORT 4210

// UDP Buffer
char packetBuffer[UDP_TX_PACKET_MAX_SIZE];
const int trigPin = 16;
const int echoPin = 5;
const int buzz = 4;

int chimeTimeCount = 0; // current chiming timer
int chimeTime = 0; // set chime toggle timer
int doChime = 0; // do we chime?
int prevChime; // get previous chime type
char prevData = 'f';

// Feedback
float duration, distance;

int chimeType = 0; // start with no chime

enum chimeTypes
{
  noChime = 0,
  cyclicChime,
  constChime
};


void setup() {
  
  pinMode(buzz, OUTPUT); // buzz
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);

  // Setup serial port
  Serial.begin(115200);

  // Begin Access Point
  WiFi.softAPConfig(local_IP, gateway, subnet);
  WiFi.softAP(AP_SSID, AP_PASS);

  // Begin listening to UDP port
  UDP.begin(UDP_PORT);

}

void loop() {
  char data;
  // Receive packet from FPGA
  UDP.parsePacket();
  UDP.read(packetBuffer, UDP_TX_PACKET_MAX_SIZE);
  data = packetBuffer[0];
  if(data != prevData)
  {
    calcNewChime(data);
    prevData = data;
  }
  else
  {
    // keep going
  }
  delay(CLOCKDELAY);
  chimeTimeCount = chimeTimeCount + 1;
  calcToggle();
}

// Is object close, near, far
// Reads in a single byte of data.
void calcNewChime(char data)
{
  if(data == 'A')
  {
    // close highest priority
    chimeType = constChime; // 3
    chimeTime = 0;
    doChime = 1;
    digitalWrite(buzz, doChime);
  }
  else if(data == 'B')
  {
    // near medium priority
    if(prevChime < chimeType)
    {
      doChime = 1;
    }
    else
    {
      // don't change
    }
    chimeType = cyclicChime; // 2
    chimeTime = 125; // 250 ms chime time
  }
  else if(data == 'C')
  {
    if(prevChime < chimeType)
    {
      doChime = 1;
    }
    else
    {
      // don't change
    }
    chimeType = cyclicChime; // 1
    chimeTime = 250; // 500 ms chime
  }
  else
  {
    chimeType = noChime; // do not chime
    chimeTime = 0;
    doChime = 0;
    digitalWrite(buzz, doChime);
  }
  prevChime = chimeType;
}

void calcToggle()
{
  if(chimeType == cyclicChime)
  {
    // toggle the chime for a beep, reset timer
    if((chimeTimeCount * CLOCKDELAY) > chimeTime)
    {
      doChime = !doChime;
      digitalWrite(buzz, doChime); // default 0
      chimeTimeCount = 0;
    }
  }
  else
  {
    // do not toggle chime. Continue to chime or not chime
    chimeTimeCount = 0;
  }
}


