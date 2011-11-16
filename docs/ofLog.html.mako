<%inherit file="_templates/docs.mako" />
___ofLog___
$$code(lang=c++)
None level
$$/code



$$code(lang=c++)
bool bPrinted
$$/code



$$code(lang=c++)
string module
$$/code



$$code(lang=c++)
std::ostringstream message
$$/code



$$code(lang=c++)
None channel
$$/code



$$code(lang=c++)
None ofLog()
$$/code



$$code(lang=c++)
None ofLog(ofLogLevel logLevel)
$$/code



$$code(lang=c++)
None ofLog(ofLogLevel logLevel, const string &message)
$$/code



$$code(lang=c++)
None ofLog(ofLogLevel logLevel, const char *format,...)
$$/code



$$code(lang=c++)
None ~ofLog()
$$/code



$$code(lang=c++)
None operator<<(const T &value)
$$/code



$$code(lang=c++)
None operator<<(std::ostream &(*func)(std::ostream &))
$$/code



$$code(lang=c++)
void setChannel(ofPtr< ofBaseLoggerChannel > channel)
$$/code



$$code(lang=c++)
void _log(ofLogLevel level, const string &module, const string &message)
$$/code



$$code(lang=c++)
bool checkLog(ofLogLevel level, const string &module)
$$/code



$$code(lang=c++)
None ofLog(ofLog const &)
$$/code



$$code(lang=c++)
None operator=(ofLog &from)
$$/code



