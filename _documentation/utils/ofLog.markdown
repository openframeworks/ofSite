#class ofLog


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription


A C++ stream-style logging interface.

ofLog accepts variables via the std::ostream operator << and builds a string
and logs it when the stream is finished (via the destructor). A newline is
printed automatically and all the stream controls (std::endl, std::flush,
std::hex, etc) work normally. The default log level is `OF_LOG_NOTICE`.

Basic usage:

~~~~{.cpp}

ofLog() << "My integer is " << 100 << " and my float is " << 20.234f;

~~~~

It also accepts the legacy ofLog interface:
ofLog(ofLogLevel level, string message):

~~~~{.cpp}

ofLog(OF_LOG_ERROR, "Another string.");

~~~~


By: Dan Wilcox <danomatika@gmail.com> danomatika.com





##Description

ofLog provides an interface for writing text output from your app. It's basically a more useful version of cout or printf where output can be filtered and written to the console or to a file. 

Sometimes you want to be able to see when something has happened inside the code, but don't need to draw something visually. Oftentimes it's more then enough to print out the state of a few variables when debugging. Other times you need to know if a crash happened while your app was running somewhere, so you log messages and variables to a file you can read after the program crashes.

####Log Levels

You can also set the logging level so only messages above a certain priority are shown. This is useful if you want see lots of messages when debugging, but then set a higher level so only warnings and errors appear for users. See [ofSetLogLevel(logLevel)](./ofLog.html#functions) for more detail.

Log levels are (in order of priority):

	OF_LOG_VERBOSE
	OF_LOG_NOTICE
	OF_LOG_WARNING
	OF_LOG_ERROR
	OF_LOG_FATAL_ERROR
	OF_LOG_SILENT

**Note**: OF_LOG_SILENT is a special value which disables **all** messages.

####Usage

There are 2 ways you can use ofLog:

####Functional: as a function taking a message

~~~~{.cpp}

// send a single string message, setting the log level
ofLog(OF_LOG_NOTICE, "the number is " + ofToString(10));

// the legacy printf style
ofLog(OF_LOG_NOTICE, "the number is %d", 10); 

~~~~

See [ofLog(logLevel, &message) & ofLog(logLevel, format*, ...)](./ofLog.html#methods) for more details.

####Stream: as a stream using the << stream operator

~~~~{.cpp}

// the stream style, setting the log level
ofLog(OF_LOG_NOTICE) << "the number is " << 10;

// this is the same as the last line, but only sends at log level notice
ofLog() << "the number is " << 10;

// there are also log level specific stream objects,
// one for each level except OF_LOG_SILENT
ofLogVerbose() << "a verbose print"
ofLogNotice() << "a regular notice print";
ofLogWarning() << "uh oh, a warning";
ofLogError() << "oh no, an error occurred!";
ofLogFatalError() << "accckkk, a fatal error!!";

~~~~

**Note**: The log level specific stream objects also take a string argument for the "module". A module is a string that is added to the beginning of the log line and can be used to separate logging messages by setting an independent log level for **that module only**. This module-specific log level has no effect on other modules. See [ofSetLogLevel(module, logLevel)](./ofLog.html#functions) for more detail.

~~~~{.cpp}

// log to a module called "Hello"
ofLogWarning("Hello") << "a warning print";

~~~~

**Warning**: It is important to understand that the log level specific stream objects take the module name as an argument and the log messages via the << operator. Putting your message as a string argument inside the parentheses uses that message as a *module* and so nothing will be printed:

~~~~{.cpp}

// this prints a warning message
ofLogWarning() << "a warning print";

// !!! this does not print a message as the string "a warning print" is the module argument !!!
ofLogWarning("a warning print");

// this prints a warning message to the "Hello" module
ofLogWarning("Hello") << "a warning print";

~~~~

####Log Message Redirection

Last, it's useful to be able to record log messages to a file or send them to a custom destination. For log redirection see ofLogToFile(), ofLogToConsole(), & ofSetLoggerChannel() in the [ofLog functions](./ofLog.html#functions).





##Methods



###void _log(level, &module, &message)

<!--
_syntax: _log(level, &module, &message)_
_name: _log_
_returns: void_
_returns_description: _
_parameters: ofLogLevel level, const string &module, const string &message_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _

Print a log line.

Parameters:
level The log level.
module The target module.
message The log message.





_description: _







<!----------------------------------------------------------------------------->

###bool checkLog(level, &module)

<!--
_syntax: checkLog(level, &module)_
_name: checkLog_
_returns: bool_
_returns_description: _
_parameters: ofLogLevel level, const string &module_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _

Determine if the given module is active at the given log level.

Parameters:
level The log level.
module The target module.

Returns: true if the given module is active at the given log level.





_description: _







<!----------------------------------------------------------------------------->

### ofLog()

<!--
_syntax: ofLog()_
_name: ofLog_
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

Start logging on notice level.

ofLog provides a streaming log interface by accepting variables via
the `std::ostream` operator `<<` similar to `std::cout` and
`std::cerr`.

It builds a string and logs it when the stream is finished. A
newline is printed automatically and all the stream controls
(`std::endl`, `std::flush`, `std::hex`, etc)
work normally.

~~~~{.cpp}

// Converts primitive types (int, float, etc) to strings automatically.
ofLog() << "a string " << 100 << 20.234f;

~~~~

The log level is `OF_LOG_NOTICE` by default.





_description: _

ofLog provides a streaming log interface by accepting variables via the ostream operator << similar to cout and cerr.

It builds a string and logs it when the stream is finished. A newline is printed automatically and all the stream controls (endl, flush, hex, etc) work normally.

~~~~{.cpp}

// converts incoming primitive types (int, float, etc) to strings automatically
ofLog() << "a string" << 100 << 20.234f;

~~~~

The log level is explicitly OF_LOG_NOTICE.

See [ofSetLogLevel(logLevel)](./ofLog.html#functions) for more info on log levels.





<!----------------------------------------------------------------------------->

### ofLog(level)

<!--
_syntax: ofLog(level)_
_name: ofLog_
_returns: _
_returns_description: _
_parameters: ofLogLevel level_
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

Start logging on a specific ofLogLevel.

Example:
~~~~{.cpp}

// Set the log level.
ofLog(OF_LOG_WARNING) << "a string " << 100 << 20.234f;

~~~~

You can use the derived convenience classes as an alternative for specific log levels:

	ofLogVerbose()
	ofLogNotice()
	ofLogWarning()
	ofLogError()
	ofLogFatalError()

~~~~{.cpp}

// Set the log level.
ofLog(OF_LOG_WARNING) << "a string " << 100 << 20.234f;

// This is the same as above.
ofLogWarning() << "a string " << 100 << 20.234f;

~~~~


Parameters:
level The ofLogLevel for this log message.





_description: _

The same as the ofLog() stream interface, except it accepts a log level. 

~~~~{.cpp}

// set the log level
ofLog(OF_LOG_WARNING) << "a string" << 100 << 20.234f;

~~~~

You can use the derived convenience classes as an alternative for specific log levels: 

	ofLogVerbose()
	ofLogNotice()
	ofLogWarning()
	ofLogError()
	ofLogFatalError()

~~~~{.cpp}

// set the log level
ofLog(OF_LOG_WARNING) << "a string" << 100 << 20.234f;

// this is the same as above
ofLogWarning() << "a string" << 100 << 20.234f;

~~~~

See [ofSetLogLevel()](./ofLog.html#functions) for more info on log levels.





<!----------------------------------------------------------------------------->

### ofLog(level, &message)

<!--
_syntax: ofLog(level, &message)_
_name: ofLog_
_returns: _
_returns_description: _
_parameters: ofLogLevel level, const string &message_
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

Log a string at a specific log level.

Supply the logging message as a parameter to the function
instead of as a stream.

The string message can be concatenated using the
ofToString(const T& value) conversion function:

~~~~{.cpp}

// Build a single string message.
ofLog(OF_LOG_NOTICE, "the number is "
+ ofToString(10) + " and I have a float too " + ofToString(123.45f));

~~~~


Parameters:
level The ofLogLevel for this log message.
message The log message.





_description: _

Logs a string at a specific log level.

The string message can be concatenated using the ofToString() conversion function in [ofUtils](./ofUtils.html#functions):

~~~~{.cpp}

// build a single string message
ofLog(OF_LOG_NOTICE, "the number is " 
+ ofToString(10) + " and I have a float too " + ofToString(123.45f));

~~~~

See [ofSetLogLevel(logLevel)](./ofLog.html#functions) for more info on log levels.





<!----------------------------------------------------------------------------->

### ofLog(&)

<!--
_syntax: ofLog(&)_
_name: ofLog_
_returns: _
_returns_description: _
_parameters: const ofLog &_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofLog & operator<<(&value)

<!--
_syntax: operator<<(&value)_
_name: operator<<_
_returns: ofLog &_
_returns_description: _
_parameters: const T &value_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _

Define flexible stream operator.

This allows the class to use the << std::ostream to read data of
almost any type.

\tparam T the data type to be streamed.

Parameters:
value the data to be streamed.

Returns: A reference to itself.





_description: _







<!----------------------------------------------------------------------------->

###ofLog & operator<<(func)

<!--
_syntax: operator<<(func)_
_name: operator<<_
_returns: ofLog &_
_returns_description: _
_parameters: ostream &(*)(ostream &) func_
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

Define flexible stream operator.

This allows the class to use the << std::ostream to catch function
pointers such as std::endl and std::hex.


Parameters:
func A function pointer that takes a std::ostream as an argument.

Returns: A reference to itself.





_description: _







<!----------------------------------------------------------------------------->

###ofLog & operator=(&from)

<!--
_syntax: operator=(&from)_
_name: operator=_
_returns: ofLog &_
_returns_description: _
_parameters: ofLog &from_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setAutoSpace(autoSpace)

<!--
_syntax: setAutoSpace(autoSpace)_
_name: setAutoSpace_
_returns: void_
_returns_description: _
_parameters: bool autoSpace_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Let the logger automaticly add spaces between messages.

Default is `false`.


Parameters:
autoSpace Set to true to add spaces between messages





_description: _







<!----------------------------------------------------------------------------->

###void setChannel(channel)

<!--
_syntax: setChannel(channel)_
_name: setChannel_
_returns: void_
_returns_description: _
_parameters: shared_ptr< ofBaseLoggerChannel > channel_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the logging channel destinations for messages.

This can be used to output to files instead of stdout.


See also: ofFileLoggerChannel ofConsoleLoggerChannel

Parameters:
channel The channel to log to.





_description: _

Sets the logging channel that receives log messages. This is analogous to ofSetLoggerChannel().

See [ofSetLoggerChannel()](./ofLog.html#functions) for more detail.





<!----------------------------------------------------------------------------->

### ~ofLog()

<!--
_syntax: ~ofLog()_
_name: ~ofLog_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _

Destroy the ofLog.

This destructor does the actual printing via std::ostream.





_description: _







<!----------------------------------------------------------------------------->

##Variables



###bool bAutoSpace

<!--
_name: bAutoSpace_
_type: bool_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Should space be added between messages?





_description: _







<!----------------------------------------------------------------------------->

###bool bPrinted

<!--
_name: bPrinted_
_type: bool_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: False_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Has the message been printed in the constructor?





_description: _







<!----------------------------------------------------------------------------->

###ofPtr channel

<!--
_name: channel_
_type: ofPtr_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: False_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< The target channel.





_description: _







<!----------------------------------------------------------------------------->

###ofLogLevel level

<!--
_name: level_
_type: ofLogLevel_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: False_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Log level.





_description: _







<!----------------------------------------------------------------------------->

###std message

<!--
_name: message_
_type: std_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: False_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< Temporary buffer.





_description: _







<!----------------------------------------------------------------------------->

###string module

<!--
_name: module_
_type: string_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: False_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< The destination module for this message.





_description: _







<!----------------------------------------------------------------------------->

###string padding

<!--
_name: padding_
_type: string_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< The padding between std::ostream calls.





_description: _







<!----------------------------------------------------------------------------->

