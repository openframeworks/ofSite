#class ofLog


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

**Note**: `OF_LOG_SILENT` is a special value which disables **all** messages.

####Usage

There are 2 ways you can use ofLog:

####Functional: as a function taking a message


~~~~{.cpp}

// send a single string message, setting the log level
ofLog(OF_LOG_NOTICE, "the number is " + ofToString(10));

// the legacy printf style
ofLog(OF_LOG_NOTICE, "the number is %d", 10); 

~~~~

See [ofLog(logLevel, &message) & ofLog(logLevel, format*, …)](./ofLog.html#methods) for more details.

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

ofLog provides a streaming log interface by accepting variables via the ostream operator << similar to cout and cerr.

It builds a string and logs it when the stream is finished. A newline is printed automatically and all the stream controls (endl, flush, hex, etc) work normally.

~~~~{.cpp}

// converts incoming primitive types (int, float, etc) to strings automatically
ofLog() << "a string" << 100 << 20.234f;

~~~~

The log level is explicitly `OF_LOG_NOTICE`.

See [ofSetLogLevel(logLevel)](./ofLog.html#functions) for more info on log levels.

<!----------------------------------------------------------------------------->

### ofLog(logLevel)

<!--
_syntax: ofLog(logLevel)_
_name: ofLog_
_returns: _
_returns_description: _
_parameters: ofLogLevel logLevel_
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

### ofLog(logLevel, &message)

<!--
_syntax: ofLog(logLevel, &message)_
_name: ofLog_
_returns: _
_returns_description: _
_parameters: ofLogLevel logLevel, const string &message_
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

Logs a string at a specific log level.

The string message can be concatenated using the ofToString() conversion function in [ofUtils](./ofUtils.html#functions):

~~~~{.cpp}

// build a single string message
ofLog(OF_LOG_NOTICE, "the number is " 
+ ofToString(10) + " and I have a float too " + ofToString(123.45f));

~~~~

See [ofSetLogLevel(logLevel)](./ofLog.html#functions) for more info on log levels.

<!----------------------------------------------------------------------------->

### ofLog(logLevel, *format, ...)

<!--
_syntax: ofLog(logLevel, *format, ...)_
_name: ofLog_
_returns: _
_returns_description: _
_parameters: ofLogLevel logLevel, const char *format,..._
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

Logs a message at a specific log level using the printf interface.

The message is built using the formatting from the C printf function and can be used as a direct replacement. Essentially, the second argument is a string with special formatting specifiers starting with '%' that specify where the following variables go in the message. You can have as many variables as you want following the logLevel and format string, but there must be a % specifier for each subsequent variable.

For quick reference, here are a few of the most useful formatting specifiers:

* **%d**: integer number, 123
* **%f**: floating point number, 123.45
* **%s**: a C string ([null terminated](http://en.wikipedia.org/wiki/Null-terminated_string)); this is not a C++ string, use [string::c_str()](http://www.cplusplus.com/reference/string/string/c_str/) to get a C string from a C++ string
* **%c**: a single character
* **%x**: unsigned integer as a [hexidecimal](http://en.wikipedia.org/wiki/Hexadecimal) number; 'x' uses lower-case letters and 'X' uses upper-case
* **%%**: prints a '%' character

The specifier should match the variable type as it is used to tell the function how to convert that primitive type (int, float, character, etc) into a string.

For instance, let's say we want to print two messages, a salutation and the value of an int, a float, and a string variable:

~~~~{.cpp}

// print a simple message with no variables
ofLog(OF_LOG_WARNING, "welcome to the jungle);

// our variables
float fun = 11.11;
int games = 100;
string theNames = "Dan, Kyle, & Golan";

// print a message with variables, sets the message format in the format string
ofLog(OF_LOG_NOTICE, "we've got %d & %f, we got everything you want honey, we know %s", fun, games, theNames.c_str());

~~~~

Note: `theNames.c_str()` returns a C string from theNames which is a C++ string object.

There are other formatting options such as setting the decimal precision of float objects and the forward padding of numbers (i.e. 0001 instead of 1). See the [Wikipedia printf format string article](http://en.wikipedia.org/wiki/Printf_format_string) for more detailed information.

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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _

<!----------------------------------------------------------------------------->

###ofLog operator<<(&value)

<!--
_syntax: operator<<(&value)_
_name: operator<<_
_returns: ofLog_
_returns_description: _
_parameters: const T &value_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: False_
_advanced: False_
-->

_description: _


<!----------------------------------------------------------------------------->

###void setChannel(channel)

<!--
_syntax: setChannel(channel)_
_name: setChannel_
_returns: void_
_returns_description: _
_parameters: ofPtr< ofBaseLoggerChannel > channel_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _

Sets the logging channel that receives log messages. This is analogous to ofSetLoggerChannel().

See [ofSetLoggerChannel()](./ofLog.html#functions) for more detail.

<!----------------------------------------------------------------------------->

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
_static: no_
_visible: False_
_advanced: False_
-->

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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _

<!----------------------------------------------------------------------------->

### ofLog(&)

<!--
_syntax: ofLog(&)_
_name: ofLog_
_returns: _
_returns_description: _
_parameters: ofLog const &_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: False_
_advanced: False_
-->

_description: _

<!----------------------------------------------------------------------------->

###ofLog operator=(&from)

<!--
_syntax: operator=(&from)_
_name: operator=_
_returns: ofLog_
_returns_description: _
_parameters: ofLog &from_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: False_
_advanced: False_
-->

_description: _

<!----------------------------------------------------------------------------->

##Variables



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

_description: _

<!----------------------------------------------------------------------------->
