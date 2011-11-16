<%inherit file="_templates/docs.mako" />
___ofBaseLoggerChannel___
$$code(lang=c++)
None ~ofBaseLoggerChannel()
$$/code



$$code(lang=c++)
void log(ofLogLevel level, const string &module, const string &message)=0
$$/code



$$code(lang=c++)
void log(ofLogLevel logLevel, const string &module, const char *format,...)=0
$$/code



$$code(lang=c++)
void log(ofLogLevel logLevel, const string &module, const char *format, va_list args)=0
$$/code



