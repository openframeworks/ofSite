#functions


<!--
_visible: True_
_advanced: True_
-->

##Description






<!----------------------------------------------------------------------------->

###ofLogLevel ofGetLogLevel()

<!--
_syntax: ofGetLogLevel()_
_name: ofGetLogLevel_
_returns: ofLogLevel_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the currently set global logging level.

Returns: The currently set global logging level.





_description: _

Get the current log level. This is useful when combined with ofGetLogLevelName() if you want to print the current log level:
~~~~{.cpp}
ofLogLevel currentLevel = ofGetLogLevel();
ofLog() << "The current log level is " << ofGetLogLevelName(currentLevel);
~~~~





<!----------------------------------------------------------------------------->

###string ofGetLogLevelName(level, pad = false)

<!--
_syntax: ofGetLogLevelName(level, pad = false)_
_name: ofGetLogLevelName_
_returns: string_
_returns_description: _
_parameters: ofLogLevel level, bool pad=false_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get log level name as a string.

Parameters:
level The ofLogLevel you want as a string.
pad True if you want all log level names to be the same length.

Returns: The log level name as a string.





_description: _







<!----------------------------------------------------------------------------->

###void ofLogToConsole()

<!--
_syntax: ofLogToConsole()_
_name: ofLogToConsole_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the logging to ouptut to the console.

This is the default state and can be called to reset console logging
after ofLogToFile or ofSetLoggerChannel has been called.





_description: _







<!----------------------------------------------------------------------------->

###void ofLogToFile(&path, append = false)

<!--
_syntax: ofLogToFile(&path, append = false)_
_name: ofLogToFile_
_returns: void_
_returns_description: _
_parameters: const string &path, bool append=false_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the logging to output to a file instead of the console.

Parameters:
path The path to the log file to use.
append True if you want to append to the existing file.





_description: _

Enable logging to a file instead of the console.
Set the path and name of the log file and it will be created if it doesn't exist. If it does exist, it will be overwritten unless you set *append* to true, whereas new lines will be added to the bottom of the file.
~~~~{.cpp}
// logs to the console
ofLog() << "a test string";
// enable file logging, append text
// the log file will be created in the data directory
ofLogToFile("myLogFile.txt", true);
// now logs to the file
ofLog() << "a test string";
~~~~
Note: When file logging is enabled, will not see log messages on the console!





<!----------------------------------------------------------------------------->

###void ofSetLogLevel(logLevel)

<!--
_syntax: ofSetLogLevel(logLevel)_
_name: ofSetLogLevel_
_returns: void_
_returns_description: _
_parameters: ofLogLevel level_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets the logging level to selectively show log messages.

This is useful if you want see lots of messages when debugging,
but then set a higher level so only warnings and errors appear for users.

ofLogLevel values in order from lowest to highest level are:
- `OF_LOG_VERBOSE` (lowest level)
- `OF_LOG_NOTICE`
- `OF_LOG_WARNING`
- `OF_LOG_ERROR`
- `OF_LOG_FATAL_ERROR`
- `OF_LOG_SILENT` (highest level)

Thus, setting a log level of `OF_LOG_ERROR`, means only logging messages
marked OF_LOG_ERROR and OF_LOG_FATAL_ERROR will be printed. Conversely,
setting OF_LOG_VERBOSE means all log level messages, including
OF_LOG_VERBOSE, will be printed.  Finally, setting a log level of
OF_LOG_SILENT will prevent any messages from being printed.

The default ofLogLevel is `OF_LOG_NOTICE`.


Parameters:
level the ofLogLevel (and below) you want to show





_description: _

Sets the logging level so only messages above a certain priority are shown. This is useful if you want see lots of messages when debugging, but then set a higher level so only warnings and errors appear for users.
logLevel values are (in order of priority):
	OF_LOG_VERBOSE
	OF_LOG_NOTICE
	OF_LOG_WARNING
	OF_LOG_ERROR
	OF_LOG_FATAL_ERROR
	OF_LOG_SILENT
Following priority, setting a log level of OF_LOG_ERROR, means only error & fatal error messages will be printed. Conversely, setting OF_LOG_VERBOSE means **all** log level messages will be printed.
Here's a code example:
~~~~{.cpp}
// set to warning level
ofSetLogLevel(OF_LOG_WARNING);
ofLogWarning() << "a warning print";	// this prints
ofLogNotice() << "test print";			// this doesn't
ofLogVerbose() << "a verbose print";	// this doesn't either
// set to notice level
ofSetLogLevel(OF_LOG_NOTICE);
ofLogWarning() << "a warning print";	// this still prints
ofLogNotice() << "test print";			// this does too
ofLogVerbose() << "a verbose print";	// this doesn't
~~~~
The default log level is OF_LOG_NOTICE.
OF_LOG_SILENT is a special value which disables **all** messages.





<!----------------------------------------------------------------------------->

###void ofSetLogLevel(module, logLevel)

<!--
_syntax: ofSetLogLevel(module, logLevel)_
_name: ofSetLogLevel_
_returns: void_
_returns_description: _
_parameters: string module, ofLogLevel level_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the logging level for a specific module.

When a module name is supplied to ofSetLogLevel, the provided ofLogLevel
is selectively applied only to ofLog messages marked with the specified
module.

This is particularly useful when the user desires to, for example, log at
an OF_LOG_VERBOSE level for one module and then log at OF_LOG_ERROR for
another module.

Example of logging to a specific module:

~~~~{.cpp}
// Set the default log level for all logging.
ofSetLogLevel(OF_LOG_ERROR);

// Selectively enable verbose logging for the MyClass module.
ofSetLogLevel("MyClass", OF_LOG_VERBOSE);

// If we then log the following ...

// Log a vermose message to a module called "MyClass".
ofLogVerbose("MyClass") << "A verbose message from MyClass.";

// Log a verbose message to a module called "MyOtherClass".
ofLogVerbose("MyOtherClass") << "A verbose message from MyOtherClass.";

// In this case, we will see the verbose message from "MyClass", but not
// the message from "MyOtherClass".
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofSetLoggerChannel(loggerChannel)

<!--
_syntax: ofSetLoggerChannel(loggerChannel)_
_name: ofSetLoggerChannel_
_returns: void_
_returns_description: _
_parameters: shared_ptr< ofBaseLoggerChannel > loggerChannel_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the logger to use a custom logger channel.

Custom logger channels must extend ofBaseLoggerChannel. Custom log channels
can be useful for combining logging methods, logging to a server, logging
to email or even Twitter.


Parameters:
loggerChannel A shared pointer to the logger channel.





_description: _







<!----------------------------------------------------------------------------->

