<%inherit file="_templates/docs.mako" />
___ofBuffer___
$$code(lang=c++)
vector< char > buffer
$$/code



$$code(lang=c++)
long nextLinePos
$$/code



$$code(lang=c++)
None ofBuffer()
$$/code



$$code(lang=c++)
None ofBuffer(const char *buffer, int size)
$$/code



$$code(lang=c++)
None ofBuffer(istream &stream)
$$/code



$$code(lang=c++)
None ofBuffer(const ofBuffer &buffer_)
$$/code



$$code(lang=c++)
None ~ofBuffer()
$$/code



$$code(lang=c++)
void set(const char *_buffer, int _size)
$$/code



$$code(lang=c++)
bool set(istream &stream)
$$/code



$$code(lang=c++)
bool writeTo(ostream &stream) const 
$$/code



$$code(lang=c++)
void clear()
$$/code



$$code(lang=c++)
void allocate(long _size)
$$/code



$$code(lang=c++)
char * getBinaryBuffer()
$$/code



$$code(lang=c++)
const char * getBinaryBuffer() const 
$$/code



$$code(lang=c++)
string getText() const 
$$/code



$$code(lang=c++)
None operator string() const 
$$/code



$$code(lang=c++)
long size() const 
$$/code



$$code(lang=c++)
string getNextLine()
$$/code



$$code(lang=c++)
string getFirstLine()
$$/code



$$code(lang=c++)
bool isLastLine()
$$/code



$$code(lang=c++)
void resetLineReader()
$$/code



$$code(lang=c++)
$$/code



$$code(lang=c++)
$$/code



