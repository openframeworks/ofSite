#functions

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

_description: _

Get the current log level. This is useful when combined with ofGetLogLevelName() if you want to print the current log level:
~~~~{.cpp}
ofLogLevel currentLevel = ofGetLogLevel();
ofLog() << "The current log level is " << ofGetLogLevelName(currentLevel);
~~~~






<!----------------------------------------------------------------------------->

###string ofGetLogLevelName(level)

<!--
_syntax: ofGetLogLevelName(level)_
_name: ofGetLogLevelName_
_returns: string_
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

_description: _

Returns the given log level as a string. This is useful if you want to print the current log level:
~~~~{.cpp}
ofLogLevel currentLevel = ofGetLogLevel();
ofLog() << "The current log level is " << ofGetLogLevelName(currentLevel);
~~~~
See [ofSetLogLevel(logLevel)](./ofLog.html#functions) for the log level values. 






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
_parameters: ofLogLevel logLevel_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets the logging level so only messages above a certain priority are shown. This is useful if you want see lots of messages when debugging, but then set a higher level so only warnings and errors appear for users.
logLevel values are (in order of priority):
	OF_LOG_VERBOSE
	OF_LOG_NOTICE
	OF_LOG_WARNING
	OF_LOG_ERROR
	OF_LOG_FATAL_ERROR
	OF_LOG_SILENT
Following priority, setting a log level of `OF_LOG_ERROR`, means only error & fatal error messages will be printed. Conversely, setting `OF_LOG_VERBOSE` means **all** log level messages will be printed.
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
The default log level is `OF_LOG_NOTICE`.
`OF_LOG_SILENT` is a special value which disables **all** messages.






<!----------------------------------------------------------------------------->

###void ofSetLogLevel(module, logLevel)

<!--
_syntax: ofSetLogLevel(module, logLevel)_
_name: ofSetLogLevel_
_returns: void_
_returns_description: _
_parameters: string module, ofLogLevel logLevel_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetLoggerChannel(loggerChannel)

<!--
_syntax: ofSetLoggerChannel(loggerChannel)_
_name: ofSetLoggerChannel_
_returns: void_
_returns_description: _
_parameters: ofPtr< ofBaseLoggerChannel > loggerChannel_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

