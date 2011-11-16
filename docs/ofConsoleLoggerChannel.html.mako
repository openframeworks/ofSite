<%inherit file="_templates/docs.mako" />
___ofConsoleLoggerChannel___
$$code(lang=c++)
None ~ofConsoleLoggerChannel()
$$/code



$$code(lang=c++)
void log(ofLogLevel level, const string &module, const string &message)
$$/code



$$code(lang=c++)
void log(ofLogLevel logLevel, const string &module, const char *format,...)
$$/code



$$code(lang=c++)
void log(ofLogLevel logLevel, const string &module, const char *format, va_list args)
$$/code



