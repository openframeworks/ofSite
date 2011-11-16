<%inherit file="_templates/docs.mako" />
___ofFileLoggerChannel___
$$code(lang=c++)
None file
$$/code



$$code(lang=c++)
None ofFileLoggerChannel()
$$/code



$$code(lang=c++)
None ofFileLoggerChannel(const string &path, bool append)
$$/code



$$code(lang=c++)
None ~ofFileLoggerChannel()
$$/code



$$code(lang=c++)
void setFile(const string &path, bool append=false)
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



$$code(lang=c++)
void close()
$$/code



