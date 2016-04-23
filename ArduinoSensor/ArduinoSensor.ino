
#include <Adafruit_CC3000.h>
#include <ccspi.h>
#include <SPI.h>
#include <string.h>
#include "utility/debug.h"
#include <stdlib.h>

// These are the interrupt and control pins
#define ADAFRUIT_CC3000_IRQ   3  // MUST be an interrupt pin!
// These can be any two pins
#define ADAFRUIT_CC3000_VBAT  5
#define ADAFRUIT_CC3000_CS    10
// Use hardware SPI for the remaining pins
// On an UNO, SCK = 13, MISO = 12, and MOSI = 11
Adafruit_CC3000 cc3000 = Adafruit_CC3000(ADAFRUIT_CC3000_CS, ADAFRUIT_CC3000_IRQ, ADAFRUIT_CC3000_VBAT, SPI_CLOCK_DIVIDER); // you can change this clock speed

#define WLAN_SSID       "Francisco's MacBook Pro"           // cannot be longer than 32 characters!
#define WLAN_PASS       "myPassword"
// Security can be WLAN_SEC_UNSEC, WLAN_SEC_WEP, WLAN_SEC_WPA or WLAN_SEC_WPA2
#define WLAN_SECURITY   WLAN_SEC_UNSEC

#define IDLE_TIMEOUT_MS  3000      // Amount of time to wait (in milliseconds) with no data 
                                   // received before closing the connection.  If you know the server
                                   // you're accessing is quick to respond, you can reduce this value.

// What page to grab!
#define WEBSITE      "192.168.2.2"
#define WEBPAGE      "/NervousNetAPI/SensorArduino"



/**************************************************************************/
/*!
    @brief  Sets up the HW and the CC3000 module (called automatically
            on startup)
*/
/**************************************************************************/

uint32_t ip = 0;

void setup(void)
{
  Serial.begin(115200);
  Serial.println(F("What's up, Xavier!?\n")); 

  Serial.print("Free RAM: "); Serial.println(getFreeRam(), DEC);
  
  /* Initialise the module */
  Serial.println(F("\nInitializing..."));
  if (!cc3000.begin())
  {
    Serial.println(F("Couldn't begin()! Check your wiring?"));
    while(1);
  }
  
  // Optional SSID scan
  // listSSIDResults();
  
  Serial.print(F("\nAttempting to connect to ")); Serial.print(WLAN_SSID); Serial.print(" ...    ");
  if (!cc3000.connectToAP(WLAN_SSID, WLAN_PASS, WLAN_SECURITY)) {
    Serial.println(F("Failed!\n"));
    return;
  }
   
  Serial.println(F("Connected!\n"));
  
  /* Wait for DHCP to complete */
  Serial.print(F("Requesting address from DHCP server...   "));
  for(int t=millis(); !cc3000.checkDHCP() && ((millis() - t) < 1000); delay(1000));
  if(cc3000.checkDHCP()) {
    Serial.println(F("OK"));
  } else {
    Serial.println(F("failed"));
    return;
  }

  /* Display the IP address DNS, Gateway, etc. */  
  while (! displayConnectionDetails()) {
    delay(1000);
  }

  // Try looking up the website's IP address
  Serial.print(WEBSITE); Serial.print(F(" -> "));
  /*while (ip == 0) {
    if (! cc3000.getHostByName(WEBSITE, &ip)) {
      Serial.println(F("Couldn't resolve!"));
    }
    delay(500);
  }*/
  ip = 3232236034; // 192.168.2.2

  cc3000.printIPdotsRev(ip);
  

  Serial.println("\n");   
  
  Adafruit_CC3000_Client www = cc3000.connectTCP(ip, 8080);
  if (www.connected()) {
    Serial.println("TCP Connection   OK!\n\n");  

   
   
    www.fastrprint(F("POST /NervousNetAPI/SensorArduino\r\n"));
    www.fastrprint(F("Content-Type: text/xml;charset=UTF-8\r\n"));
    www.fastrprint(F("Accept-Encoding: gzip,deflate\r\n")); 
    www.fastrprint(F("Content-Length: 500\r\n"));
    
    www.fastrprint(F("<S:Envelope xmlns:S=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:api=\"http://API/\">\r\n"));
    www.fastrprint(F("<S:Header/>\r\n"));
      www.fastrprint(F("<S:Body>\r\n"));
         www.fastrprint(F("<api:saveSensor>\r\n"));
             www.fastrprint(F("<api:X>1.0</api:X>\r\n"));
             www.fastrprint(F("<api:Y>3.0</api:Y>\r\n"));
             www.fastrprint(F("<api:Z>7.0</api:Z>\r\n"));
      www.fastrprint(F("</api:saveSensor>\r\n")); 
      www.fastrprint(F("</S:Body>\r\n"));       
    www.fastrprint(F("</S:Envelope>\r\n")); 
    
    www.println();
    // from the answer, this is all that matters: <return>true</return>
  } else {
    Serial.println(F("Connection failed"));    
    return;
  }

  Serial.println(F("-------------------------------------"));
  
  /* Read data until either the connection is closed, or the idle timeout is reached. */ 
  unsigned long lastRead = millis();
  while (www.connected() && (millis() - lastRead < IDLE_TIMEOUT_MS)) {
    while (www.available()) {
      char c = www.read();
      Serial.print(c);
      lastRead = millis();
    }
  }
  www.close();
  Serial.println(F("-------------------------------------"));
  
  /* You need to make sure to clean up after yourself or the CC3000 can freak out */
  /* the next time your try to connect ... */
  Serial.println(F("\n\nDisconnecting"));
  cc3000.disconnect();
  
}

void loop(void)
{
 delay(1000);
}

/**************************************************************************/
/*!
    @brief  Begins an SSID scan and prints out all the visible networks
*/
/**************************************************************************/



/**************************************************************************/
/*!
    @brief  Tries to read the IP address and other connection details
*/
/**************************************************************************/
bool displayConnectionDetails(void)
{
  uint32_t ipAddress, netmask, gateway, dhcpserv, dnsserv;
  
  if(!cc3000.getIPAddress(&ipAddress, &netmask, &gateway, &dhcpserv, &dnsserv))
  {
    Serial.println(F("Unable to retrieve the IP Address!\r\n"));
    return false;
  }
  else
  {
    Serial.print(F("\nIP Addr: ")); cc3000.printIPdotsRev(ipAddress);
    Serial.print(F("\nNetmask: ")); cc3000.printIPdotsRev(netmask);
    Serial.print(F("\nGateway: ")); cc3000.printIPdotsRev(gateway);
    Serial.print(F("\nDHCPsrv: ")); cc3000.printIPdotsRev(dhcpserv);
    Serial.print(F("\nDNSserv: ")); cc3000.printIPdotsRev(dnsserv);
    Serial.println();
    return true;
  }
}
