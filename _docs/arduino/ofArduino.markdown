#class ofArduino

Example



Reference



Methods



//----------------------

##void ofStandardFirmata()

_syntax: ofStandardFirmata()_

_name: ofStandardFirmata_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void sendDigitalPinReporting(pin, mode)

_syntax: sendDigitalPinReporting(pin, mode)_

_name: sendDigitalPinReporting_

_returns: void_

_returns_description: _

_parameters: int pin, int mode_



_description: _

















//----------------------

##void ofArduino()

_syntax: ofArduino()_

_name: ofArduino_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void processSysExData(data)

_syntax: processSysExData(data)_

_name: processSysExData_

_returns: void_

_returns_description: _

_parameters: vector< unsigned char > data_



_description: _

















//----------------------

##void ~ofStandardFirmata()

_syntax: ~ofStandardFirmata()_

_name: ~ofStandardFirmata_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void sendDigitalPortReporting(port, mode)

_syntax: sendDigitalPortReporting(port, mode)_

_name: sendDigitalPortReporting_

_returns: void_

_returns_description: _

_parameters: int port, int mode_



_description: _

















//----------------------

##void ~ofArduino()

_syntax: ~ofArduino()_

_name: ~ofArduino_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##int connect(device, baud)

_syntax: connect(device, baud)_

_name: connect_

_returns: int_

_returns_description: _

_parameters: string device, int baud_



_description: _

















//----------------------

##void processData(inputData)

_syntax: processData(inputData)_

_name: processData_

_returns: void_

_returns_description: _

_parameters: unsigned char inputData_



_description: _

















//----------------------

##int connect(device, baud)

_syntax: connect(device, baud)_

_name: connect_

_returns: int_

_returns_description: _

_parameters: string device, int baud_



_description: _

















//----------------------

##void disconnect()

_syntax: disconnect()_

_name: disconnect_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void processDigitalPort(port, value)

_syntax: processDigitalPort(port, value)_

_name: processDigitalPort_

_returns: void_

_returns_description: _

_parameters: int port, unsigned char value_



_description: _

















//----------------------

##bool isArduinoReady()

_syntax: isArduinoReady()_

_name: isArduinoReady_

_returns: bool_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void update()

_syntax: update()_

_name: update_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void processSysExData(data)

_syntax: processSysExData(data)_

_name: processSysExData_

_returns: void_

_returns_description: _

_parameters: vector< unsigned char > data_



_description: _

















//----------------------

##void setUseDelay(bDelay)

_syntax: setUseDelay(bDelay)_

_name: setUseDelay_

_returns: void_

_returns_description: _

_parameters: bool bDelay_



_description: _

















//----------------------

##bool isInitialized()

_syntax: isInitialized()_

_name: isInitialized_

_returns: bool_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void sendDigitalPinMode(pin, mode)

_syntax: sendDigitalPinMode(pin, mode)_

_name: sendDigitalPinMode_

_returns: void_

_returns_description: _

_parameters: int pin, int mode_



_description: _

















//----------------------

##void sendAnalogPinReporting(pin, mode)

_syntax: sendAnalogPinReporting(pin, mode)_

_name: sendAnalogPinReporting_

_returns: void_

_returns_description: _

_parameters: int pin, int mode_



_description: _

















//----------------------

##void sendDigital(pin, value, force)

_syntax: sendDigital(pin, value, force)_

_name: sendDigital_

_returns: void_

_returns_description: _

_parameters: int pin, int value, bool force_



_description: _

















//----------------------

##void sendPwm(pin, value, force)

_syntax: sendPwm(pin, value, force)_

_name: sendPwm_

_returns: void_

_returns_description: _

_parameters: int pin, int value, bool force_



_description: _

















//----------------------

##void sendString(str)

_syntax: sendString(str)_

_name: sendString_

_returns: void_

_returns_description: _

_parameters: string str_



_description: _

















//----------------------

##void sendReset()

_syntax: sendReset()_

_name: sendReset_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void sendByte(byte)

_syntax: sendByte(byte)_

_name: sendByte_

_returns: void_

_returns_description: _

_parameters: unsigned char byte_



_description: _

















//----------------------

##int getPwm(pin)

_syntax: getPwm(pin)_

_name: getPwm_

_returns: int_

_returns_description: _

_parameters: int pin_



_description: _

















//----------------------

##int getDigital(pin)

_syntax: getDigital(pin)_

_name: getDigital_

_returns: int_

_returns_description: _

_parameters: int pin_



_description: _

















//----------------------

##int getAnalog(pin)

_syntax: getAnalog(pin)_

_name: getAnalog_

_returns: int_

_returns_description: _

_parameters: int pin_



_description: _

















//----------------------

##string getString()

_syntax: getString()_

_name: getString_

_returns: string_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##int getDigitalPinMode(pin)

_syntax: getDigitalPinMode(pin)_

_name: getDigitalPinMode_

_returns: int_

_returns_description: _

_parameters: int pin_



_description: _

















//----------------------

##int getAnalogPinReporting(pin)

_syntax: getAnalogPinReporting(pin)_

_name: getAnalogPinReporting_

_returns: int_

_returns_description: _

_parameters: int pin_



_description: _

















//----------------------

##void sendServo(pin, value, force)

_syntax: sendServo(pin, value, force)_

_name: sendServo_

_returns: void_

_returns_description: _

_parameters: int pin, int value, bool force_



_description: _

















//----------------------

##void setDigitalHistoryLength(length)

_syntax: setDigitalHistoryLength(length)_

_name: setDigitalHistoryLength_

_returns: void_

_returns_description: _

_parameters: int length_



_description: _

















//----------------------

##void sendServoAttach(pin, minPulse, maxPulse, angle)

_syntax: sendServoAttach(pin, minPulse, maxPulse, angle)_

_name: sendServoAttach_

_returns: void_

_returns_description: _

_parameters: int pin, int minPulse, int maxPulse, int angle_



_description: _

















//----------------------

##void setAnalogHistoryLength(length)

_syntax: setAnalogHistoryLength(length)_

_name: setAnalogHistoryLength_

_returns: void_

_returns_description: _

_parameters: int length_



_description: _

















//----------------------

##void sendServoDetach(pin)

_syntax: sendServoDetach(pin)_

_name: sendServoDetach_

_returns: void_

_returns_description: _

_parameters: int pin_



_description: _

















//----------------------

##void setStringHistoryLength(length)

_syntax: setStringHistoryLength(length)_

_name: setStringHistoryLength_

_returns: void_

_returns_description: _

_parameters: int length_



_description: _

















//----------------------

##int getServo(pin)

_syntax: getServo(pin)_

_name: getServo_

_returns: int_

_returns_description: _

_parameters: int pin_



_description: _

















//----------------------

##void setSysExHistoryLength(nSysEx)

_syntax: setSysExHistoryLength(nSysEx)_

_name: setSysExHistoryLength_

_returns: void_

_returns_description: _

_parameters: int nSysEx_



_description: _

















//----------------------

##void sendSysEx(command, data)

_syntax: sendSysEx(command, data)_

_name: sendSysEx_

_returns: void_

_returns_description: _

_parameters: int command, vector< unsigned char > data_



_description: _

















//----------------------

##void sendProtocolVersionRequest()

_syntax: sendProtocolVersionRequest()_

_name: sendProtocolVersionRequest_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void sendFirmwareVersionRequest()

_syntax: sendFirmwareVersionRequest()_

_name: sendFirmwareVersionRequest_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void sendSysExBegin()

_syntax: sendSysExBegin()_

_name: sendSysExBegin_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void sendSysExEnd()

_syntax: sendSysExEnd()_

_name: sendSysExEnd_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void sendValueAsTwo7bitBytes(value)

_syntax: sendValueAsTwo7bitBytes(value)_

_name: sendValueAsTwo7bitBytes_

_returns: void_

_returns_description: _

_parameters: int value_



_description: _

















//----------------------

##vector< unsigned char > getSysEx()

_syntax: getSysEx()_

_name: getSysEx_

_returns: vector< unsigned char >_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##int getMajorProtocolVersion()

_syntax: getMajorProtocolVersion()_

_name: getMajorProtocolVersion_

_returns: int_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##int getMinorProtocolVersion()

_syntax: getMinorProtocolVersion()_

_name: getMinorProtocolVersion_

_returns: int_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##int getMajorFirmwareVersion()

_syntax: getMajorFirmwareVersion()_

_name: getMajorFirmwareVersion_

_returns: int_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##int getMinorFirmwareVersion()

_syntax: getMinorFirmwareVersion()_

_name: getMinorFirmwareVersion_

_returns: int_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##string getFirmwareName()

_syntax: getFirmwareName()_

_name: getFirmwareName_

_returns: string_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##list< int > * getDigitalHistory(pin)

_syntax: getDigitalHistory(pin)_

_name: getDigitalHistory_

_returns: list< int > *_

_returns_description: _

_parameters: int pin_



_description: _

















//----------------------

##list< int > * getAnalogHistory(pin)

_syntax: getAnalogHistory(pin)_

_name: getAnalogHistory_

_returns: list< int > *_

_returns_description: _

_parameters: int pin_



_description: _

















//----------------------

##list< vector< unsigned char > > * getSysExHistory()

_syntax: getSysExHistory()_

_name: getSysExHistory_

_returns: list< vector< unsigned char > > *_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##list< string > * getStringHistory()

_syntax: getStringHistory()_

_name: getStringHistory_

_returns: list< string > *_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##int getValueFromTwo7bitBytes(lsb, msb)

_syntax: getValueFromTwo7bitBytes(lsb, msb)_

_name: getValueFromTwo7bitBytes_

_returns: int_

_returns_description: _

_parameters: unsigned char lsb, unsigned char msb_



_description: _

















