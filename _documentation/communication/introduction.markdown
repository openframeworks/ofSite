## Arduino and other serial devices communication.

The communication module has classes to communicate with other devices by now through the serial protocol. This mainly allows to communicate with devices like the Arduino. There's 2 classes in this module, [ofSerial](ofSerial.html) which allows to communicate with any device through the serial protocol. It can be used to send custom commands to for example an Arduino sketch that will receive them and do something in response like turn an LED on, move a motor... It also works the other way around, you can send messages from the Arduino (or any other serial device), for example the read from a temperature sensor to openFrameworks.

The second class, [ofArduino](ofArduino), is specific to the arduino, it uses a protocol called firmata to send messages to and from the arduino that way you don't need to care about implementing the communication protocol from the Arduino sketch to openFrameworks and viceversa but instead you can just send and read values directly to and from any pin in the Arduino.

You can check the examples in the examples/communication folder to understand better how this works.
