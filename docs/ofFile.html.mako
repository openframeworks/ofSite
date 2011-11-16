<%inherit file="_templates/docs.mako" />
___ofFile___
$$code(lang=c++)
Poco::File myFile
$$/code



$$code(lang=c++)
None mode
$$/code



$$code(lang=c++)
None ofFile()
$$/code



$$code(lang=c++)
None ofFile(string filePath, Mode mode=ReadOnly, bool binary=false)
$$/code



$$code(lang=c++)
None ofFile(const ofFile &mom)
$$/code



$$code(lang=c++)
None operator=(const ofFile &mom)
$$/code



$$code(lang=c++)
None ~ofFile()
$$/code



$$code(lang=c++)
bool open(string path, Mode mode=ReadOnly, bool binary=false)
$$/code



$$code(lang=c++)
bool changeMode(Mode mode, bool binary=false)
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
bool create()
$$/code



$$code(lang=c++)
bool exists() const 
$$/code



$$code(lang=c++)
string path() const 
$$/code



$$code(lang=c++)
string getExtension() const 
$$/code



$$code(lang=c++)
string getFileName() const 
$$/code



$$code(lang=c++)
string getBaseName() const 
$$/code



$$code(lang=c++)
string getEnclosingDirectory() const 
$$/code



$$code(lang=c++)
string getAbsolutePath() const 
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
bool isFile() const 
$$/code



$$code(lang=c++)
bool isLink() const 
$$/code



$$code(lang=c++)
bool isDirectory() const 
$$/code



$$code(lang=c++)
bool isDevice() const 
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
bool copyTo(string path, bool bRelativeToData=true, bool overwrite=false)
$$/code



$$code(lang=c++)
bool moveTo(string path, bool bRelativeToData=true, bool overwrite=false)
$$/code



$$code(lang=c++)
bool renameTo(string path, bool bRelativeToData=true, bool overwrite=false)
$$/code



$$code(lang=c++)
bool remove(bool recursive=false)
$$/code



$$code(lang=c++)
uint64_t getSize() const 
$$/code



$$code(lang=c++)
Poco::File & getPocoFile()
$$/code



$$code(lang=c++)
bool operator==(const ofFile &file) const 
$$/code



$$code(lang=c++)
bool operator!=(const ofFile &file) const 
$$/code



$$code(lang=c++)
bool operator<(const ofFile &file) const 
$$/code



$$code(lang=c++)
bool operator<=(const ofFile &file) const 
$$/code



$$code(lang=c++)
bool operator>(const ofFile &file) const 
$$/code



$$code(lang=c++)
bool operator>=(const ofFile &file) const 
$$/code



$$code(lang=c++)
None readToBuffer()
$$/code



$$code(lang=c++)
bool writeFromBuffer(ofBuffer &buffer)
$$/code



$$code(lang=c++)
filebuf * getFileBuffer() const 
$$/code



$$code(lang=c++)
bool copyFromTo(string pathSrc, string pathDst, bool bRelativeToData=true, bool overwrite=false)
$$/code



$$code(lang=c++)
bool moveFromTo(string pathSrc, string pathDst, bool bRelativeToData=true, bool overwrite=false)
$$/code



$$code(lang=c++)
bool doesFileExist(string fPath, bool bRelativeToData=true)
$$/code



$$code(lang=c++)
bool removeFile(string path, bool bRelativeToData=true)
$$/code



$$code(lang=c++)
bool isWriteMode()
$$/code



$$code(lang=c++)
bool openStream(Mode _mode, bool binary)
$$/code



$$code(lang=c++)
void copyFrom(const ofFile &mom)
$$/code



