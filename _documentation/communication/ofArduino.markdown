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

###list< int > * getAnalogHistory(pin)

<!--
_syntax: getAnalogHistory(pin)_
_name: getAnalogHistory_
_returns: list< int > *_
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

###list< int > * getDigitalHistory(pin)

<!--
_syntax: getDigitalHistory(pin)_
_name: getDigitalHistory_
_returns: list< int > *_
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

###int getMajorProtocolVersion()

<!--
_syntax: getMajorProtocolVersion()_
_name: getMajorProtocolVersion_
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

Returns the major firmware version





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

###int getMinorProtocolVersion()

<!--
_syntax: getMinorProtocolVersion()_
_name: getMinorProtocolVersion_
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

###list< string > * getStringHistory()

<!--
_syntax: getStringHistory()_
_name: getStringHistory_
_returns: list< string > *_
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

###vector< unsigned char > getSysEx()

<!--
_syntax: getSysEx()_
_name: getSysEx_
_returns: vector< unsigned char >_
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

###list<vector< unsigned char>  > * getSysExHistory()

<!--
_syntax: getSysExHistory()_
_name: getSysExHistory_
_returns: list<vector< unsigned char>  > *_
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
_access: protected_
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
_access: protected_
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
_access: protected_
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
_parameters: vector< unsigned char > data_
_access: protected_
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
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\< Indicate the total number of digital pins of the board in use.





_description: _







<!----------------------------------------------------------------------------->

###void sendDigitalPortReporting(port, mode)

<!--
_syntax: sendDigitalPortReporting(port, mode)_
_name: sendDigitalPortReporting_
_returns: void_
_returns_description: _
_parameters: int port, int mode_
_access: protected_
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

###void sendServoAttach(pin, minPulse = 544, maxPulse = 2400, angle = 180)

<!--
_syntax: sendServoAttach(pin, minPulse = 544, maxPulse = 2400, angle = 180)_
_name: sendServoAttach_
_returns: void_
_returns_description: _
_parameters: int pin, int minPulse=544, int maxPulse=2400, int angle=180_
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

###void sendServoDetach(pin)

<!--
_syntax: sendServoDetach(pin)_
_name: sendServoDetach_
_returns: void_
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

Detaches a servo on a pin
\note sendServoDetach DEPRECATED as of Firmata 2.2





_description: _

On the Arduino Uno pin: 9, 10 detaches a servo from a pin, the pin mode remains as OUTPUT
sendServoDetach DEPRECATED as of Firmata 2.2





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
_parameters: int command, vector< unsigned char > data_
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

###ofEvent< const int > EProtocolVersionReceived

<!--
_name: EProtocolVersionReceived_
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

Triggered when a protocol version is received, the major version
is passed as an argument.





_description: _

triggered when a protocol version is received, the major version is passed as an argument





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

###int _firmwareVersionSum

<!--
_name: _firmwareVersionSum_
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

\}





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

###int _majorProtocolVersion

<!--
_name: _majorProtocolVersion_
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

###int _minorProtocolVersion

<!--
_name: _minorProtocolVersion_
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

