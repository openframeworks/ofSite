#class ofFileLoggerChannel


<!--
_visible: True_
_advanced: True_
_istemplated: False_
_extends: ofBaseLoggerChannel_
-->

##InlineDescription

A logger channel that logs its messages to a log file.





##Description





##Methods



###void close()

<!--
_syntax: close()_
_name: close_
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

CLose the log file.





_description: _







<!----------------------------------------------------------------------------->

###void log(level, &module, &message)

<!--
_syntax: log(level, &module, &message)_
_name: log_
_returns: void_
_returns_description: _
_parameters: ofLogLevel level, const string &module, const string &message_
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

###void log(level, &module, *format, args)

<!--
_syntax: log(level, &module, *format, args)_
_name: log_
_returns: void_
_returns_description: _
_parameters: ofLogLevel level, const string &module, const char *format, va_list args_
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

### ofFileLoggerChannel()

<!--
_syntax: ofFileLoggerChannel()_
_name: ofFileLoggerChannel_
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

Create an ofFileLoggerChannel.





_description: _







<!----------------------------------------------------------------------------->

### ofFileLoggerChannel(&path, append)

<!--
_syntax: ofFileLoggerChannel(&path, append)_
_name: ofFileLoggerChannel_
_returns: _
_returns_description: _
_parameters: const string &path, bool append_
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

Create an ofFileLoggerChannel with parameters.

Parameters:
path The file path for the log file.
append True if the log data should be added to an existing file.





_description: _







<!----------------------------------------------------------------------------->

###void setFile(&path, append = false)

<!--
_syntax: setFile(&path, append = false)_
_name: setFile_
_returns: void_
_returns_description: _
_parameters: const string &path, bool append=false_
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

Set the log file.

Parameters:
path The file path for the log file.
append True if the log data should be added to an existing file.





_description: _







<!----------------------------------------------------------------------------->

### ~ofFileLoggerChannel()

<!--
_syntax: ~ofFileLoggerChannel()_
_name: ~ofFileLoggerChannel_
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

Destroy the file logger channel.





_description: _







<!----------------------------------------------------------------------------->

##Variables



###ofFile file

<!--
_name: file_
_type: ofFile_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< The location of the log file.





_description: _







<!----------------------------------------------------------------------------->

