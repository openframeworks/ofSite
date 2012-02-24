#class ofLog


##Description

ofLog provides an interface for writing text output from your app. It's basically a more useful version of cout or printf where output can be filtered and written to the console or to a file. 

Sometimes you want to be able to see when something has happened inside the code, but don't need to draw something visually. Oftentimes it's more then enough to print out the state of a few variables when debugging. Other times you need to know if a crash happened while your app was running somewhere, so you log messages and variables to a file you can read after the program crashes.

You can also set the logging level so only messages above a certain priority are shown. This is useful if you want see lots of messages when debugging, but then set a higher level so only warnings and errors appear for users. See [ofSetLogLevel()](./ofLog_functions.htm) for more detail.

There are 2 ways you can use ofLog:

1. as a function taking a message
2. as a stream using the << stream operator

~~~~{.cpp}

// FUNCTIONAL

// send a single string message
ofLog(OF_LOG_NOTICE, "the number is " + ofToString(10));

// the legacy printf style
ofLog(OF_LOG_NOTICE, "the number is %d", 10); 

// STREAM

// the stream style
ofLog(OF_LOG_NOTICE) << "the number is " << 10;

// there are also log level specific stream objects
ofLogNotice() << "the number is " << 10;

~~~~

For log redirection see ofLogToFile(), ofLogToConsole(), & ofSetLoggerChannel() in the [ofLog functions](./ofLog_functions.htm).

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

The log level is explicitly OF_LOG_NOTICE.

See [ofSetLogLevel()](./ofLog_functions.htm) for more info on log levels.

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

See the derived convenience classes for specific log levels: `ofLogVerbose`, `ofLogNotice`, `ofLogWarning`, `ofLogError`, & `ofLogFatalError`.

See [ofSetLogLevel()](./ofLog_functions.htm) for more info on log levels.

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

The string message can be concatenated using the ofToString() conversion function in [ofUtils](./ofUtils_functions.htm):

~~~~{.cpp}

// build a single string message
ofLog(OF_LOG_NOTICE, "the number is " + ofToString(10) + " and I have a float too " + ofToString(123.45f));

~~~~

See [ofSetLogLevel()](./ofLog_functions.htm) for more info on log levels.

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
_advanced: True_
-->

_description: _

Sets the logging channel that receives log messages. This is analogous to ofSetLoggerChannel().

See ofSetLoggerChannel() for more detail.

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
