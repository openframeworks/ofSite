<%inherit file="_templates/docs.mako" />
___ofSerial___
$$code(lang=c++)
bool bVerbose
$$/code



$$code(lang=c++)
string deviceType
$$/code



$$code(lang=c++)
vector<  devices
$$/code



$$code(lang=c++)
bool bHaveEnumeratedDevices
$$/code



$$code(lang=c++)
bool bInited
$$/code



$$code(lang=c++)
int fd
$$/code



$$code(lang=c++)
struct termios oldoptions
$$/code



$$code(lang=c++)
None ofSerial()
$$/code



$$code(lang=c++)
None ~ofSerial()
$$/code



$$code(lang=c++)
void listDevices()
$$/code



$$code(lang=c++)
void enumerateDevices()
$$/code



$$code(lang=c++)
vector<  getDeviceList()
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
bool setup()
$$/code



$$code(lang=c++)
bool setup(string portName, int baudrate)
$$/code



$$code(lang=c++)
bool setup(int deviceNumber, int baudrate)
$$/code



$$code(lang=c++)
int readBytes(unsigned char *buffer, int length)
$$/code



$$code(lang=c++)
int writeBytes(unsigned char *buffer, int length)
$$/code



$$code(lang=c++)
bool writeByte(unsigned char singleByte)
$$/code



$$code(lang=c++)
int readByte()
$$/code



$$code(lang=c++)
void flush(bool flushIn=true, bool flushOut=true)
$$/code



$$code(lang=c++)
int available()
$$/code



$$code(lang=c++)
void drain()
$$/code



$$code(lang=c++)
void setVerbose(bool bLoudmouth)
$$/code



$$code(lang=c++)
void buildDeviceList()
$$/code



