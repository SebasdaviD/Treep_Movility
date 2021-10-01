/* Código para un sistema de Sensórica para la PROTOTREEP 0
 * Elaborado por Sebastian David Mazo Cadavid con Ayuda de Fabio Vahos de Tecnoparque del Sena
 * Treep Mobility 2021 última revisión en 9 de Junio de 2021
 * Placa de desarrollo: Widora Air Versión 6.0  
 */

// Librerías %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


#include <Wire.h>             // Librería para hacer comunicaciones I2C con distintos dispositivos
#include <MPU9255.h>          // Librería para el uso de magnetómetro, giroscopio y magnetómetro
#include "Adafruit_VL53L0X.h" // Libreria para hacer uso del sensor laser para medir distancias

// Definición de pines de Entrada-Salida %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


#define I2C_SDA 21    // Pin de comunicación I2C de datos
#define I2C_SCL 22    // Pin de comunicación I2C de Reloj


// Definición de variables globales %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

float EMA_ALFA = 0.1;   // Menor valor, mayor atenuación ( debe estar entre 0 y 1 por estabilidad)
float EMA_LP = 0;       // Valor inicial
float medida;

// Definicíon de objetos y clases %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

MPU9255 mpu;                                // Objeto mpu proveniente de la librería MPU9255
Adafruit_VL53L0X lox = Adafruit_VL53L0X();  // Objeto de sensor Laser de libreria Adafruit_VL53L0X.h
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void setup() {
  Serial.begin(115200);           // Inicio de comuniación serial con el puerto COM
  Wire.begin(I2C_SDA, I2C_SCL);   // Definición de los pines I2C de la placa de desarrollo
  if (!lox.begin()) {
  Serial.println(F("Error al iniciar VL53L0X"));
  }
}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void loop() {
//Canal(2);           // llamamos al primer sensor ubicado en la parte x de la moto
//Acelerometro();     // Lectura de las aceleraciones
//delay(100);        // Esperamos 1 segundo para la siguiente medida     
// Canal(1);
// Serial.println("Canal1");
// Acelerometro();
// delay(100);        // Esperamos 1 segundo para la siguiente acción
Laser();
delay(200);
}



// Funciones adicionales llamadas en la la parte posterior %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


//Función para verificar correcto funcionamiento de los sensores MPU9255
// Requiere libreria MPU9255

void Iniciacion(){
 if(mpu.init())
  {
   Serial.println("Fallo en la iniciación MPU9255");
  }
   else
  {
   Serial.println("inicialización exitosa de los sensores MPU9255");
  }
}



// Función para controlar multiplexor en diferentes dispositivos I2C (Requiere Wire.h)

void Canal(uint8_t bus) // Se deben introducir del 0 al 7
{
  Wire.beginTransmission(0x70);  // La dirección del TCA9548A es 0x70
  Wire.write(1 << bus);          // Enviar un byte para seleccionar el bus
  Wire.endTransmission();        // Termina la transmisión
}


// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Acelerometro%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

// Función para tomar datos del acelerómetro (Requiere librería MPU9255)

void Acelerometro() {
  mpu.read_acc();             // Obtener los datos del acelerometro
  Serial.print("AX: ");       // Imprime en el monitor título de aceleración
  Serial.print((mpu.ax));   // Valor númerico de la aceleración en eje x
  Serial.print(" AY: ");
  Serial.print(mpu.ay);
  Serial.print(" AZ: ");
  Serial.println(mpu.az);
  
}


// Función para tomar datos del Giroscopio (Requiere librería MPU9255)

void Giroscopio() {
  mpu.read_gyro();            // Obtener los datos del giroscopio 
  Serial.print("    GX: ");   // Pone un título en puerto serial
  Serial.print(mpu.gx);       // Valor númerico de giro en eje x
  Serial.print(" GY: ");
  Serial.print(mpu.gy);
  Serial.print(" GZ: ");
  Serial.println(mpu.gz);     // Valor del giro en eje Z (Adicionalmente cambia de linea)
}  


// Función para tomar datos del Magnetómetro (Requiere librería MPU9255)

void Magnetometro(){
  mpu.read_mag();             //Obtener los datos del magnetometro
  Serial.print("    MX: ");   // Pone un título en puerto serial
  Serial.print(mpu.mx);
  Serial.print(" MY: ");
  Serial.print(mpu.my);
  Serial.print(" MZ: ");
  Serial.println(mpu.mz);     // Valor del magnetómetro en eje Z (Adicionalmente cambia de linea)
}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Sensor Laser %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
void Laser(){
  VL53L0X_RangingMeasurementData_t measure;
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
  }
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


// Función para medir la distancia mediante el sensor laser 
/* Filtro pasa bajas para eliminar componentes de alta frecuencia 
 *  Se puede mejorar dandole dos argumentos de entrada, los cuales serían
 *  EMA_ALFA y así se tendría un filtrado con diferente magnitud para cada variable
 */
float Filtro_pb(float valor){
  EMA_LP = EMA_ALFA * valor + (1 - EMA_ALFA) * EMA_LP;   // Medida es el valor a filtrar
  return EMA_LP;                                          // EMA_LP es el valor filtrado

  /* Estructura para usar el filtro:
   *  float señal_filtrada=Filtro_pb(medicion_sensor)
   */
}
