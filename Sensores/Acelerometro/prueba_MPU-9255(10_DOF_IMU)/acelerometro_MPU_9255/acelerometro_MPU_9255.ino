#include <MPU9255.h>//include MPU9255 library
#include <Wire.h>

#define I2C_SDA 21
#define I2C_SCL 22

MPU9255 mpu;
 
void setup() {
  Serial.begin(115200);//initialize Serial port
  Wire.begin(I2C_SDA, I2C_SCL);
  /*if(mpu.init())
  {
  Serial.println("initialization failed");
  }
  else
  {
  Serial.println("initialization succesful!");
  }
 */
}
 
void loop() {
  mpu.read_acc();//get data from the accelerometer
  mpu.read_gyro();//get data from the gyroscope
  mpu.read_mag();//get data from the magnetometer

 
  //print all data in serial monitor
  Serial.print("AX: ");
  Serial.print((mpu.ax)/1800);
  Serial.print(" AY: ");
  Serial.print(mpu.ay/1800);
  Serial.print(" AZ: ");
  Serial.println(mpu.az/1800);
  /*
  Serial.print("    GX: ");
  Serial.print(mpu.gx);
  Serial.print(" GY: ");
  Serial.print(mpu.gy);
  Serial.print(" GZ: ");
  Serial.println(mpu.gz);
  
  Serial.print("    MX: ");
  Serial.print(mpu.mx);
  Serial.print(" MY: ");
  Serial.print(mpu.my);
  Serial.print(" MZ: ");
  Serial.println(mpu.mz);*/
  delay(100);
}
