#class ofArduino


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

This is a way to control an Arduino that has had the firmata library
loaded onto it, from OF.

To load firmata onto your Arduino, run the Arduino IDE, open the Examples >
Firmata > StandardFirmata sketch, and upload it to the Arduino board.

Once the ofArduino instance returns true from isArduinoReady() you can set
the mode of the different digital pins using sendDigitalPinMode()

This sets pin 9 to input so that it can read a button press
~~~~{.cpp}
    sendDigitalPinMode(9, ARD_INPUT)
~~~~

This sets pin 9 to be a PWM out pin. Note that this only works on pins
that are PWM enabled.
~~~~{.cpp}
    sendDigitalPinMode(9, ARD_PWM)
~~~~





##Description

This is a way to control an Arduino that has had the firmata library loaded onto it, from OF. To load firmata onto your Arduino,  run the Arduino IDE, open the Examples > Firmata > StandardFirmata sketch, and upload it to the Arduino board.
Once the ofArduino instance returns true from isArduinoReady() you can set the mode of the different digital pins using sendDigitalPinMode()
   
~~~~{.cpp}
sendDigitalPinMode(9, ARD_INPUT)
~~~~

This sets pin 9 to input so that it can read a button press, while:

~~~~{.cpp}
sendDigitalPinMode(9, ARD_PWM)
~~~~

sets pin 9 to be a PWM out pin. Note that this only works on pins that are PWM enabled.





##Methods



###void attachEncoder(pinA, pinB)

<!--
_syntax: attachEncoder(pinA, pinB)_
_name: attachEncoder_
_returns: void_
_returns_description: _
_parameters: int pinA, int pinB_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\}
\name Encoder
\{





_description: _







<!----------------------------------------------------------------------------->

###bool connect(&device, baud = 57600)

<!--
_syntax: connect(&device, baud = 57600)_
_name: connect_
_returns: bool_
_returns_description: _
_parameters: const string &device, int baud=57600_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Opens a serial port connection to the arduino

Parameters:
device The name of the device.
You can get the name from the Arduino IDE
baud The baud rate the connection uses





_description: _

opens a serial port connection to the arduino





<!----------------------------------------------------------------------------->

###int convertAnalogPinToDigital(pin)

<!--
_syntax: convertAnalogPinToDigital(pin)_
_name: convertAnalogPinToDigital_
_returns: int_
_returns_description: _
_parameters: size_t pin_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int convertDigitalPinToAnalog(pin)

<!--
_syntax: convertDigitalPinToAnalog(pin)_
_name: convertDigitalPinToAnalog_
_returns: int_
_returns_description: _
_parameters: size_t pin_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void detachEncoder(encoderNum)

<!--
_syntax: detachEncoder(encoderNum)_
_name: detachEncoder_
_returns: void_
_returns_description: _
_parameters: int encoderNum_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void disableEncoderReporting()

<!--
_syntax: disableEncoderReporting()_
_name: disableEncoderReporting_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void disconnect()

<!--
_syntax: disconnect()_
_name: disconnect_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Closes the serial port connection.
Does not turn the Arduino off.





_description: _

closes the serial port connection. Does not turn the Arduino off.





<!----------------------------------------------------------------------------->

###void enableEncoderReporting()

<!--
_syntax: enableEncoderReporting()_
_name: enableEncoderReporting_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void getAllEncoderPositions()

<!--
_syntax: getAllEncoderPositions()_
_name: getAllEncoderPositions_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int getAnalog(pin)

<!--
_syntax: getAnalog(pin)_
_name: getAnalog_
_returns: int_
_returns_description: _
_parameters: int pin_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the analog in value that the pin is currently reading.
because the Arduino has a 10 bit ADC you get between 0 and 1023 for
possible values.


Parameters:
pin The pin number (0-5)





_description: _

Returns the analog in value that the pin is currently reading. because the Arduino has a 10 bit ADC you get between 0 and 1023 for possible values.





<!----------------------------------------------------------------------------->

###int * getAnalogHistory()

<!--
_syntax: getAnalogHistory()_
_name: getAnalogHistory_
_returns: int *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Returns a pointer to the analog data history list for the given pin.

Parameters:
pin The Arduino Uno pin: 0-5





_description: _

On the Arduino Uno pin: 0-5
returns a pointer to the analog data history list for the given pin





<!----------------------------------------------------------------------------->

###int getAnalogPinReporting(pin)

<!--
_syntax: getAnalogPinReporting(pin)_
_name: getAnalogPinReporting_
_returns: int_
_returns_description: _
_parameters: int pin_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns: `ARD_ON` or `ARD_OFF`





_description: _

returns ARD_ON, ARD_OFF





<!----------------------------------------------------------------------------->

###int getDigital(pin)

<!--
_syntax: getDigital(pin)_
_name: getDigital_
_returns: int_
_returns_description: _
_parameters: int pin_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the last received value (if the pin mode is ARD_INPUT)
or the last set value (if the pin mode is ARD_OUTPUT) for the given
pin

Returns whether the pin is reading high or low, 1 or 0. You can test
against this with an if() statement which is handy:
~~~~{.cpp}
    if(arduino.getDigital(pin)){
        // do something on high
    } else {
        // do something on low
    }
~~~~
\note Pin 16-21 can also be used if analog inputs 0-5 are used as digital pins





_description: _

On the Arduino Uno pin: 2-13
returns the last received value (if the pin mode is ARD_INPUT) or the last set value (if the pin mode is ARD_OUTPUT) for the given pin
Note: pin 16-21 can also be used if analog inputs 0-5 are used as digital pins
Returns whether the pin is reading high or low, 1 or 0. You can test against this with an if() statement which is handy:
~~~~{.cpp}
if(arduino.getDigital(pin)){
    // do something on high
}else{
    // do something on low
}
~~~~





<!----------------------------------------------------------------------------->

###int * getDigitalHistory()

<!--
_syntax: getDigitalHistory()_
_name: getDigitalHistory_
_returns: int *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Returns a pointer to the digital data history list for the
given pin
\note Pin 16-21 can also be used if analog inputs 0-5 are used as
digital pins

Parameters:
pin The pin number (2-13)





_description: _

On the Arduino Uno pin: 2-13
returns a pointer to the digital data history list for the given pin
Note: pin 16-21 can also be used if analog inputs 0-5 are used as digital pins





<!----------------------------------------------------------------------------->

###int getDigitalPinMode(pin)

<!--
_syntax: getDigitalPinMode(pin)_
_name: getDigitalPinMode_
_returns: int_
_returns_description: _
_parameters: int pin_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the pin mode of the given pin


Returns: `ARD_INPUT`, `ARD_OUTPUT`, `ARD_PWM`, `ARD_SERVO`, `ARD_ANALOG`





_description: _

returns ARD_INPUT, ARD_OUTPUT, ARD_PWM, ARD_SERVO, ARD_ANALOG





<!----------------------------------------------------------------------------->

###void getEncoderPosition(encoderNum)

<!--
_syntax: getEncoderPosition(encoderNum)_
_name: getEncoderPosition_
_returns: void_
_returns_description: _
_parameters: int encoderNum_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###string getFirmwareName()

<!--
_syntax: getFirmwareName()_
_name: getFirmwareName_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Returns: the name of the firmware.





_description: _

returns the name of the firmware





<!----------------------------------------------------------------------------->

###int getInvertedValueFromTwo7bitBytes(lsb, msb)

<!--
_syntax: getInvertedValueFromTwo7bitBytes(lsb, msb)_
_name: getInvertedValueFromTwo7bitBytes_
_returns: int_
_returns_description: _
_parameters: unsigned char lsb, unsigned char msb_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int getMajorFirmwareVersion()

<!--
_syntax: getMajorFirmwareVersion()_
_name: getMajorFirmwareVersion_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Returns: the major firmware version.





_description: _

returns the major firmware version





<!----------------------------------------------------------------------------->

###int getMinorFirmwareVersion()

<!--
_syntax: getMinorFirmwareVersion()_
_name: getMinorFirmwareVersion_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Returns: the minor firmware version.





_description: _

returns the minor firmware version





<!----------------------------------------------------------------------------->

###int getNumAnalogPins()

<!--
_syntax: getNumAnalogPins()_
_name: getNumAnalogPins_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int getPinCapabilities()

<!--
_syntax: getPinCapabilities()_
_name: getPinCapabilities_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int getPwm(pin)

<!--
_syntax: getPwm(pin)_
_name: getPwm_
_returns: int_
_returns_description: _
_parameters: int pin_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the last set PWM value (0-255) for the given pin

The pins mode has to be ARD_PWM

On the Arduino Uno the following pins are supported: 3, 5, 6, 9, 10 and 11
\note Pin 16-21 can also be used if analog inputs 0-5 are used as digital pins





_description: _

On the Arduino Uno pin: 3, 5, 6, 9, 10 and 11
returns the last set PWM value (0-255) for the given pin
the pins mode has to be ARD_PWM
Note: pin 16-21 can also be used if analog inputs 0-5 are used as digital pins





<!----------------------------------------------------------------------------->

###int getServo(pin)

<!--
_syntax: getServo(pin)_
_name: getServo_
_returns: int_
_returns_description: _
_parameters: int pin_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Returns: the last set servo value for a pin if the pin has a servo attached.





_description: _

returns the last set servo value for a pin if the pin has a servo attached





<!----------------------------------------------------------------------------->

###string getString()

<!--
_syntax: getString()_
_name: getString_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns: the last received string.





_description: _

returns the last received string





<!----------------------------------------------------------------------------->

###int * getStringHistory()

<!--
_syntax: getStringHistory()_
_name: getStringHistory_
_returns: int *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Returns: a pointer to the string history.





_description: _

returns a pointer to the string history





<!----------------------------------------------------------------------------->

###int getSysEx()

<!--
_syntax: getSysEx()_
_name: getSysEx_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Returns: the last received SysEx message.





_description: _

returns the last received SysEx message





<!----------------------------------------------------------------------------->

###int * getSysExHistory()

<!--
_syntax: getSysExHistory()_
_name: getSysExHistory_
_returns: int *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Returns: a pointer to the SysEx history.





_description: _

returns a pointer to the SysEx history





<!----------------------------------------------------------------------------->

###int getTotalPins()

<!--
_syntax: getTotalPins()_
_name: getTotalPins_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int getValueFromTwo7bitBytes(lsb, msb)

<!--
_syntax: getValueFromTwo7bitBytes(lsb, msb)_
_name: getValueFromTwo7bitBytes_
_returns: int_
_returns_description: _
_parameters: unsigned char lsb, unsigned char msb_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Useful for parsing SysEx messages





_description: _

useful for parsing SysEx messages





<!----------------------------------------------------------------------------->

###void initPins()

<!--
_syntax: initPins()_
_name: initPins_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\< Indicate that pins are initialized.





_description: _







<!----------------------------------------------------------------------------->

###bool isAnalogPin(pin)

<!--
_syntax: isAnalogPin(pin)_
_name: isAnalogPin_
_returns: bool_
_returns_description: _
_parameters: int pin_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool isArduinoReady()

<!--
_syntax: isArduinoReady()_
_name: isArduinoReady_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool isAttached()

<!--
_syntax: isAttached()_
_name: isAttached_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool isI2CConfigured()

<!--
_syntax: isI2CConfigured()_
_name: isI2CConfigured_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool isInitialized()

<!--
_syntax: isInitialized()_
_name: isInitialized_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns true if a succesfull connection has been established
and the Arduino has reported a firmware





_description: _

returns true if a succesfull connection has been established and the Arduino has reported a firmware





<!----------------------------------------------------------------------------->

###bool isPin(pin)

<!--
_syntax: isPin(pin)_
_name: isPin_
_returns: bool_
_returns_description: _
_parameters: int pin_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

### ofArduino()

<!--
_syntax: ofArduino()_
_name: ofArduino_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _

\name Constructor and Destructor
\{





_description: _







<!----------------------------------------------------------------------------->

###void processData(inputData)

<!--
_syntax: processData(inputData)_
_name: processData_
_returns: void_
_returns_description: _
_parameters: unsigned char inputData_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void processDigitalPort(port, value)

<!--
_syntax: processDigitalPort(port, value)_
_name: processDigitalPort_
_returns: void_
_returns_description: _
_parameters: int port, unsigned char value_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void processSysExData(data)

<!--
_syntax: processSysExData(data)_
_name: processSysExData_
_returns: void_
_returns_description: _
_parameters: int data_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void purge()

<!--
_syntax: purge()_
_name: purge_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void resetEncoderPosition(encoderNum)

<!--
_syntax: resetEncoderPosition(encoderNum)_
_name: resetEncoderPosition_
_returns: void_
_returns_description: _
_parameters: int encoderNum_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendAnalogMappingRequest()

<!--
_syntax: sendAnalogMappingRequest()_
_name: sendAnalogMappingRequest_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendAnalogPinReporting(pin, mode)

<!--
_syntax: sendAnalogPinReporting(pin, mode)_
_name: sendAnalogPinReporting_
_returns: void_
_returns_description: _
_parameters: int pin, int mode_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendByte(byte)

<!--
_syntax: sendByte(byte)_
_name: sendByte_
_returns: void_
_returns_description: _
_parameters: unsigned char byte_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sends a byte without wrapping it in a firmata message.

Data has to be in the 0-127 range. Values > 127 will be interpreted as
commands.





_description: _

sends a byte without wrapping it in a firmata message, data has to be in the 0-127 range,
values > 127 will be interpreted as commands.





<!----------------------------------------------------------------------------->

###void sendDigital(pin, value, force = false)

<!--
_syntax: sendDigital(pin, value, force = false)_
_name: sendDigital_
_returns: void_
_returns_description: _
_parameters: int pin, int value, bool force=false_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\}
\name Senders
\{





_description: _







<!----------------------------------------------------------------------------->

###void sendDigitalPinMode(pin, mode)

<!--
_syntax: sendDigitalPinMode(pin, mode)_
_name: sendDigitalPinMode_
_returns: void_
_returns_description: _
_parameters: int pin, int mode_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Setting a pins mode to ARD_INPUT turns on reporting for the port the pin is on

Parameters:
pin Pin on arduino (2-13)
mode `ARD_INPUT`, `ARD_OUTPUT`, `ARD_PWM`
\note Analog pins 0-5 can be used as digitial pins 16-21 but if the
mode of _one_ of these pins is set to `ARD_INPUT` then _all_ analog pin
reporting will be turned off





_description: _

On the Arduino Uno pin: 2-13 mode: ARD_INPUT, ARD_OUTPUT, ARD_PWM setting a pins mode to ARD_INPUT turns on reporting for the port the pin is on Note: analog pins 0-5 can be used as digitial pins 16-21 but if the mode of _one_ of these pins is set to ARD_INPUT then _all_ analog pin reporting will be turned off





<!----------------------------------------------------------------------------->

###void sendDigitalPinReporting(pin, mode)

<!--
_syntax: sendDigitalPinReporting(pin, mode)_
_name: sendDigitalPinReporting_
_returns: void_
_returns_description: _
_parameters: int pin, int mode_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendDigitalPortReporting(port, mode)

<!--
_syntax: sendDigitalPortReporting(port, mode)_
_name: sendDigitalPortReporting_
_returns: void_
_returns_description: _
_parameters: int port, int mode_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendFirmwareVersionRequest()

<!--
_syntax: sendFirmwareVersionRequest()_
_name: sendFirmwareVersionRequest_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendI2CConfig(delay)

<!--
_syntax: sendI2CConfig(delay)_
_name: sendI2CConfig_
_returns: void_
_returns_description: _
_parameters: int delay_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sends a I2C config request

 Must be called before an I2C Read or Write

Parameters:
{number} delay in microseconds to set for I2C Read





_description: _







<!----------------------------------------------------------------------------->

###void sendI2CReadRequest(address, numBytes, reg)

<!--
_syntax: sendI2CReadRequest(address, numBytes, reg)_
_name: sendI2CReadRequest_
_returns: void_
_returns_description: _
_parameters: char address, int numBytes, int reg_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Asks the arduino to request bytes from an I2C device


Parameters:
{number} slaveAddress The address of the I2C device
{number} numBytes The number of bytes to receive.
{function} callback A function to call when we have received the bytes.





_description: _







<!----------------------------------------------------------------------------->

###void sendI2CWriteRequest(slaveAddress, *bytes, numOfBytes, reg)

<!--
_syntax: sendI2CWriteRequest(slaveAddress, *bytes, numOfBytes, reg)_
_name: sendI2CWriteRequest_
_returns: void_
_returns_description: _
_parameters: char slaveAddress, unsigned char *bytes, int numOfBytes, int reg_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Asks the arduino to send an I2C request to a device


Parameters:
{number} slaveAddress The address of the I2C device
{Array} bytes The bytes to send to the device





_description: _







<!----------------------------------------------------------------------------->

###void sendI2CWriteRequest(slaveAddress, *bytes, numOfBytes, reg)

<!--
_syntax: sendI2CWriteRequest(slaveAddress, *bytes, numOfBytes, reg)_
_name: sendI2CWriteRequest_
_returns: void_
_returns_description: _
_parameters: char slaveAddress, const char *bytes, int numOfBytes, int reg_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendI2CWriteRequest(slaveAddress, *bytes, numOfBytes, reg)

<!--
_syntax: sendI2CWriteRequest(slaveAddress, *bytes, numOfBytes, reg)_
_name: sendI2CWriteRequest_
_returns: void_
_returns_description: _
_parameters: char slaveAddress, char *bytes, int numOfBytes, int reg_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendI2CWriteRequest(slaveAddress, bytes, reg)

<!--
_syntax: sendI2CWriteRequest(slaveAddress, bytes, reg)_
_name: sendI2CWriteRequest_
_returns: void_
_returns_description: _
_parameters: char slaveAddress, int bytes, int reg_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendI2ContinuousReadRequest(address, numBytes, reg)

<!--
_syntax: sendI2ContinuousReadRequest(address, numBytes, reg)_
_name: sendI2ContinuousReadRequest_
_returns: void_
_returns_description: _
_parameters: char address, int numBytes, int reg_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Initialize a continuous I2C read.


Parameters:
{number} address    The address of the I2C device
{number} register   Optionally set the register to read from.
{number} numBytes   The number of bytes to receive.





_description: _







<!----------------------------------------------------------------------------->

###void sendOneWireAlarmsSearch(pin)

<!--
_syntax: sendOneWireAlarmsSearch(pin)_
_name: sendOneWireAlarmsSearch_
_returns: void_
_returns_description: _
_parameters: int pin_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Searches for 1-wire devices on the bus in an alarmed state.


Parameters:
pin





_description: _







<!----------------------------------------------------------------------------->

###void sendOneWireConfig(pin, enableParasiticPower)

<!--
_syntax: sendOneWireConfig(pin, enableParasiticPower)_
_name: sendOneWireConfig_
_returns: void_
_returns_description: _
_parameters: int pin, bool enableParasiticPower_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Configure the passed pin as the controller in a 1-wire bus.

Pass as enableParasiticPower true if you want the data pin to power the bus.

Parameters:
pin
enableParasiticPower





_description: _







<!----------------------------------------------------------------------------->

###void sendOneWireDelay(pin, delay)

<!--
_syntax: sendOneWireDelay(pin, delay)_
_name: sendOneWireDelay_
_returns: void_
_returns_description: _
_parameters: int pin, unsigned int delay_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Tells firmata to not do anything for the passed amount of ms.

For when you need to give a device attached to the bus time to do a calculation.

Parameters:
pin





_description: _







<!----------------------------------------------------------------------------->

###void sendOneWireRead(pin, devices, numBytesToRead)

<!--
_syntax: sendOneWireRead(pin, devices, numBytesToRead)_
_name: sendOneWireRead_
_returns: void_
_returns_description: _
_parameters: int pin, int devices, int numBytesToRead_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Reads data from a device on the bus.

N.b. ConfigurableFirmata will issue the 1-wire select command internally.

Parameters:
pin
device
numBytesToRead
callback





_description: _







<!----------------------------------------------------------------------------->

###void sendOneWireRequest(pin, subcommand, devices, numBytesToRead, correlationId, delay, dataToWrite)

<!--
_syntax: sendOneWireRequest(pin, subcommand, devices, numBytesToRead, correlationId, delay, dataToWrite)_
_name: sendOneWireRequest_
_returns: void_
_returns_description: _
_parameters: int pin, unsigned char subcommand, int devices, int numBytesToRead, unsigned char correlationId, unsigned int delay, int dataToWrite_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendOneWireReset(pin)

<!--
_syntax: sendOneWireReset(pin)_
_name: sendOneWireReset_
_returns: void_
_returns_description: _
_parameters: int pin_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Resets all devices on the bus.

Parameters:
pin





_description: _







<!----------------------------------------------------------------------------->

###void sendOneWireSearch(pin)

<!--
_syntax: sendOneWireSearch(pin)_
_name: sendOneWireSearch_
_returns: void_
_returns_description: _
_parameters: int pin_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Searches for 1-wire devices on the bus.


Parameters:
pin





_description: _







<!----------------------------------------------------------------------------->

###void sendOneWireSearch(type, pin)

<!--
_syntax: sendOneWireSearch(type, pin)_
_name: sendOneWireSearch_
_returns: void_
_returns_description: _
_parameters: char type, int pin_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendOneWireWrite(pin, devices, data)

<!--
_syntax: sendOneWireWrite(pin, devices, data)_
_name: sendOneWireWrite_
_returns: void_
_returns_description: _
_parameters: int pin, int devices, int data_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Writes data to the bus to be received by the passed device.

The device should be obtained from a previous call to sendOneWireSearch. ConfigurableFirmata will issue the 1-wire select command internally.

Parameters:
pin
device
data





_description: _







<!----------------------------------------------------------------------------->

###void sendOneWireWriteAndRead(pin, devices, data, numBytesToRead)

<!--
_syntax: sendOneWireWriteAndRead(pin, devices, data, numBytesToRead)_
_name: sendOneWireWriteAndRead_
_returns: void_
_returns_description: _
_parameters: int pin, int devices, int data, int numBytesToRead_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sends the passed data to the passed device on the bus, reads the specified number of bytes.

ConfigurableFirmata will issue the 1-wire select command internally.

Parameters:
pin
device
data
numBytesToRead
callback





_description: _







<!----------------------------------------------------------------------------->

###void sendPinCapabilityRequest()

<!--
_syntax: sendPinCapabilityRequest()_
_name: sendPinCapabilityRequest_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendPinCofigurationRequest()

<!--
_syntax: sendPinCofigurationRequest()_
_name: sendPinCofigurationRequest_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendPinStateQuery(pin)

<!--
_syntax: sendPinStateQuery(pin)_
_name: sendPinStateQuery_
_returns: void_
_returns_description: _
_parameters: int pin_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendProtocolVersionRequest()

<!--
_syntax: sendProtocolVersionRequest()_
_name: sendProtocolVersionRequest_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendPwm(pin, value, force = false)

<!--
_syntax: sendPwm(pin, value, force = false)_
_name: sendPwm_
_returns: void_
_returns_description: _
_parameters: int pin, int value, bool force=false_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

On the Uno this will work on pins: 3, 5, 6, 9, 10 and 11 value: 0 (always off) to 255 (always on). the pins mode has to be set to ARD_PWM
TODO check if the PWM bug still is there causing frequent digital port reporting...





<!----------------------------------------------------------------------------->

###void sendReset()

<!--
_syntax: sendReset()_
_name: sendReset_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

This will cause your Arduino to reset and boot into the program again.





_description: _

This will cause your Arduino to reset and boot into the program again.





<!----------------------------------------------------------------------------->

###void sendSerialConfig(portID, baud, rxPin, txPin)

<!--
_syntax: sendSerialConfig(portID, baud, rxPin, txPin)_
_name: sendSerialConfig_
_returns: void_
_returns_description: _
_parameters: Firmata_Serial_Ports portID, int baud, int rxPin, int txPin_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Asks the Arduino to configure a hardware or serial port.


Parameters:
portID The serial port to use (HW_SERIAL1, HW_SERIAL2, HW_SERIAL3, SW_SERIAL0, SW_SERIAL1, SW_SERIAL2, SW_SERIAL3)
baud  The baud rate of the serial port
rxPin [SW Serial only] The RX pin of the SoftwareSerial instance
txPin [SW Serial only] The TX pin of the SoftwareSerial instance





_description: _







<!----------------------------------------------------------------------------->

###void sendServo(pin, value, force = false)

<!--
_syntax: sendServo(pin, value, force = false)_
_name: sendServo_
_returns: void_
_returns_description: _
_parameters: int pin, int value, bool force=false_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Send a value to a servo.

A servo has to be atached to the pin prior

Parameters:
pin 9 or 10
value The value to send





_description: _

On the Arduino Uno pin: 9, 10
the pin has to have a servo attached for this to work.





<!----------------------------------------------------------------------------->

###void sendServoAttach(pin, minPulse = 544, maxPulse = 2400)

<!--
_syntax: sendServoAttach(pin, minPulse = 544, maxPulse = 2400)_
_name: sendServoAttach_
_returns: void_
_returns_description: _
_parameters: int pin, int minPulse=544, int maxPulse=2400_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Parameters:
angle parameter DEPRECATED as of Firmata 2.2





_description: _

On the Arduino Uno pin: 9, 10 attaches a servo to a pin
angle parameter DEPRECATED as of Firmata 2.2





<!----------------------------------------------------------------------------->

###void sendStepper2Wire(dirPin, stepPin, stepsPerRev = 200)

<!--
_syntax: sendStepper2Wire(dirPin, stepPin, stepsPerRev = 200)_
_name: sendStepper2Wire_
_returns: void_
_returns_description: _
_parameters: int dirPin, int stepPin, int stepsPerRev=200_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

-- stepper





_description: _







<!----------------------------------------------------------------------------->

###void sendStepper4Wire(pin1, pin2, pin3, pin4, stepsPerRev = 200)

<!--
_syntax: sendStepper4Wire(pin1, pin2, pin3, pin4, stepsPerRev = 200)_
_name: sendStepper4Wire_
_returns: void_
_returns_description: _
_parameters: int pin1, int pin2, int pin3, int pin4, int stepsPerRev=200_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

the pins has to have a stepper attached





_description: _







<!----------------------------------------------------------------------------->

###void sendStepperMove(stepperID, direction, steps, speed = 0, acceleration, deceleration)

<!--
_syntax: sendStepperMove(stepperID, direction, steps, speed = 0, acceleration, deceleration)_
_name: sendStepperMove_
_returns: void_
_returns_description: _
_parameters: int stepperID, int direction, int steps, int speed=0, float acceleration, float deceleration_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

the pins has to have a stepper attached





_description: _







<!----------------------------------------------------------------------------->

###void sendString(str)

<!--
_syntax: sendString(str)_
_name: sendString_
_returns: void_
_returns_description: _
_parameters: string str_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Send a string to the Arduino
\note Firmata can not handle strings longer than 12 characters.





_description: _

firmata can not handle strings longer than 12 characters.





<!----------------------------------------------------------------------------->

###void sendSysEx(command, data)

<!--
_syntax: sendSysEx(command, data)_
_name: sendSysEx_
_returns: void_
_returns_description: _
_parameters: int command, int data_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void sendSysExBegin()

<!--
_syntax: sendSysExBegin()_
_name: sendSysExBegin_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Sends the `FIRMATA_START_SYSEX` command





_description: _







<!----------------------------------------------------------------------------->

###void sendSysExEnd()

<!--
_syntax: sendSysExEnd()_
_name: sendSysExEnd_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Sends the `FIRMATA_END_SYSEX` command





_description: _







<!----------------------------------------------------------------------------->

###void sendValueAsTwo7bitBytes(value)

<!--
_syntax: sendValueAsTwo7bitBytes(value)_
_name: sendValueAsTwo7bitBytes_
_returns: void_
_returns_description: _
_parameters: int value_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Send value as two 7 bit bytes.

Sends a value as two 7-bit bytes without wrapping it in a firmata
message.  Values in the range 0 - 16384 will be sent as two bytes
within the 0-127 data range.


Parameters:
value The value to send.





_description: _







<!----------------------------------------------------------------------------->

###void serialClose(portID)

<!--
_syntax: serialClose(portID)_
_name: serialClose_
_returns: void_
_returns_description: _
_parameters: Firmata_Serial_Ports portID_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Close the specified serial port.


Parameters:
portId The serial port to close.





_description: _







<!----------------------------------------------------------------------------->

###void serialFlush(portID)

<!--
_syntax: serialFlush(portID)_
_name: serialFlush_
_returns: void_
_returns_description: _
_parameters: Firmata_Serial_Ports portID_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Flush the specified serial port.

For hardware serial, this waits for the transmission of outgoing serial data to complete.For software serial, this removed any buffered incoming serial data.

Parameters:
portId The serial port to listen on.





_description: _







<!----------------------------------------------------------------------------->

###void serialListen(portID)

<!--
_syntax: serialListen(portID)_
_name: serialListen_
_returns: void_
_returns_description: _
_parameters: Firmata_Serial_Ports portID_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

For SoftwareSerial only. Only a single SoftwareSerial instance can read data at a time.

Call this method to set this port to be the reading port in the case there are multiple SoftwareSerial instances.

Parameters:
portId The serial port to flush.





_description: _







<!----------------------------------------------------------------------------->

###void serialRead(port, maxBytesToRead)

<!--
_syntax: serialRead(port, maxBytesToRead)_
_name: serialRead_
_returns: void_
_returns_description: _
_parameters: Firmata_Serial_Ports port, int maxBytesToRead_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Start continuous reading of the specified serial port.

The port is checked for data each iteration of the main Arduino loop.

Parameters:
portId The serial port to start reading continuously.
 maxBytesToRead [Optional] The maximum number of bytes to read per iteration.
\note If there are less bytes in the buffer, the lesser number of bytes will be returned. A value of 0 indicates that all available bytes in the buffer should be read.





_description: _







<!----------------------------------------------------------------------------->

###void serialStop(portID)

<!--
_syntax: serialStop(portID)_
_name: serialStop_
_returns: void_
_returns_description: _
_parameters: Firmata_Serial_Ports portID_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Stop continuous reading of the specified serial port.

This does not close the port, it stops reading it but keeps the port open.

Parameters:
portId The serial port to stop reading.





_description: _







<!----------------------------------------------------------------------------->

###void serialWrite(port, *bytes, numOfBytes)

<!--
_syntax: serialWrite(port, *bytes, numOfBytes)_
_name: serialWrite_
_returns: void_
_returns_description: _
_parameters: Firmata_Serial_Ports port, unsigned char *bytes, int numOfBytes_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Write an array of bytes to the specified serial port.


Parameters:
portId The serial port to write to.
bytes An array of bytes to write to the serial port.
numOfBytes length of the array of bytes.





_description: _







<!----------------------------------------------------------------------------->

###void setAnalogHistoryLength(length)

<!--
_syntax: setAnalogHistoryLength(length)_
_name: setAnalogHistoryLength_
_returns: void_
_returns_description: _
_parameters: int length_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setDigitalHistoryLength(length)

<!--
_syntax: setDigitalHistoryLength(length)_
_name: setDigitalHistoryLength_
_returns: void_
_returns_description: _
_parameters: int length_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setStringHistoryLength(length)

<!--
_syntax: setStringHistoryLength(length)_
_name: setStringHistoryLength_
_returns: void_
_returns_description: _
_parameters: int length_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setSysExHistoryLength(nSysEx)

<!--
_syntax: setSysExHistoryLength(nSysEx)_
_name: setSysExHistoryLength_
_returns: void_
_returns_description: _
_parameters: int nSysEx_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setUseDelay(bDelay)

<!--
_syntax: setUseDelay(bDelay)_
_name: setUseDelay_
_returns: void_
_returns_description: _
_parameters: bool bDelay_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void update()

<!--
_syntax: update()_
_name: update_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Polls data from the serial port, this has to be called periodically





_description: _

polls data from the serial port, this has to be called periodically





<!----------------------------------------------------------------------------->

### ~ofArduino()

<!--
_syntax: ~ofArduino()_
_name: ~ofArduino_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

##Variables



###ofEvent< const int > EAnalogPinChanged

<!--
_name: EAnalogPinChanged_
_type: ofEvent< const int >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: True_
-->

_inlined_description: _

Triggered when an analog pin changes value, the pin that
changed is passed as an argument.





_description: _

triggered when an analog pin changes value, the pin that changed is passed as an argument





<!----------------------------------------------------------------------------->

###ofEvent< const int > EDigitalPinChanged

<!--
_name: EDigitalPinChanged_
_type: ofEvent< const int >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: True_
-->

_inlined_description: _

Triggered when a digital pin changes value, the pin that
changed is passed as an argument.





_description: _

triggered when a digital pin changes value, the pin that changed is passed as an argument





<!----------------------------------------------------------------------------->

###int EEncoderDataReceived

<!--
_name: EEncoderDataReceived_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

triggered when the encoder returns data after a read request





_description: _







<!----------------------------------------------------------------------------->

###ofEvent< const int > EFirmwareVersionReceived

<!--
_name: EFirmwareVersionReceived_
_type: ofEvent< const int >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: True_
-->

_inlined_description: _

Triggered when a firmware version is received, the major version
is passed as an argument.





_description: _

triggered when a firmware version is received, the major version is passed as an argument





<!----------------------------------------------------------------------------->

###int EI2CDataRecieved

<!--
_name: EI2CDataRecieved_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

triggered when the I2C bus returns data after a read request





_description: _







<!----------------------------------------------------------------------------->

###ofEvent< const int > EInitialized

<!--
_name: EInitialized_
_type: ofEvent< const int >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: True_
-->

_inlined_description: _

Triggered when the firmware version is received upon connect,
the major firmware version is passed as an argument. From this point
it's safe to send to the Arduino.





_description: _

triggered when the firmware version is received upon connect, the major firmware version is passed as an argument
from this point it's safe to send to the Arduino.





<!----------------------------------------------------------------------------->

###int EPinStateResponseReceived

<!--
_name: EPinStateResponseReceived_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int ESerialDataReceived

<!--
_name: ESerialDataReceived_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

triggered when a Serial message is received. Returns which
port and its data





_description: _







<!----------------------------------------------------------------------------->

###int EStepperDataReceived

<!--
_name: EStepperDataReceived_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

triggered when a stepper has finished rotating. Returns which
stepper has complted its rotation





_description: _







<!----------------------------------------------------------------------------->

###ofEvent< const string > EStringReceived

<!--
_name: EStringReceived_
_type: ofEvent< const string >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: True_
-->

_inlined_description: _

Triggered when a string is received, the string is passed as an
argument





_description: _

triggered when a string is received, the string is passed as an argument





<!----------------------------------------------------------------------------->

###ofEvent< const vector< unsigned char > > ESysExReceived

<!--
_name: ESysExReceived_
_type: ofEvent< const vector< unsigned char > >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: True_
-->

_inlined_description: _

Triggered when a SysEx message that isn't in the extended
command set is received, the SysEx message is passed as an argument





_description: _

triggered when a SysEx message that isn't in the extended command set is received, the SysEx message is passed as an argument





<!----------------------------------------------------------------------------->

###list< int > _analogHistory

<!--
_name: _analogHistory_
_type: list< int >_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _analogHistoryLength

<!--
_name: _analogHistoryLength_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _analogPinReporting

<!--
_name: _analogPinReporting_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###list< int > _digitalHistory

<!--
_name: _digitalHistory_
_type: list< int >_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _digitalHistoryLength

<!--
_name: _digitalHistoryLength_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _digitalPinMode

<!--
_name: _digitalPinMode_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _digitalPinReporting

<!--
_name: _digitalPinReporting_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _digitalPinValue

<!--
_name: _digitalPinValue_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _digitalPortReporting

<!--
_name: _digitalPortReporting_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _digitalPortValue

<!--
_name: _digitalPortValue_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _encoderID

<!--
_name: _encoderID_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _executeMultiByteCommand

<!--
_name: _executeMultiByteCommand_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< Indicate Firmata command to execute.





_description: _







<!----------------------------------------------------------------------------->

###string _firmwareName

<!--
_name: _firmwareName_
_type: string_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _firstAnalogPin

<!--
_name: _firstAnalogPin_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool _i2cConfigured

<!--
_name: _i2cConfigured_
_type: bool_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool _initialized

<!--
_name: _initialized_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _majorFirmwareVersion

<!--
_name: _majorFirmwareVersion_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _minorFirmwareVersion

<!--
_name: _minorFirmwareVersion_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _multiByteChannel

<!--
_name: _multiByteChannel_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< Indicates which pin the data came from.





_description: _







<!----------------------------------------------------------------------------->

###int _numEncoders

<!--
_name: _numEncoders_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _numSteppers

<!--
_name: _numSteppers_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofSerial _port

<!--
_name: _port_
_type: ofSerial_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _portStatus

<!--
_name: _portStatus_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _servoValue

<!--
_name: _servoValue_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###unsigned char _storedInputData

<!--
_name: _storedInputData_
_type: unsigned char_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###list< string > _stringHistory

<!--
_name: _stringHistory_
_type: list< string >_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _stringHistoryLength

<!--
_name: _stringHistoryLength_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###vector< unsigned char > _sysExData

<!--
_name: _sysExData_
_type: vector< unsigned char >_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###list< vector< unsigned char > > _sysExHistory

<!--
_name: _sysExHistory_
_type: list< vector< unsigned char > >_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _sysExHistoryLength

<!--
_name: _sysExHistoryLength_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _totalAnalogPins

<!--
_name: _totalAnalogPins_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

\< Indicate the total number of digital pins of the board in use.





_description: _







<!----------------------------------------------------------------------------->

###int _totalDigitalPins

<!--
_name: _totalDigitalPins_
_type: int_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int _waitForData

<!--
_name: _waitForData_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int analogPinMap

<!--
_name: analogPinMap_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bUseDelay

<!--
_name: bUseDelay_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###float connectTime

<!--
_name: connectTime_
_type: float_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< This represents the (running) time of establishing a serial connection.





_description: _







<!----------------------------------------------------------------------------->

###bool connected

<!--
_name: connected_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< This yields true if a serial connection to Arduino exists.





_description: _







<!----------------------------------------------------------------------------->

###bool firmataAnalogSupported

<!--
_name: firmataAnalogSupported_
_type: bool_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool firmataEncoderSupported

<!--
_name: firmataEncoderSupported_
_type: bool_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool firmataI2cSupported

<!--
_name: firmataI2cSupported_
_type: bool_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool firmataInputSupported

<!--
_name: firmataInputSupported_
_type: bool_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool firmataOnewireSupported

<!--
_name: firmataOnewireSupported_
_type: bool_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool firmataOutputSupported

<!--
_name: firmataOutputSupported_
_type: bool_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool firmataPwmSupported

<!--
_name: firmataPwmSupported_
_type: bool_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool firmataSerialSupported

<!--
_name: firmataSerialSupported_
_type: bool_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool firmataServoSupported

<!--
_name: firmataServoSupported_
_type: bool_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool firmataStepperSupported

<!--
_name: firmataStepperSupported_
_type: bool_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int pinCapabilities

<!--
_name: pinCapabilities_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

