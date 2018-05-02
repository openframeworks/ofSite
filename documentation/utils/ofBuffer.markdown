#class ofBuffer


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription



A buffer of data which can be accessed as simple bytes or text.






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



###void allocate(size)

<!--
_syntax: allocate(size)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: size_t size_
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

Request that the buffer capacity be at least enough to contain a
specified number of bytes.


Parameters:
size number of bytes to reserve space for





_description: _

Allocate memory for the buffer to use. This sizes the char vector that the ofBuffer instance contains.





<!----------------------------------------------------------------------------->

###void append(&buffer)

<!--
_syntax: append(&buffer)_
_name: append_
_returns: void_
_returns_description: _
_parameters: const string &buffer_
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

Append bytes to the end of buffer from a string.


Parameters:
buffer string to copy bytes from





_description: _







<!----------------------------------------------------------------------------->

###void append(*buffer, size)

<!--
_syntax: append(*buffer, size)_
_name: append_
_returns: void_
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

Append bytes to the end of the buffer from a raw byte pointer.


Warning: buffer *must* not be NULL

Warning: size *must* be <= the number of bytes allocated in buffer

Parameters:
buffer pointer to the raw byte buffer to copy data from
size the number of bytes to read





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

Remove all bytes from the buffer, leaving a size of 0.





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

Access the buffer's contents using a raw byte pointer.


Warning: Do not access bytes at indices beyond size()!

Returns: pointer to internal raw bytes





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

access the buffer's contents using a const raw byte pointer.


Warning: Do not access bytes at indices beyond size()!

Returns: const pointer to internal raw bytes





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

Access the contents of the buffer as a series of text lines.

If the buffer loads a text file with lines separated by an endline
char '\n', you can access each line individually using Line structs.


Returns: buffer text lines





_description: _







<!----------------------------------------------------------------------------->

###ofBuffer::RLines getReverseLines()

<!--
_syntax: getReverseLines()_
_name: getReverseLines_
_returns: ofBuffer::RLines_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Access the contents of the buffer as a series of text lines in reverse
order

If the buffer loads a text file with lines separated by an endline
char '\n' or '\r\n', you can access each line individually using Line structs.


Returns: buffer text lines





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

get the contents of the buffer as a string.


Returns: buffer contents as a string





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

Create a buffer and set its contents from a raw byte pointer.


Parameters:
buffer pointer to the raw byte buffer to copy data from
size the number of bytes to read

Warning: buffer *must* not be NULL

Warning: size *must* be <= the number of bytes allocated in buffer





_description: _

Create a buffer with a character array.

~~~~{.cpp}
string giantDataString;
ofBuffer buff(giantDataString.c_str(), giantDataString.size());
~~~~





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

Create a buffer and set its contents from an input stream.


Parameters:
ioBlockSize the number of bytes to read from the stream in chunks





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

set contents of the buffer from a string





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

###void reserve(size)

<!--
_syntax: reserve(size)_
_name: reserve_
_returns: void_
_returns_description: _
_parameters: size_t size_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Request that the buffer capacity be at least enough to contain a
specified number of bytes.


Parameters:
size number of bytes to reserve space for





_description: _







<!----------------------------------------------------------------------------->

###void resize(size)

<!--
_syntax: resize(size)_
_name: resize_
_returns: void_
_returns_description: _
_parameters: size_t size_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Resize the buffer to contain a specified number of bytes.

If size is < the current buffer size, the contents are reduced to size
bytes & remaining bytes are removed. If size is > the current buffer
size, the buffer's size is increased to size_ bytes.


Parameters:
size number of bytes to resize the buffer to





_description: _







<!----------------------------------------------------------------------------->

###void set(*buffer, size)

<!--
_syntax: set(*buffer, size)_
_name: set_
_returns: void_
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

Set the contents of the buffer from a raw byte pointer.


Warning: buffer *must* not be NULL

Warning: size *must* be <= the number of bytes allocated in buffer

Parameters:
buffer pointer to the raw byte buffer to copy data from
size the number of bytes to read





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

Set contents of the buffer from a string.


Parameters:
text string to copy data from





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

Set contents of the buffer from an input stream.


Parameters:
stream input stream to copy data from
ioBlockSize the number of bytes to read from the stream in chunks





_description: _

Set the buffer from an istream.





<!----------------------------------------------------------------------------->

###void setall(mem)

<!--
_syntax: setall(mem)_
_name: setall_
_returns: void_
_returns_description: _
_parameters: char mem_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set all bytes in the buffer to a given value.


Parameters:
mem byte value to set





_description: _







<!----------------------------------------------------------------------------->

###size_t size()

<!--
_syntax: size()_
_name: size_
_returns: size_t_
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

Check the buffer's size.


Returns: the size of the buffer's content in bytes





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

Write contents of the buffer to an output stream.





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

