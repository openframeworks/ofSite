#class ofBuffer


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

ofBuffer is a convenience class that provides easy methods for reading from and writing to files. It makes heavy use of the standard C++ ostream and istream classes, but also adds in easy ways to convert file data to strings, like:

~~~~{.cpp}
ofBuffer buffer = ofBufferFromFile("someFile.txt"); // reading into the buffer
cout << buffer.getText(); // let's see what it says
~~~~

You can also use the ofBufferFromFile() method to create a buffer from a file:

~~~~{.cpp}
ofBuffer fileBuffer = ofBufferFromFile("someFile.txt");
~~~~





##Methods



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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Allocate memory for the buffer to use. This sizes the char vector that the ofBuffer instance contains.







<!----------------------------------------------------------------------------->

###void append(&_buffer)

<!--
_syntax: append(&_buffer)_
_name: append_
_returns: void_
_returns_description: _
_parameters: const string &_buffer_
_access: public_
_version_started: 0073_
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

###void append(*_buffer, _size)

<!--
_syntax: append(*_buffer, _size)_
_name: append_
_returns: void_
_returns_description: _
_parameters: const char *_buffer, unsigned int _size_
_access: public_
_version_started: 0072_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Clears all the data from the buffer.







<!----------------------------------------------------------------------------->

###char * getBinaryBuffer()

<!--
_syntax: getBinaryBuffer()_
_name: getBinaryBuffer_
_returns: char *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns a pointer into the vector that contains the buffer data.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns a pointer into the vector that contains the buffer data.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns all the text up to the first carriage return, either the \r or \n character.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


If the buffer data contains carriage returns, the '\n' or '\r' character, getNextLine() returns the text up to the next return.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Return the buffer data as a string.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Get whether the current text is the last line in the text file.







<!----------------------------------------------------------------------------->

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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Constructor.







<!----------------------------------------------------------------------------->

### ofBuffer(*buffer, size)

<!--
_syntax: ofBuffer(*buffer, size)_
_name: ofBuffer_
_returns: _
_returns_description: _
_parameters: const char *buffer, unsigned int size_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Create a buffer with a character array.

~~~~{.cpp}
string giantDataString;
ofBuffer buff(giantDataString.c_str(), giantDataString.size());
~~~~







<!----------------------------------------------------------------------------->

### ofBuffer(&text)

<!--
_syntax: ofBuffer(&text)_
_name: ofBuffer_
_returns: _
_returns_description: _
_parameters: const string &text_
_access: public_
_version_started: 0072_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Construct a buffer from a file stream istream object.







<!----------------------------------------------------------------------------->

### ofBuffer(&buffer_)

<!--
_syntax: ofBuffer(&buffer_)_
_name: ofBuffer_
_returns: _
_returns_description: _
_parameters: const ofBuffer &buffer__
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Copy constructor, allows you to do:

~~~~{.cpp}
ofBuffer aBuff;
// put some stuff in aBuff
ofBuffer bBuff(aBuff); // now it's in bBuff as well
~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Internally, calls getText()







<!----------------------------------------------------------------------------->

###ofBuffer & operator=(&text)

<!--
_syntax: operator=(&text)_
_name: operator=_
_returns: ofBuffer &_
_returns_description: _
_parameters: const string &text_
_access: public_
_version_started: 0072_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Internally the ofBuffer keeps track of the lines in a file using an index of the \n or \r characters in the data that it contains. resetLineReader() clears this index.







<!----------------------------------------------------------------------------->

###void set(*_buffer, _size)

<!--
_syntax: set(*_buffer, _size)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const char *_buffer, unsigned int _size_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Set the buffer from a string.

~~~~{.cpp}
string giantDataString;
ofBuffer buff;
buff.set(giantDataString.c_str(), giantDataString.size());
~~~~







<!----------------------------------------------------------------------------->

###void set(&text)

<!--
_syntax: set(&text)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const string &text_
_access: public_
_version_started: 0072_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Set the buffer from an istream.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Get the size of the buffer data.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Destructor.







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

