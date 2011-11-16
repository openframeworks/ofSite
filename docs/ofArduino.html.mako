<%inherit file="_templates/docs.mako" />
___ofArduino___
$$code(lang=c++)
ofEvent< const int > EDigitalPinChanged
$$/code



$$code(lang=c++)
ofEvent< const int > EAnalogPinChanged
$$/code



$$code(lang=c++)
ofEvent< const vector< unsigned char > > ESysExReceived
$$/code



$$code(lang=c++)
ofEvent< const int > EProtocolVersionReceived
$$/code



$$code(lang=c++)
ofEvent< const int > EFirmwareVersionReceived
$$/code



$$code(lang=c++)
ofEvent< const int > EInitialized
$$/code



$$code(lang=c++)
ofEvent< const string > EStringReceived
$$/code



$$code(lang=c++)
bool _initialized
$$/code



$$code(lang=c++)
int _totalDigitalPins
$$/code



$$code(lang=c++)
None _port
$$/code



$$code(lang=c++)
int _portStatus
$$/code



$$code(lang=c++)
int _analogHistoryLength
$$/code



$$code(lang=c++)
int _digitalHistoryLength
$$/code



$$code(lang=c++)
int _stringHistoryLength
$$/code



$$code(lang=c++)
int _sysExHistoryLength
$$/code



$$code(lang=c++)
int _waitForData
$$/code



$$code(lang=c++)
int _executeMultiByteCommand
$$/code



$$code(lang=c++)
int _multiByteChannel
$$/code



$$code(lang=c++)
unsigned char _storedInputData
$$/code



$$code(lang=c++)
vector< unsigned char > _sysExData
$$/code



$$code(lang=c++)
int _majorProtocolVersion
$$/code



$$code(lang=c++)
int _minorProtocolVersion
$$/code



$$code(lang=c++)
int _majorFirmwareVersion
$$/code



$$code(lang=c++)
int _minorFirmwareVersion
$$/code



$$code(lang=c++)
string _firmwareName
$$/code



$$code(lang=c++)
int _firmwareVersionSum
$$/code



$$code(lang=c++)
list< vector< unsigned char > > _sysExHistory
$$/code



$$code(lang=c++)
list< string > _stringHistory
$$/code



$$code(lang=c++)
list< int > _analogHistory
$$/code



$$code(lang=c++)
list< int > _digitalHistory
$$/code



$$code(lang=c++)
int _digitalPinMode
$$/code



$$code(lang=c++)
int _digitalPinValue
$$/code



$$code(lang=c++)
int _digitalPortValue
$$/code



$$code(lang=c++)
int _digitalPortReporting
$$/code



$$code(lang=c++)
int _digitalPinReporting
$$/code



$$code(lang=c++)
int _analogPinReporting
$$/code



$$code(lang=c++)
bool bUseDelay
$$/code



$$code(lang=c++)
bool connected
$$/code



$$code(lang=c++)
float connectTime
$$/code



$$code(lang=c++)
int _servoValue
$$/code



$$code(lang=c++)
None ofArduino()
$$/code



$$code(lang=c++)
None ~ofArduino()
$$/code



$$code(lang=c++)
bool connect(string device, int baud=57600)
$$/code



$$code(lang=c++)
void disconnect()
$$/code



$$code(lang=c++)
bool isArduinoReady()
$$/code



$$code(lang=c++)
void setUseDelay(bool bDelay)
$$/code



$$code(lang=c++)
void update()
$$/code



$$code(lang=c++)
bool isInitialized()
$$/code



$$code(lang=c++)
void setDigitalHistoryLength(int length)
$$/code



$$code(lang=c++)
void setAnalogHistoryLength(int length)
$$/code



$$code(lang=c++)
void setStringHistoryLength(int length)
$$/code



$$code(lang=c++)
void setSysExHistoryLength(int nSysEx)
$$/code



$$code(lang=c++)
void sendDigitalPinMode(int pin, int mode)
$$/code



$$code(lang=c++)
void sendAnalogPinReporting(int pin, int mode)
$$/code



$$code(lang=c++)
void sendDigital(int pin, int value, bool force=false)
$$/code



$$code(lang=c++)
void sendPwm(int pin, int value, bool force=false)
$$/code



$$code(lang=c++)
void sendSysEx(int command, vector< unsigned char > data)
$$/code



$$code(lang=c++)
void sendString(string str)
$$/code



$$code(lang=c++)
void sendProtocolVersionRequest()
$$/code



$$code(lang=c++)
void sendFirmwareVersionRequest()
$$/code



$$code(lang=c++)
void sendReset()
$$/code



$$code(lang=c++)
void sendSysExBegin()
$$/code



$$code(lang=c++)
void sendSysExEnd()
$$/code



$$code(lang=c++)
void sendByte(unsigned char byte)
$$/code



$$code(lang=c++)
void sendValueAsTwo7bitBytes(int value)
$$/code



$$code(lang=c++)
int getPwm(int pin)
$$/code



$$code(lang=c++)
int getDigital(int pin)
$$/code



$$code(lang=c++)
int getAnalog(int pin)
$$/code



$$code(lang=c++)
vector< unsigned char > getSysEx()
$$/code



$$code(lang=c++)
string getString()
$$/code



$$code(lang=c++)
int getMajorProtocolVersion()
$$/code



$$code(lang=c++)
int getMinorProtocolVersion()
$$/code



$$code(lang=c++)
int getMajorFirmwareVersion()
$$/code



$$code(lang=c++)
int getMinorFirmwareVersion()
$$/code



$$code(lang=c++)
string getFirmwareName()
$$/code



$$code(lang=c++)
list< int > * getDigitalHistory(int pin)
$$/code



$$code(lang=c++)
list< int > * getAnalogHistory(int pin)
$$/code



$$code(lang=c++)
list< vector< unsigned char > > * getSysExHistory()
$$/code



$$code(lang=c++)
list< string > * getStringHistory()
$$/code



$$code(lang=c++)
int getDigitalPinMode(int pin)
$$/code



$$code(lang=c++)
int getAnalogPinReporting(int pin)
$$/code



$$code(lang=c++)
int getValueFromTwo7bitBytes(unsigned char lsb, unsigned char msb)
$$/code



$$code(lang=c++)
void sendServo(int pin, int value, bool force=false)
$$/code



$$code(lang=c++)
void sendServoAttach(int pin, int minPulse=544, int maxPulse=2400, int angle=180)
$$/code



$$code(lang=c++)
void sendServoDetach(int pin)
$$/code



$$code(lang=c++)
int getServo(int pin)
$$/code



$$code(lang=c++)
void initPins()
$$/code



$$code(lang=c++)
void sendDigitalPinReporting(int pin, int mode)
$$/code



$$code(lang=c++)
void sendDigitalPortReporting(int port, int mode)
$$/code



$$code(lang=c++)
void processData(unsigned char inputData)
$$/code



$$code(lang=c++)
void processDigitalPort(int port, unsigned char value)
$$/code



$$code(lang=c++)
void processSysExData(vector< unsigned char > data)
$$/code



