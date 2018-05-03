#class ofBaseLoggerChannel


<!--
_visible: True_
_advanced: True_
_istemplated: False_
_extends: _
-->

##InlineDescription

The base class representing a logger channel.

Users can derive their own logging channels from ofBaseLoggerChannel or use
default channels.





##Description





##Methods



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

Log a message.

Parameters:
level The log level.
module The target module.
message The log message.





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

Log a message.

Parameters:
level The log level.
module The target module.
format The printf-style format string.
args the list of printf-style arguments.





_description: _







<!----------------------------------------------------------------------------->

### ~ofBaseLoggerChannel()

<!--
_syntax: ~ofBaseLoggerChannel()_
_name: ~ofBaseLoggerChannel_
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

Destroy the channel.





_description: _







<!----------------------------------------------------------------------------->

##Variables



