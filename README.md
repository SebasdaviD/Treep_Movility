# Treep_Movility
Por Sebastian David Mazo Cadavid (sebastiandavidmazo@gmail.com) 

Repositorio para el código correspondiente a el desarrollo de la programación de los diferentes sistemas electrónicos de una moto eléctrica.


////////////////////////////                          Etapa de sensórica:                           /////////////////////////////////////////////////

La finalidad de esta etapa es describir de forma dínamica el comportamiento de la moto eléctrica, por lo que se van a medir las siguientes variables:

- Aceleraciones
- Giros
- Campo magnético
- Voltaje
- Corriente
- Potencia de electrónica
- Desplazamientos
- Ubicación global
- Velocidad angular

Para medir dichas variables se hace uso de la siguiente lista de dispositivos:

- Tarjeta de desarrollo WIDORA AIR V6.0

- Sensor MPU-9255 (DOF-IMU) 
    Medición de aceleraciones giros y campos magnéticos
    
- Multiplexor TCA9548A
    Usado para conectar varios dispositivos MPU-9255 de manera simultanea

- Módulo sensor de Efecto Hall 3144 5v
    Medición de velocidad
    
- Módulo de distancia Adafruit VL53L0X
    Usado para medir la distancia de desplazamiento de los amortiguadores
    

