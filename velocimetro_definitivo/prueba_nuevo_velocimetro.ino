//Tacometro con sensor de efecto hall A3144. Baixada Androminas 2013
/*
DESCRIPCION
El sensor detecta la presencia del campo magnetico de un iman solidario 
a la rueda trasera derecha del coche. 
la salida del sensor esta conectada a un pin digital, de manera que este detecta
la presencia del campo magnetico o no. Se necesita una resistencia de Pull-up entre
los 5V y la salida.
Para que el arduino no este todo el rato leyendo el valor del sensor y pueda hacer otras cosas,
vamos a hacer uso de las interrupciones. En el caso de utilizar el arduino UNO, el pin 2 corresponde
a la interrupcion 0 y el pin 3 a la interrupcion 1. Nosotros solo necesitamos utilizar uno de ellos.
*/


volatile float tiempo0 = 0;
volatile float tiempo1 = 0;

int RPM = 0;
float VEL = 0.00;
float VELMAX = 0.00;
float omega = 0;
const float pi = 3.14159;
const float dosPi = 6.28318;
const float radioIman = 0.12;    //En principio no hace falta para calcular la velocidad angular
const float radioRueda = 0.14;   //hace falta para calcular la velocidad lineal del coche
const int hallPin = 34;

void setup(){
  Serial.begin(9600);
  pinMode(hallPin, INPUT);
  //Declaramos la interrupcion. En el arduino Micro (similar al leonardo). En el pin 1 se encuentra la interrupcion 3
  //Como tenemos una resistencia de PULL-UP nos interesa ejecutar el codigo cuando pasa de 5V a 0V --> FALLING
  attachInterrupt(digitalPinToInterrupt(34), pulsoRueda, FALLING);
}


void loop(){


  if (VEL >= VELMAX){
    VELMAX = VEL;
  }else{
  }
}

void pulsoRueda(){
  
  tiempo1 = micros();
  omega = (dosPi*1000000 / (tiempo1 - tiempo0)); //Omega en radianes/segundo
  RPM = ((omega * 60) / dosPi);
  VEL = omega * radioRueda *3.6;   //Velocidad en Km/hora
  tiempo0 = tiempo1;
 
//  Codigos para mirar los datos del sensor por el puerto serie. 
  Serial.print("RPM:     ");
  Serial.println(RPM);
  Serial.print("Velocidad:    ");
  Serial.println(VEL);
  //Serial.print("    ");
  //Serial.println(digitalRead(hallPin));
 
   
    
}
