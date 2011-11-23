#class ofSerial

##Example



##Reference



ofSerial provides a cross platform system for interfacing with the serial port. You can choose the port and baud rate, and then read and send data. Please note that the port must be set manually in the code, so you should be clear what port your device is on. For example, Arduino users should check the arduino app to see what port their device is on. Alternatively the ofSerial class can attempt to communicate with the first available device it finds.

##Methods



###void ofSerial()

_syntax: ofSerial()_

_name: ofSerial_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 0_

_advanced: 0_



_description: _

















###void ~ofSerial()

_syntax: ~ofSerial()_

_name: ~ofSerial_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 0_

_advanced: 0_



_description: _

















###void enumerateDevices()

_syntax: enumerateDevices()_

_name: enumerateDevices_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



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
















###void close()

_syntax: close()_

_name: close_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

Closes the connection to the serial device. 















###bool setup()

_syntax: setup()_

_name: setup_

_returns: bool_

_returns_description: Returns true if successful and false if setup fails._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

Attempts to setup the first available device at a baud rate of 9600. 

$$code(lang=c++)

ofSerial mySerial;
if( mySerial.setup() ){
	printf("serial is setup!
");	
}

$$/code
















###bool setup(portName,baudrate)

_syntax: setup(portName,baudrate)_

_name: setup_

_returns: bool_

_returns_description: Returns true if successful and false if setup fails._

_parameters: string portName, int baudrate_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



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
















###bool setup(deviceNumber,baudrate)

_syntax: setup(deviceNumber,baudrate)_

_name: setup_

_returns: bool_

_returns_description: Returns true if successful and false if setup fails._

_parameters: int deviceNumber, int baudrate_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

Opens the serial port based on the order in which is listed and sets the baud rate. The code bellow would open the first serial device found by the system:

$$code(lang=c++)

ofSerial mySerial;
mySerial.setup(0, 9600);

$$/code
















###int readBytes(buffer,length)

_syntax: readBytes(buffer,length)_

_name: readBytes_

_returns: int_

_returns_description: Returns an int value telling the number of bytes that have been read, or OF_SERIAL_NO_DATA if no data was available, or OF_SERIAL_ERROR if an error occurred during reading._

_parameters: unsigned char * buffer, int length_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



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
















###int writeBytes(buffer, length)

_syntax: writeBytes(buffer, length)_

_name: writeBytes_

_returns: int_

_returns_description: Returns number of bytes written, or OF_SERIAL_ERROR if an error occured._

_parameters: unsigned char * buffer, int length_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



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
















###bool writeByte(singleByte)

_syntax: writeByte(singleByte)_

_name: writeByte_

_returns: bool_

_returns_description: Returns true if successful._

_parameters: unsigned char singleByte_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



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

















###int readByte()

_syntax: readByte()_

_name: readByte_

_returns: int_

_returns_description: Returns a single byte, or OF_SERIAL_NO_DATA if no data was read, or OF_SERIAL_ERROR if an error occurred._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



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

















###void flush(flushIn, flushOut)

_syntax: flush(flushIn, flushOut)_

_name: flush_

_returns: void_

_returns_description: _

_parameters: bool flushIn, bool flushOut_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

Clears data from one or both of the serial buffers. Any data in the cleared buffers is discarded. flushIn = true clears the incoming data buffer and  fluhOut = true clear the outcoming data buffer. 















###int available()

_syntax: available()_

_name: available_

_returns: int_

_returns_description: Returns the number of available bytes._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

Lets you query how many bytes are available.















###void setVerbose(bLoudmouth)

_syntax: setVerbose(bLoudmouth)_

_name: setVerbose_

_returns: void_

_returns_description: _

_parameters: bool bLoudmouth_

_access: public_

_version_started: 006_

_version_deprecated: 0.06_

_summary: _

_visible: 1_

_advanced: 0_



_description: _

Enable or disable ofSerial messages and errors being sent to the console.















##Variables



###bool bVerbose

_name: bVerbose_

_type: bool_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _

_visible: 0_

_advanced: 0_



_description: _

bVerbose is a boolean varible controlling verbosity on the ofSerial class. 













###bool bInited

_name: bInited_

_type: bool_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _

_visible: 1_

_advanced: 0_



_description: _

h













###int fd

_name: fd_

_type: int_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _

_visible: 1_

_advanced: 0_



_description: _















###struct termios oldoptions

_name: oldoptions_

_type: struct termios_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _

_visible: 1_

_advanced: 0_



_description: _















