#include "Adafruit_VL53L0X.h"
#include <Wire.h>  

#define I2C_SDA 21    // Pin de comunicación I2C de datos
#define I2C_SCL 22    // Pin de comunicación I2C de Reloj

Adafruit_VL53L0X lox = Adafruit_VL53L0X();

void setup() {
  Serial.begin(115200);
  Wire.begin(I2C_SDA, I2C_SCL);
  // Iniciar sensor
  Serial.println("VL53L0X test");
  if (!lox.begin()) {
    Serial.println(F("Error al iniciar VL53L0X"));
    //while(1);
  }
}


void loop() {
  
  VL53L0X_RangingMeasurementData_t measure;
  Serial.print("Leyendo sensor... ");
  lox.rangingTest(&measure, false); // si se pasa true como parametro, muestra por puerto serie datos de debug
  if (measure.RangeStatus != 21)
  {
   Serial.print("Distancia (mm): ");
   Serial.println(measure.RangeMilliMeter);
  } 
  else
  {
    Serial.println("  Fuera de rango ");
  } 
  delay(100);
}




void Canal(uint8_t bus) // Se deben introducir del 0 al 7
{
  Wire.beginTransmission(0x70);  // La dirección del TCA9548A es 0x70
  Wire.write(1 << bus);          // Enviar un byte para seleccionar el bus
  Wire.endTransmission();        // Termina la transmisión
}
