/* Código para un sistema de Sensórica para la PROTOTREEP 0
 * Elaborado por Sebastian David Mazo Cadavid con Ayuda de Fabio Vahos de Tecnoparque del Sena
 * Treep Mobility 2021 última revisión en 9 de Junio de 2021
 * Placa de desarrollo: Widora Air Versión 6.0  
 * 
 * Se debe seleccionar la placa ---> ESP32 Arduino ---> ESP32 Dev Module
 * 
 */

// Librerías %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


#include <Wire.h>             // Librería para hacer comunicaciones I2C con distintos dispositivos
#include <MPU9255.h>          // Librería para el uso de magnetómetro, giroscopio y magnetómetro
#include "Adafruit_VL53L0X.h" // Libreria para hacer uso del sensor laser para medir distancias
#include "FS.h"               // Librería para hacer uso de módulo SD
#include "SD.h"               // Librería para hacer uso de módulo SD
#include "SPI.h"              // Librería para usar comunicaciones SPI y aplicar en módulo SD

// Definición de pines de Entrada-Salida %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


#define I2C_SDA 21    // Pin de comunicación I2C de datos
#define I2C_SCL 22    // Pin de comunicación I2C de Reloj
#define csPin 5       // Pin seleccionador de módulo SD para comunicaciones SPI


// Definición de variables globales %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

float EMA_ALFA = 0.1;   // Menor valor, mayor atenuación ( debe estar entre 0 y 1 por estabilidad)
float EMA_LP = 0;       // Valor inicial
float medida;

// Variables del sensor de velocidad 1 (Se deben cambiar varios aspectos como el radio del iman, radio del iman radio de la rueda etc
volatile float tiempo0_at = 0;  // Tiempo 0 de rueda de atras
volatile float tiempo1_at = 0;  // TIempo 1 de rueda de atras de la moto

int RPM_at = 0;
float VEL_at = 0.00;
float VELMAX_at = 0.00;
float omega_at = 0;
const float pi = 3.14159;
const float dosPi = 6.28318;
const float radioIman = 0.12;    //En principio no hace falta para calcular la velocidad angular
const float radioRueda = 0.14;   //hace falta para calcular la velocidad lineal del coche
const int hallPin_at = 34;

//

// Definicíon de objetos y clases %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

MPU9255 mpu;                                // Objeto mpu proveniente de la librería MPU9255
Adafruit_VL53L0X lox = Adafruit_VL53L0X();  // Objeto de sensor Laser de libreria Adafruit_VL53L0X.h
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void setup() {
  Serial.begin(115200);           // Inicio de comuniación serial con el puerto COM
  Wire.begin(I2C_SDA, I2C_SCL);   // Definición de los pines I2C de la placa de desarrollo
  if (!lox.begin()) {
  Serial.println(F("Error al iniciar VL53L0X"));
  pinMode(hallPin_at, INPUT);                                         // Declaracion de pin de sensor Hall
  attachInterrupt(digitalPinToInterrupt(34), pulsoRueda_at, FALLING); // Interrupcion (pin, funcion a llamar, condicion)
  Sd_init();
  
  }
}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void loop() {
//Canal(2);           // llamamos al primer sensor ubicado en la parte x de la moto
//Acelerometro();     // Lectura de las aceleraciones
//datalog();
velocidad_at();
}


// Funciones adicionales llamadas en la la parte posterior %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Sensores de velocidad %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void pulsoRueda_at()
{  
  tiempo1_at = micros();
  omega_at = (dosPi*1000000 / (tiempo1_at - tiempo0_at)); //Omega en radianes/segundo
  RPM_at = ((omega_at * 60) / dosPi);
  VEL_at = omega_at * radioRueda *3.6;   //Velocidad en Km/hora
  tiempo0_at = tiempo1_at;
}

void velocidad_at()
{
  Serial.print("RPM_at:     ");
  Serial.println(RPM_at);
  Serial.print("Velocidad_at:    ");
  Serial.println(VEL_at); 
}




// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


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

void Acelerometro() 
{
  mpu.read_acc();             // Obtener los datos del acelerometro
  Serial.print("AX: ");       // Imprime en el monitor título de aceleración
  Serial.print((mpu.ax));   // Valor númerico de la aceleración en eje x
  Serial.print(" AY: ");
  Serial.print(mpu.ay);
  Serial.print(" AZ: ");
  Serial.println(mpu.az);
  
}


// Función para tomar datos del Giroscopio (Requiere librería MPU9255)

void Giroscopio() 
{
  mpu.read_gyro();            // Obtener los datos del giroscopio 
  Serial.print("    GX: ");   // Pone un título en puerto serial
  Serial.print(mpu.gx);       // Valor númerico de giro en eje x
  Serial.print(" GY: ");
  Serial.print(mpu.gy);
  Serial.print(" GZ: ");
  Serial.println(mpu.gz);     // Valor del giro en eje Z (Adicionalmente cambia de linea)
}  


// Función para tomar datos del Magnetómetro (Requiere librería MPU9255)

void Magnetometro()
{
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
void Laser()
{
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



// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Escritura SD%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void datalog()
{
  writeFile(SD, "/datta.txt", "Hello ");      // Escribe en la´primera linea del archivo hello.txt
  appendFile(SD, "/datta.txt", "World!\n");   // Escribe en la siguiente linea de hello.txt (se debe
                                              // repetir para cada dato que se ponga en la SD)                                             
}
        

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Inicializacion modulo SD%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void Sd_init()
{
  if(!SD.begin(csPin))
  {
    Serial.println("Card Mount Failed");
    return;
  }
  uint8_t cardType = SD.cardType();
  if(cardType == CARD_NONE)
  {
    Serial.println("No SD card attached");
    return;
  }

  Serial.print("SD Card Type: ");
  
  if(cardType == CARD_MMC)
  {
    Serial.println("MMC");
  } 
  
  else if(cardType == CARD_SD)
  {
    Serial.println("SDSC");
  } 
  
  else if(cardType == CARD_SDHC)
  {
    Serial.println("SDHC");
  } else 
  
  {
    Serial.println("UNKNOWN");
  }

  uint64_t cardSize = SD.cardSize() / (1024 * 1024);
  Serial.printf("SD Card Size: %lluMB\n", cardSize);

}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Funciones internas de modulo SD %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void listDir(fs::FS &fs, const char * dirname, uint8_t levels)
{
  Serial.printf("Listing directory: %s\n", dirname);

  File root = fs.open(dirname);
  if(!root)
  {
    Serial.println("Failed to open directory");
    return;
  }
  if(!root.isDirectory())
  {
    Serial.println("Not a directory");
    return;
  
  }

  File file = root.openNextFile();
  while(file)
  {
    if(file.isDirectory())
    {
      Serial.print("  DIR : ");
      Serial.println(file.name());
      if(levels){
        listDir(fs, file.name(), levels -1);
      }
      
    } 
    else 
    {
      Serial.print("  FILE: ");
      Serial.print(file.name());
      Serial.print("  SIZE: ");
      Serial.println(file.size());
    }
    
    file = root.openNextFile();
  }
}

void createDir(fs::FS &fs, const char * path)
{
  Serial.printf("Creating Dir: %s\n", path);
  if(fs.mkdir(path))
  {
    Serial.println("Dir created");
  } 
  
  else 
  {
    Serial.println("mkdir failed");
  }
}

void removeDir(fs::FS &fs, const char * path)
{
  Serial.printf("Removing Dir: %s\n", path);
  
  if(fs.rmdir(path))
  {
    Serial.println("Dir removed");
  } 
  
  else
  {
    Serial.println("rmdir failed");
  }
}

void readFile(fs::FS &fs, const char * path)
{
  Serial.printf("Reading file: %s\n", path);

  File file = fs.open(path);
  if(!file)
  {
    Serial.println("Failed to open file for reading");
    return;
  }

  Serial.print("Read from file: ");
  while(file.available())
  {
    Serial.write(file.read());
  }
  file.close();
}

void writeFile(fs::FS &fs, const char * path, const char * message)
{
  Serial.printf("Writing file: %s\n", path);

  File file = fs.open(path, FILE_WRITE);
  
  if(!file)
  {
    Serial.println("Failed to open file for writing");
    return;
  }
  
  if(file.print(message))
  {
    Serial.println("File written");
  } 
  
  else 
  {
    Serial.println("Write failed");
  }
  file.close();
}

void appendFile(fs::FS &fs, const char * path, const char * message)
{
  Serial.printf("Appending to file: %s\n", path);

  File file = fs.open(path, FILE_APPEND);
  if(!file){
    Serial.println("Failed to open file for appending");
    return;
  }
  if(file.print(message)){
      Serial.println("Message appended");
  } else {
    Serial.println("Append failed");
  }
  file.close();
}

void renameFile(fs::FS &fs, const char * path1, const char * path2){
  Serial.printf("Renaming file %s to %s\n", path1, path2);
  
  if (fs.rename(path1, path2)) 
  {
    Serial.println("File renamed");
  }
  
  else
  {
    Serial.println("Rename failed");
  }
}

void deleteFile(fs::FS &fs, const char * path)
{
  Serial.printf("Deleting file: %s\n", path);
  if(fs.remove(path))
  {
    Serial.println("File deleted");
  } 
  
  else 
  {
    Serial.println("Delete failed");
  }
}

void testFileIO(fs::FS &fs, const char * path)
{
  File file = fs.open(path);
  static uint8_t buf[512];
  size_t len = 0;
  uint32_t start = millis();
  uint32_t end = start;
  if(file)
  {
    len = file.size();
    size_t flen = len;
    start = millis();
    while(len)
    {
      size_t toRead = len;
      if(toRead > 512){
        toRead = 512;
      }
      file.read(buf, toRead);
      len -= toRead;
    }
    end = millis() - start;
    Serial.printf("%u bytes read for %u ms\n", flen, end);
    file.close();
  } 
  else 
  {
    Serial.println("Failed to open file for reading");
  }


  file = fs.open(path, FILE_WRITE);
  if(!file)
  {
    Serial.println("Failed to open file for writing");
    return;
  }

  size_t i;
  start = millis();
  for(i=0; i<2048; i++)
  {
    file.write(buf, 512);
  }
  end = millis() - start;
  Serial.printf("%u bytes written for %u ms\n", 2048 * 512, end);
  file.close();
}


// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



// Función para medir la distancia mediante el sensor laser 
/* Filtro pasa bajas para eliminar componentes de alta frecuencia 
 *  Se puede mejorar dandole dos argumentos de entrada, los cuales serían
 *  EMA_ALFA y así se tendría un filtrado con diferente magnitud para cada variable
 */
float Filtro_pb(float valor)
{
  EMA_LP = EMA_ALFA * valor + (1 - EMA_ALFA) * EMA_LP;   // Medida es el valor a filtrar
  return EMA_LP;                                          // EMA_LP es el valor filtrado

  /* Estructura para usar el filtro:
   *  float señal_filtrada=Filtro_pb(medicion_sensor)
   */
}
