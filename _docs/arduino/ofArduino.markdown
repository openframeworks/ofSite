#class ofArduino

Example



Reference



Methods



//----------------------

##void sendByte(unsigned char byte)

_syntax: sendByte(unsigned char byte)_

_name: sendByte_

_returns: void_

_parameters: unsigned char_



_description: _















//----------------------

##void sendValueAsTwo7bitBytes(int value)

_syntax: sendValueAsTwo7bitBytes(int value)_

_name: sendValueAsTwo7bitBytes_

_returns: void_

_parameters: int_



_description: _















//----------------------

##int getPwm(int pin)

_syntax: getPwm(int pin)_

_name: getPwm_

_returns: int_

_parameters: int_



_description: _















//----------------------

##int getDigital(int pin)

_syntax: getDigital(int pin)_

_name: getDigital_

_returns: int_

_parameters: int_



_description: _















//----------------------

##int getAnalog(int pin)

_syntax: getAnalog(int pin)_

_name: getAnalog_

_returns: int_

_parameters: int_



_description: _















//----------------------

##list< int > * getDigitalHistory(int pin)

_syntax: getDigitalHistory(int pin)_

_name: getDigitalHistory_

_returns: list< int > *_

_parameters: int_



_description: _















//----------------------

##list< int > * getAnalogHistory(int pin)

_syntax: getAnalogHistory(int pin)_

_name: getAnalogHistory_

_returns: list< int > *_

_parameters: int_



_description: _















//----------------------

##int getDigitalPinMode(int pin)

_syntax: getDigitalPinMode(int pin)_

_name: getDigitalPinMode_

_returns: int_

_parameters: int_



_description: _















//----------------------

##int getAnalogPinReporting(int pin)

_syntax: getAnalogPinReporting(int pin)_

_name: getAnalogPinReporting_

_returns: int_

_parameters: int_



_description: _















//----------------------

##int getValueFromTwo7bitBytes(unsigned char lsb, unsigned char msb)

_syntax: getValueFromTwo7bitBytes(unsigned char lsb, unsigned char msb)_

_name: getValueFromTwo7bitBytes_

_returns: int_

_parameters: unsigned char, unsigned char_



_description: _















//----------------------

##void sendServo(int pin, int value, bool force=false)

_syntax: sendServo(int pin, int value, bool force=false)_

_name: sendServo_

_returns: void_

_parameters: int, int, bool = False_



_description: _















//----------------------

##void sendServoAttach(int pin, int minPulse=544, int maxPulse=2400, int angle=180)

_syntax: sendServoAttach(int pin, int minPulse=544, int maxPulse=2400, int angle=180)_

_name: sendServoAttach_

_returns: void_

_parameters: int, int = 544, int = 2400, int = 180_



_description: _















//----------------------

##void sendServoDetach(int pin)

_syntax: sendServoDetach(int pin)_

_name: sendServoDetach_

_returns: void_

_parameters: int_



_description: _















//----------------------

##int getServo(int pin)

_syntax: getServo(int pin)_

_name: getServo_

_returns: int_

_parameters: int_



_description: _















//----------------------

##void sendDigitalPinReporting(int pin, int mode)

_syntax: sendDigitalPinReporting(int pin, int mode)_

_name: sendDigitalPinReporting_

_returns: void_

_parameters: int, int_



_description: _















//----------------------

##void sendDigitalPortReporting(int port, int mode)

_syntax: sendDigitalPortReporting(int port, int mode)_

_name: sendDigitalPortReporting_

_returns: void_

_parameters: int, int_



_description: _















//----------------------

##void processData(unsigned char inputData)

_syntax: processData(unsigned char inputData)_

_name: processData_

_returns: void_

_parameters: unsigned char_



_description: _















//----------------------

##void processDigitalPort(int port, unsigned char value)

_syntax: processDigitalPort(int port, unsigned char value)_

_name: processDigitalPort_

_returns: void_

_parameters: int, unsigned char_



_description: _















//----------------------

##void processSysExData(vector< unsigned char > data)

_syntax: processSysExData(vector< unsigned char > data)_

_name: processSysExData_

_returns: void_

_parameters: vector< unsigned char >_



_description: _















//----------------------

##void sendDigitalPinReporting(pin, mode)

_syntax: sendDigitalPinReporting(pin, mode)_

_name: sendDigitalPinReporting_

_returns: void_

_parameters: int pin, int mode_



_description: _













//----------------------

##void processSysExData(data)

_syntax: processSysExData(data)_

_name: processSysExData_

_returns: void_

_parameters: vector< unsigned char > data_



_description: _













//----------------------

##bool connect(string device, int baud=57600)

_syntax: connect(string device, int baud=57600)_

_name: connect_

_returns: bool_

_parameters: string, int = 57600_



_description: _















//----------------------

##void setUseDelay(bool bDelay)

_syntax: setUseDelay(bool bDelay)_

_name: setUseDelay_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##void setDigitalHistoryLength(int length)

_syntax: setDigitalHistoryLength(int length)_

_name: setDigitalHistoryLength_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void setAnalogHistoryLength(int length)

_syntax: setAnalogHistoryLength(int length)_

_name: setAnalogHistoryLength_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void setStringHistoryLength(int length)

_syntax: setStringHistoryLength(int length)_

_name: setStringHistoryLength_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void setSysExHistoryLength(int nSysEx)

_syntax: setSysExHistoryLength(int nSysEx)_

_name: setSysExHistoryLength_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void sendDigitalPinMode(int pin, int mode)

_syntax: sendDigitalPinMode(int pin, int mode)_

_name: sendDigitalPinMode_

_returns: void_

_parameters: int, int_



_description: _















//----------------------

##void sendAnalogPinReporting(int pin, int mode)

_syntax: sendAnalogPinReporting(int pin, int mode)_

_name: sendAnalogPinReporting_

_returns: void_

_parameters: int, int_



_description: _















//----------------------

##void sendDigital(int pin, int value, bool force=false)

_syntax: sendDigital(int pin, int value, bool force=false)_

_name: sendDigital_

_returns: void_

_parameters: int, int, bool = False_



_description: _















//----------------------

##void sendPwm(int pin, int value, bool force=false)

_syntax: sendPwm(int pin, int value, bool force=false)_

_name: sendPwm_

_returns: void_

_parameters: int, int, bool = False_



_description: _















//----------------------

##void sendSysEx(int command, vector< unsigned char > data)

_syntax: sendSysEx(int command, vector< unsigned char > data)_

_name: sendSysEx_

_returns: void_

_parameters: int, vector< unsigned char >_



_description: _















//----------------------

##void sendString(string str)

_syntax: sendString(string str)_

_name: sendString_

_returns: void_

_parameters: string_



_description: _















//----------------------

##void sendDigitalPortReporting(port, mode)

_syntax: sendDigitalPortReporting(port, mode)_

_name: sendDigitalPortReporting_

_returns: void_

_parameters: int port, int mode_



_description: _













//----------------------

##void connect(device, baud)

_syntax: connect(device, baud)_

_name: connect_

_returns: void_

_parameters: string device, int baud_



_description: _













//----------------------

##void processData(inputData)

_syntax: processData(inputData)_

_name: processData_

_returns: void_

_parameters: unsigned char inputData_



_description: _













//----------------------

##void connect(device, baud)

_syntax: connect(device, baud)_

_name: connect_

_returns: void_

_parameters: string device, int baud_



_description: _













//----------------------

##void disconnect()

_syntax: disconnect()_

_name: disconnect_

_returns: void_

_parameters: _



_description: _

None

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void processDigitalPort(port, value)

_syntax: processDigitalPort(port, value)_

_name: processDigitalPort_

_returns: void_

_parameters: int port, unsigned char value_



_description: _













//----------------------

##bool isArduinoReady()

_syntax: isArduinoReady()_

_name: isArduinoReady_

_returns: bool_

_parameters: _



_description: _

None

<br/><br/>return type changed from  to bool in 0.07













//----------------------

##void update()

_syntax: update()_

_name: update_

_returns: void_

_parameters: _



_description: _

None

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void processSysExData(data)

_syntax: processSysExData(data)_

_name: processSysExData_

_returns: void_

_parameters: vector< unsigned char > data_



_description: _













//----------------------

##void setUseDelay(bDelay)

_syntax: setUseDelay(bDelay)_

_name: setUseDelay_

_returns: void_

_parameters: bool bDelay_



_description: _













//----------------------

##bool isInitialized()

_syntax: isInitialized()_

_name: isInitialized_

_returns: bool_

_parameters: _



_description: _

None

<br/><br/>return type changed from  to bool in 0.07













//----------------------

##void sendDigitalPinMode(pin, mode)

_syntax: sendDigitalPinMode(pin, mode)_

_name: sendDigitalPinMode_

_returns: void_

_parameters: int pin, int mode_



_description: _













//----------------------

##void sendAnalogPinReporting(pin, mode)

_syntax: sendAnalogPinReporting(pin, mode)_

_name: sendAnalogPinReporting_

_returns: void_

_parameters: int pin, int mode_



_description: _













//----------------------

##void sendDigital(pin, value, force)

_syntax: sendDigital(pin, value, force)_

_name: sendDigital_

_returns: void_

_parameters: int pin, int value, bool force_



_description: _













//----------------------

##void sendPwm(pin, value, force)

_syntax: sendPwm(pin, value, force)_

_name: sendPwm_

_returns: void_

_parameters: int pin, int value, bool force_



_description: _













//----------------------

##void sendString(str)

_syntax: sendString(str)_

_name: sendString_

_returns: void_

_parameters: string str_



_description: _













//----------------------

##void sendReset()

_syntax: sendReset()_

_name: sendReset_

_returns: void_

_parameters: _



_description: _

None

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void sendByte(byte)

_syntax: sendByte(byte)_

_name: sendByte_

_returns: void_

_parameters: unsigned char byte_



_description: _













//----------------------

##void getPwm(pin)

_syntax: getPwm(pin)_

_name: getPwm_

_returns: void_

_parameters: int pin_



_description: _













//----------------------

##void getDigital(pin)

_syntax: getDigital(pin)_

_name: getDigital_

_returns: void_

_parameters: int pin_



_description: _













//----------------------

##void getAnalog(pin)

_syntax: getAnalog(pin)_

_name: getAnalog_

_returns: void_

_parameters: int pin_



_description: _













//----------------------

##string getString()

_syntax: getString()_

_name: getString_

_returns: string_

_parameters: _



_description: _

None

<br/><br/>return type changed from  to string in 0.07













//----------------------

##void getDigitalPinMode(pin)

_syntax: getDigitalPinMode(pin)_

_name: getDigitalPinMode_

_returns: void_

_parameters: int pin_



_description: _













//----------------------

##void getAnalogPinReporting(pin)

_syntax: getAnalogPinReporting(pin)_

_name: getAnalogPinReporting_

_returns: void_

_parameters: int pin_



_description: _













