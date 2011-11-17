#class ofSerial

Example



Reference



Methods



//----------------------

##void listDevices()

_syntax: listDevices()_

_name: listDevices_

_returns: void_

_parameters: _



_description: _















//----------------------

##ofSerialDeviceInfo getDeviceList()

_syntax: getDeviceList()_

_name: getDeviceList_

_returns: ofSerialDeviceInfo_

_parameters: _



_description: _















//----------------------

##bool setup(string portName, int baudrate)

_syntax: setup(string portName, int baudrate)_

_name: setup_

_returns: bool_

_parameters: string, int_



_description: _















//----------------------

##bool setup(int deviceNumber, int baudrate)

_syntax: setup(int deviceNumber, int baudrate)_

_name: setup_

_returns: bool_

_parameters: int, int_



_description: _















//----------------------

##int readBytes(unsigned char *buffer, int length)

_syntax: readBytes(unsigned char *buffer, int length)_

_name: readBytes_

_returns: int_

_parameters: unsigned char *, int_



_description: _















//----------------------

##int writeBytes(unsigned char *buffer, int length)

_syntax: writeBytes(unsigned char *buffer, int length)_

_name: writeBytes_

_returns: int_

_parameters: unsigned char *, int_



_description: _















//----------------------

##bool writeByte(unsigned char singleByte)

_syntax: writeByte(unsigned char singleByte)_

_name: writeByte_

_returns: bool_

_parameters: unsigned char_



_description: _















//----------------------

##void flush(bool flushIn=true, bool flushOut=true)

_syntax: flush(bool flushIn=true, bool flushOut=true)_

_name: flush_

_returns: void_

_parameters: bool = True, bool = True_



_description: _















//----------------------

##void setVerbose(bool bLoudmouth)

_syntax: setVerbose(bool bLoudmouth)_

_name: setVerbose_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##void buildDeviceList()

_syntax: buildDeviceList()_

_name: buildDeviceList_

_returns: void_

_parameters: _



_description: _















//----------------------

##void enumerateDevices()

_syntax: enumerateDevices()_

_name: enumerateDevices_

_returns: void_

_parameters: _



_description: _

Prints out the available serial devices:
On mac and linux it might list something like this:

$$code(lang=c++)

device 0 - cu.modem 
device 1 - cu.USA19H181P1.1

$$/code

and on a pc, like:

$$code(lang=c++)

device 0 - COM2 
device 1 - COM4

$$/code


<br/><br/>return type changed from  to void in 0.07













//----------------------

##void close()

_syntax: close()_

_name: close_

_returns: void_

_parameters: _



_description: _

Closes the connection to the serial device. 

<br/><br/>return type changed from  to void in 0.07













//----------------------

##bool setup()

_syntax: setup()_

_name: setup_

_returns: bool_

_parameters: _



_description: _

Attempts to setup the first available device at a baud rate of 9600. 

$$code(lang=c++)

ofSerial mySerial;
if( mySerial.setup() ){
	printf("serial is setup!
");	
}

$$/code


<br/><br/>return type changed from  to bool in 0.07













//----------------------

##void setup(portName,baudrate)

_syntax: setup(portName,baudrate)_

_name: setup_

_returns: void_

_parameters: string portName, int baudrate_



_description: _

Opens the serial port, with the given name and baud rate. On mac and linux, it might look like:

$$code(lang=c++)

ofSerial mySerial;
mySerial.setup("/dev/cu.USA19H181P1.1", 9600);

$$/code

and on a pc, like:

$$code(lang=c++)

ofSerial mySerial;
mySerial.setup("COM4", 9600);

$$/code














//----------------------

##void setup(deviceNumber,baudrate)

_syntax: setup(deviceNumber,baudrate)_

_name: setup_

_returns: void_

_parameters: int deviceNumber, int baudrate_



_description: _

Opens the serial port based on the order in which is listed and sets the baud rate. The code bellow would open the first serial device found by the system:

$$code(lang=c++)

ofSerial mySerial;
mySerial.setup(0, 9600);

$$/code














//----------------------

##void readBytes(buffer,length)

_syntax: readBytes(buffer,length)_

_name: readBytes_

_returns: void_

_parameters: unsigned char * buffer, int length_



_description: _

Tries to read 'length' bytes from the connected serial device. In some cases it may read less than 'length' bytes, so for reliable reading of >1 bytes of data the return value must be checked against the number of bytes requested, and if fewer bytes than requested were read then the call must be tried again.

This function should only be called when Serial.available() is reporting >0 bytes available.

An example of how to reliably read 8 bytes:

$$code(lang=c++)

// we want to read 8 bytes
int bytesRequired = 8;
unsigned char bytes[bytesRequired];
int bytesRemaining = bytesRequired;
// loop until we've read everything
while ( bytesRemaining > 0 )
{
  // check for data
  if ( serial.available() > 0 )
  {
    // try to read - note offset into the bytes[] array, this is so
    // that we don't overwrite the bytes we already have
    int bytesArrayOffset = bytesRequired - bytesRemaining;
    int result = serial.readBytes( &bytes[bytesArrayOffset],
      bytesRemaining );

    // check for error code
    if ( result == OF_SERIAL_ERROR )
    {
      // something bad happened
      ofLog( OF_LOG_ERROR, "unrecoverable error reading from serial" );
      // bail out
      break;
    }
    else if ( result == OF_SERIAL_NO_DATA )
    {
      // nothing was read, try again
    }
    else
    {
      // we read some data!
      bytes_remaining -= result;
    }
  }
}

$$/code














//----------------------

##void writeBytes(buffer, length)

_syntax: writeBytes(buffer, length)_

_name: writeBytes_

_returns: void_

_parameters: unsigned char * buffer, int length_



_description: _

Writes a string of bytes to the connected serial device. As with readBytes() the return code should be checked and the call to writeBytes() repeated with the remaining data until all bytes have been written.

$$code(lang=c++)

ofSerial mySerial;
mySerial.setup(0, 9600);
int numSent = mySerial.writeBytes("Hello World");
// numSent is how many bytes written; for example if numSent 
// is 3 then "Hel" has been written and the call should be retried
// with "lo World" to complete the write.

$$/code














//----------------------

##void writeByte(singleByte)

_syntax: writeByte(singleByte)_

_name: writeByte_

_returns: void_

_parameters: unsigned char singleByte_



_description: _

Writes a single byte to the connected serial device. Check the return value to be sure the data was written.

$$code(lang=c++)

ofSerial mySerial;
mySerial.setup(0, 9600);
unsigned char myByte = 225;
bool byteWasWritten = mySerial.writeByte(myByte);
if ( !byteWasWritten )
  printf("byte was not written to serial port");

$$/code















//----------------------

##int readByte()

_syntax: readByte()_

_name: readByte_

_returns: int_

_parameters: _



_description: _

Reads and returns a single byte from the requested device. 

$$code(lang=c++)

ofSerial mySerial;
mySerial.setup(0, 9600);
int myByte = 0;
myByte = mySerial.readByte();
if ( myByte == OF_SERIAL_NO_DATA )
  printf("no data was read");
else if ( myByte == OF_SERIAL_ERROR )
  printf("an error occurred");
else
  printf("myByte is %d", myByte);

$$/code



<br/><br/>return type changed from  to int in 0.07













//----------------------

##void flush(flushIn, flushOut)

_syntax: flush(flushIn, flushOut)_

_name: flush_

_returns: void_

_parameters: bool flushIn, bool flushOut_



_description: _

Clears data from one or both of the serial buffers. Any data in the cleared buffers is discarded. flushIn = true clears the incoming data buffer and  fluhOut = true clear the outcoming data buffer. 













//----------------------

##int available()

_syntax: available()_

_name: available_

_returns: int_

_parameters: _



_description: _

Lets you query how many bytes are available.

<br/><br/>return type changed from  to int in 0.07













//----------------------

##void setVerbose(bLoudmouth)

_syntax: setVerbose(bLoudmouth)_

_name: setVerbose_

_returns: void_

_parameters: bool bLoudmouth_



_description: _

Enable or disable ofSerial messages and errors being sent to the console.













