#class ofBuffer


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
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
_parameters: size_t _size_
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
_parameters: const char *_buffer, size_t _size_
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

###vector< char >::iterator begin()

<!--
_syntax: begin()_
_name: begin_
_returns: vector< char >::iterator_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###vector< char >::const_iterator begin()

<!--
_syntax: begin()_
_name: begin_
_returns: vector< char >::const_iterator_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###vector< char >::iterator end()

<!--
_syntax: end()_
_name: end_
_returns: vector< char >::iterator_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###vector< char >::const_iterator end()

<!--
_syntax: end()_
_name: end_
_returns: vector< char >::const_iterator_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###char * getData()

<!--
_syntax: getData()_
_name: getData_
_returns: char *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###const char * getData()

<!--
_syntax: getData()_
_name: getData_
_returns: const char *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###ofBuffer::Lines getLines()

<!--
_syntax: getLines()_
_name: getLines_
_returns: ofBuffer::Lines_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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
_parameters: const char *buffer, size_t size_
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

### ofBuffer(&stream, ioBlockSize)

<!--
_syntax: ofBuffer(&stream, ioBlockSize)_
_name: ofBuffer_
_returns: _
_returns_description: _
_parameters: istream &stream, size_t ioBlockSize_
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

###vector< char >::reverse_iterator rbegin()

<!--
_syntax: rbegin()_
_name: rbegin_
_returns: vector< char >::reverse_iterator_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###vector< char >::const_reverse_iterator rbegin()

<!--
_syntax: rbegin()_
_name: rbegin_
_returns: vector< char >::const_reverse_iterator_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###vector< char >::reverse_iterator rend()

<!--
_syntax: rend()_
_name: rend_
_returns: vector< char >::reverse_iterator_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###vector< char >::const_reverse_iterator rend()

<!--
_syntax: rend()_
_name: rend_
_returns: vector< char >::const_reverse_iterator_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###void set(*_buffer, _size)

<!--
_syntax: set(*_buffer, _size)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const char *_buffer, size_t _size_
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

###bool set(&stream, ioBlockSize)

<!--
_syntax: set(&stream, ioBlockSize)_
_name: set_
_returns: bool_
_returns_description: _
_parameters: istream &stream, size_t ioBlockSize_
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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofBuffer::Line currentLine

<!--
_name: currentLine_
_type: ofBuffer::Line_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

