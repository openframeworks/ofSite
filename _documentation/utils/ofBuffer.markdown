#class ofBuffer


##Description


ofBuffer is a convenience class that provides easy methods for reading from and writing to files. It makes heavy use of the standard C++ ostream and istream classes, but also adds in easy ways to convert file data to strings, like:

~~~~.cpp
ofBuffer buffer = ofBufferFromFile("someFile.txt"); // reading into the buffer
cout << buffer.getText(); // let's see what it says
~~~~

You can also use the ofBufferFromFile() method to create a buffer from a file:


~~~~.cpp
ofBuffer fileBuffer = ofBufferFromFile("someFile.txt");
~~~~

##Methods



### ofBuffer()

<!--
_syntax: ofBuffer()_
_name: ofBuffer_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Constructor.



<!----------------------------------------------------------------------------->

### ofBuffer(*buffer, size)

<!--
_syntax: ofBuffer(*buffer, size)_
_name: ofBuffer_
_returns: _
_returns_description: _
_parameters: const char *buffer, int size_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Create a buffer with a character array.

~~~~.cpp
string giantDataString;
ofBuffer buff(giantDataString.c_str(), giantDataString.size());
~~~~



<!----------------------------------------------------------------------------->

### ofBuffer(&stream)

<!--
_syntax: ofBuffer(&stream)_
_name: ofBuffer_
_returns: _
_returns_description: _
_parameters: istream &stream_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Construct a buffer from a file stream istream object.



<!----------------------------------------------------------------------------->

### ofBuffer(&buffer_)

<!--
_syntax: ofBuffer(&buffer_)_
_name: ofBuffer_
_returns: _
_returns_description: _
_parameters: const ofBuffer &buffer_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Copy constructor, allows you to do:

~~~~.cpp
ofBuffer aBuff;
// put some stuff in aBuff
ofBuffer bBuff(aBuff); // now it's in bBuff as well
~~~~




<!----------------------------------------------------------------------------->

### ~ofBuffer()

<!--
_syntax: ~ofBuffer()_
_name: ~ofBuffer_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Destructor.



<!----------------------------------------------------------------------------->

###void set(*_buffer, _size)

<!--
_syntax: set(*_buffer, _size)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const char *_buffer, int _size_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Set the buffer from a string.

~~~~.cpp
string giantDataString;
ofBuffer buff;
buff.set(giantDataString.c_str(), giantDataString.size());
~~~~



<!----------------------------------------------------------------------------->

###bool set(&stream)

<!--
_syntax: set(&stream)_
_name: set_
_returns: bool_
_returns_description: _
_parameters: istream &stream_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Set the buffer from an istream.

~~~~.cpp
string giantDataString;
ofBuffer buff;
buff.set(giantDataString.c_str(), giantDataString.size());
~~~~




<!----------------------------------------------------------------------------->

###bool writeTo(&stream)

<!--
_syntax: writeTo(&stream)_
_name: writeTo_
_returns: bool_
_returns_description: _
_parameters: ostream &stream_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void clear()

<!--
_syntax: clear()_
_name: clear_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Clears all the data from the buffer.




<!----------------------------------------------------------------------------->

###void allocate(_size)

<!--
_syntax: allocate(_size)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: long _size_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Allocate memory for the buffer to use. This sizes the char vector that the ofBuffer instance contains.




<!----------------------------------------------------------------------------->

###const char * getBinaryBuffer()

<!--
_syntax: getBinaryBuffer()_
_name: getBinaryBuffer_
_returns: const char *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns a pointer into the vector that contains the buffer data.




<!----------------------------------------------------------------------------->

###string getText()

<!--
_syntax: getText()_
_name: getText_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Return the buffer data as a string.




<!----------------------------------------------------------------------------->

### operator string()

<!--
_syntax: operator string()_
_name: operator string_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Internally, calls getText()




<!----------------------------------------------------------------------------->

###long size()

<!--
_syntax: size()_
_name: size_
_returns: long_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get the size of the buffer data.




<!----------------------------------------------------------------------------->

###string getNextLine()

<!--
_syntax: getNextLine()_
_name: getNextLine_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



If the buffer data contains carriage returns, the '\n' or '\r' character, getNextLine() returns the text up to the next return.



<!----------------------------------------------------------------------------->

###string getFirstLine()

<!--
_syntax: getFirstLine()_
_name: getFirstLine_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns all the text up to the first carriage return, either the \r or \n character.




<!----------------------------------------------------------------------------->

###bool isLastLine()

<!--
_syntax: isLastLine()_
_name: isLastLine_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get whether the current text is the last line in the text file.




<!----------------------------------------------------------------------------->

###void resetLineReader()

<!--
_syntax: resetLineReader()_
_name: resetLineReader_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Internally the ofBuffer keeps track of the lines in a file using an index of the \n or \r characters in the data that it contains. resetLineReader() clears this index.




<!----------------------------------------------------------------------------->

##Variables



###vector< char > buffer

<!--
_name: buffer_
_type: vector< char >_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###long nextLinePos

<!--
_name: nextLinePos_
_type: long_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

