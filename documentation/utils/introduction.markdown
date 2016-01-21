## Filesystem, threading, popup windows and other utilities

The utils module, has different kinds of utilities the main groups are:

Filesystem: [ofFilePath](ofFilePath.html), [ofFile](ofFile.html), [ofDirectory](ofDirectory.html) give functionalities to work with filesystem paths, open, read, and do different operations over files and directories in the computer.

[ofSystemUtils](ofSystemUtils): contains mostly functions for creating message and file opening and saving dialogs.

[ofURLFileLoader](ofURLFileLoader.html): can be sued to load resources over from the web using the http protocol.

[ofXml](ofXml.html): lets you load and save xml files

Threading: [ofThread](ofThread.html) allows to create a worker thread that can execute a CPU intensive task in the background so the execution of the application and the graphics output are not interrupted. [ofThreadChannel](ofThreadChannel.html) is a class that allows to send messages between different threads instead of using shared memory (variables) locked by mutexes or other synchronization primitives which are usually more complex to use and error prone.

[ofUTF8Iterator](ofUTF8Iterator.html) makes it easy to parse std::strings encoded in the most common unicode format, UTF-8.

[ofFpsCounter](ofFpsCounter.html) counts the fps of anything that returns data or somehow happens periodically in a really simple and accurate way. It's used internally by openFrameworks to meassure the fps of the application but can be used to meassure the fps of anything else, like a camera or anything that happens with a certain frequency.

[ofBuffer](ofBuffer) Can hold a whole file (text or binary) or any other buffer in memory and has utilities to easily iterate over it's contents. Also classes like [ofFile](ofFile.html) can return it's contents in an easy manner using this class.

[ofUtils](ofUtils) Contains different functions for varied purposes, from string manipulation like ofToUpper or ofSplitString to time functions like ofGetSeconds or ofGetMinutes.
