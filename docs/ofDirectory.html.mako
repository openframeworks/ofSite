<%inherit file="_templates/docs.mako" />
___ofDirectory___
$$code(lang=c++)
Poco::File myDir
$$/code



$$code(lang=c++)
string originalDirectory
$$/code



$$code(lang=c++)
vector< string > extensions
$$/code



$$code(lang=c++)
vector<  files
$$/code



$$code(lang=c++)
bool showHidden
$$/code



$$code(lang=c++)
None ofDirectory()
$$/code



$$code(lang=c++)
None ofDirectory(string path)
$$/code



$$code(lang=c++)
void open(string path)
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
bool create(bool recursive=false)
$$/code



$$code(lang=c++)
bool exists() const 
$$/code



$$code(lang=c++)
string path() const 
$$/code



$$code(lang=c++)
bool canRead() const 
$$/code



$$code(lang=c++)
bool canWrite() const 
$$/code



$$code(lang=c++)
bool canExecute() const 
$$/code



$$code(lang=c++)
bool isDirectory() const 
$$/code



$$code(lang=c++)
bool isHidden() const 
$$/code



$$code(lang=c++)
void setWriteable(bool writeable)
$$/code



$$code(lang=c++)
void setReadOnly(bool readable)
$$/code



$$code(lang=c++)
void setExecutable(bool executable)
$$/code



$$code(lang=c++)
void setShowHidden(bool showHidden)
$$/code



$$code(lang=c++)
bool copyTo(string path, bool bRelativeToData=true, bool overwrite=false)
$$/code



$$code(lang=c++)
bool moveTo(string path, bool bRelativeToData=true, bool overwrite=false)
$$/code



$$code(lang=c++)
bool renameTo(string path, bool bRelativeToData=true, bool overwrite=false)
$$/code



$$code(lang=c++)
bool remove(bool recursive)
$$/code



$$code(lang=c++)
void allowExt(string extension)
$$/code



$$code(lang=c++)
int listDir(string path)
$$/code



$$code(lang=c++)
int listDir()
$$/code



$$code(lang=c++)
string getName(unsigned int position)
$$/code



$$code(lang=c++)
string getPath(unsigned int position)
$$/code



$$code(lang=c++)
None getFile(unsigned int position, ofFile::Mode mode=ofFile::Reference, bool binary=false)
$$/code



$$code(lang=c++)
vector<  getFiles()
$$/code



$$code(lang=c++)
None operator[](unsigned int position)
$$/code



$$code(lang=c++)
bool getShowHidden()
$$/code



$$code(lang=c++)
void reset()
$$/code



$$code(lang=c++)
void sort()
$$/code



$$code(lang=c++)
unsigned int size()
$$/code



$$code(lang=c++)
int numFiles()
$$/code



$$code(lang=c++)
Poco::File & getPocoFile()
$$/code



$$code(lang=c++)
bool operator==(const ofDirectory &dir)
$$/code



$$code(lang=c++)
bool operator!=(const ofDirectory &dir)
$$/code



$$code(lang=c++)
bool operator<(const ofDirectory &dir)
$$/code



$$code(lang=c++)
bool operator<=(const ofDirectory &dir)
$$/code



$$code(lang=c++)
bool operator>(const ofDirectory &dir)
$$/code



$$code(lang=c++)
bool operator>=(const ofDirectory &dir)
$$/code



$$code(lang=c++)
bool createDirectory(string dirPath, bool bRelativeToData=true, bool recursive=false)
$$/code



$$code(lang=c++)
bool isDirectoryEmpty(string dirPath, bool bRelativeToData=true)
$$/code



$$code(lang=c++)
bool doesDirectoryExist(string dirPath, bool bRelativeToData=true)
$$/code



$$code(lang=c++)
bool removeDirectory(string path, bool deleteIfNotEmpty, bool bRelativeToData=true)
$$/code



