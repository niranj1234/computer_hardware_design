#include <ESP8266WiFi.h>
#include <WiFiUdp.h>
 
// Set WiFi credentials
#define WIFI_SSID "TheOtherESP"
#define WIFI_PASS "flashmeifyoucan"

// UDP
WiFiUDP UDP;
IPAddress remote_IP(192,168,4,1);
#define UDP_PORT 4210

void setup() {

  
  // Setup serial port
  Serial.begin(9600);
 
  // Begin WiFi
  WiFi.begin(WIFI_SSID, WIFI_PASS);
  WiFi.mode(WIFI_STA);
  // Loop continuously while WiFi is not connected
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(100);
  }
  // Begin UDP port
  UDP.begin(UDP_PORT);
 
}
 
void loop() {

  static char prevVal = 'F'; // stores previous value
  char input = 'F'; // default feedback value
  if(Serial.available()) // new data available
  {
    Serial.write(0); // wait until data is passed
    input = Serial.read(); // read the input

    if(prevVal != input)
    {

      // Send Packet
      UDP.beginPacket(remote_IP, UDP_PORT);
      UDP.write(input);
      Serial.println(input);
      UDP.endPacket();
      prevVal = input;
    }

    else
    {
      // do nothing, no new data
    }
  }
  else
  {
    // Load new data to espRegister
  }
}

















