#include <MPU9255.h>//include MPU9255 library
#include <Wire.h>

#define I2C_SDA 21
#define I2C_SCL 22

//Variables de filtro
float EMA_ALFA = 0.1;//Menor valor, mayor atenuación ( debe estar entre 0 y 1 por estabilidad)
float EMA_LP = 0;



MPU9255 mpu;
MPU9255 mpu1;
 
void setup() {
  Serial.begin(115200);             //Inicialización del puerto serial
  Wire.begin(I2C_SDA, I2C_SCL);     // Inicialización de puertos de comunciación I2C
  iniciacion();
  mpu.init();
  mpu1.init(); 
}
 
void loop() {
  acelerometro();
  //giroscopio();
  //magnetometro();
  delay(1000);
}


void acelerometro() {
  mpu.read_acc();           // Obtener los datos del acelerometro
  mpu1.read_acc();           // Obtener los datos del acelerometro

  //Imprimir informacion en pantalla
  float axf = FILTROLP(mpu.ax);
  //Serial.print(" AXf: ");
  //Serial.print((axf));
  Serial.print(" AX: ");
  Serial.print((mpu.ax));


  Serial.print(" AX1: ");
  Serial.println((mpu1.ax));

  /*
  Serial.print(" AY: ");
  Serial.print(mpu.ay);
  Serial.print(" AZ: ");
  Serial.println(mpu.az);*/
}

void giroscopio() {
  mpu.read_gyro();          // Obtener los datos del giroscopio 
  Serial.print("    GX: ");
  Serial.print(mpu.gx);
  Serial.print(" GY: ");
  Serial.print(mpu.gy);
  Serial.print(" GZ: ");
  Serial.println(mpu.gz);

}  

void magnetometro(){
  mpu.read_mag();           //Obtener los datos del magnetometro
  Serial.print("    MX: ");
  Serial.print(mpu.mx);
  Serial.print(" MY: ");
  Serial.print(mpu.my);
  Serial.print(" MZ: ");
  Serial.println(mpu.mz);
}

// Filtro pasa bajas
float FILTROLP(float value)
{
  EMA_LP = EMA_ALFA * value + (1 - EMA_ALFA) * EMA_LP;
  return EMA_LP;
}


void iniciacion(){
 if(mpu.init())
  {
  Serial.println("initialization failed");
  }
  else
  {
  Serial.println("initialization succesful!");
  }

if(mpu1.init())
  {
  Serial.println("initialization failed");
  }
  else
  {
  Serial.println("initialization succesful!");
  }
  
}
