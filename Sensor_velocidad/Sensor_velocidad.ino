//#include <Arduino.h>

TaskHandle_t Task1;//"Task1" nombre de la tarea del proceso

 int HALLPin = 35;
 int LEDPin = 16;
 float rpm=0;
 
 int medida=0;
 int count=0;
 int countx;
 int deltat=0;
 int delta_espera;
 unsigned long tiempo=0;
 unsigned long NOW; 
 unsigned long tiempo_espera;   // Variable de tiempo de seguridad (Revisar si la moto no se mueve)
 boolean banderavel=false; 

void setup() {
 pinMode(HALLPin, INPUT_PULLUP);
  //Crear el nuevo hilo del proceso
  xTaskCreatePinnedToCore(
    loop2,    //Nombre del loop creado "loop2"
    "Task_1", //Nombre
    10000,    //Tamaño de la pila, aumentar tamaño si sale error
    NULL,     //Parametro casi siempre Nulo
    1,        //Prioridad de la tarea
    &Task1,   //Nombre de la tarea "Task1"
    0);       //Nucleo donde se ejecuta
  Serial.begin(115200);

}

// hilo 0 
void loop() {
  delay(1000);
}

// hilo 1
void loop2(void *parameter)
{
 for (;;)
   {
    Velocidad();
    banderavel=false;
   } // del for infinito
}


void Velocidad(){
  while(banderavel == false )
    {
      // delay(5); // Retraso para evitar medir ruido (Probar si funciona sin el retardo)
      
      if(digitalRead(HALLPin)==1)   // Significa que el sensor está en estado BAJO
        {
        countx=0;    
        }
        
        // HALLPin=0 Significa que el sensor es afectado por el imán (Estado alto)
      if(digitalRead(HALLPin)==0 && countx==0)
        {
        Serial.println("Alto");
        countx=1;       // Variable auxiliar usada más adelante (significa que entramos a este estado)
        count++;        // sumamos en uno el contador (en este caso sirve por si ponemos más de un imán)

        if(count==1)    // Imán pasa por primera vez  
          {   
          NOW=millis();   // Obtenemos el tiempo actual para la tarjeta 
          }
          
          // El contador puede aumentar dependiendo de la cantidad 
          // de imanes que tengamos para una mejor medida
        if(count==2)
          {
          tiempo=millis(); // Tomamos el tiempo la segunda vez que pasó el imán por el sensor
          deltat=tiempo-NOW; // Calculamos el tiempo entre dos altos del sensor
          rpm=(count-1)*(60000/(float)deltat);  // Calculamos las rpm del motor
          count=0;           // Reiniciamos la variable contador para entrar en el primer if
          Serial.println(rpm);    // Poner la información de los rpm
          Serial.println(deltat);
          banderavel=true;
          }
        }
        tiempo_espera = millis();
        delta_espera=tiempo_espera - NOW;
        
       // Condicion en el que la moto se detiene abruptamente o va a muy bajas revoluciones
       if (delta_espera > 10000)
         {
          rpm=0;                // Reiniciamos rpm
          banderavel = true;    // Obligamos a salir del ciclo while
          count =  0;           // Reiniciamos contador para poder volver a medir 
          NOW = tiempo_espera;  // Actualizamos NOW para no quedar atrapados en el ciclo     
         }
      }
      vTaskDelay(10);
}
