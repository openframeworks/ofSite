#class ofFile

Example



Reference



Methods



//----------------------

##None ofFile()

_syntax: ofFile()_

_name: ofFile_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ofFile(string filePath, Mode mode=ReadOnly, bool binary=false)

_syntax: ofFile(string filePath, Mode mode=ReadOnly, bool binary=false)_

_name: ofFile_

_returns: None_

_parameters: string,  = ReadOnly, bool = False_



_description: _















//----------------------

##None ofFile(const ofFile &mom)

_syntax: ofFile(const ofFile &mom)_

_name: ofFile_

_returns: None_

_parameters: const _



_description: _















//----------------------

##ofFile operator=(const ofFile &mom)

_syntax: operator=(const ofFile &mom)_

_name: operator=_

_returns: ofFile_

_parameters: const _



_description: _















//----------------------

##None ~ofFile()

_syntax: ~ofFile()_

_name: ~ofFile_

_returns: None_

_parameters: _



_description: _















//----------------------

##bool open(string path, Mode mode=ReadOnly, bool binary=false)

_syntax: open(string path, Mode mode=ReadOnly, bool binary=false)_

_name: open_

_returns: bool_

_parameters: string,  = ReadOnly, bool = False_



_description: _















//----------------------

##bool changeMode(Mode mode, bool binary=false)

_syntax: changeMode(Mode mode, bool binary=false)_

_name: changeMode_

_returns: bool_

_parameters: bool = False_



_description: _















//----------------------

##void close()

_syntax: close()_

_name: close_

_returns: void_

_parameters: _



_description: _















//----------------------

##bool create()

_syntax: create()_

_name: create_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool exists() const 

_syntax: exists() const _

_name: exists_

_returns: bool_

_parameters: _



_description: _















//----------------------

##string path() const 

_syntax: path() const _

_name: path_

_returns: string_

_parameters: _



_description: _















//----------------------

##string getExtension()

_syntax: getExtension()_

_name: getExtension_

_returns: string_

_parameters: _



_description: _















//----------------------

##string getFileName()

_syntax: getFileName()_

_name: getFileName_

_returns: string_

_parameters: _



_description: _















//----------------------

##string getBaseName()

_syntax: getBaseName()_

_name: getBaseName_

_returns: string_

_parameters: _



_description: _















//----------------------

##string getEnclosingDirectory()

_syntax: getEnclosingDirectory()_

_name: getEnclosingDirectory_

_returns: string_

_parameters: _



_description: _















//----------------------

##bool canRead() const 

_syntax: canRead() const _

_name: canRead_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool canWrite() const 

_syntax: canWrite() const _

_name: canWrite_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool canExecute() const 

_syntax: canExecute() const _

_name: canExecute_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool isFile() const 

_syntax: isFile() const _

_name: isFile_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool isLink() const 

_syntax: isLink() const _

_name: isLink_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool isDirectory() const 

_syntax: isDirectory() const _

_name: isDirectory_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool isDevice() const 

_syntax: isDevice() const _

_name: isDevice_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool isHidden() const 

_syntax: isHidden() const _

_name: isHidden_

_returns: bool_

_parameters: _



_description: _















//----------------------

##void setWriteable(bool writeable)

_syntax: setWriteable(bool writeable)_

_name: setWriteable_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##void setReadOnly(bool readable)

_syntax: setReadOnly(bool readable)_

_name: setReadOnly_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##void setExecutable(bool executable)

_syntax: setExecutable(bool executable)_

_name: setExecutable_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##bool copyTo(string path, bool bRelativeToData=true, bool overwrite=false)

_syntax: copyTo(string path, bool bRelativeToData=true, bool overwrite=false)_

_name: copyTo_

_returns: bool_

_parameters: string, bool = True, bool = False_



_description: _















//----------------------

##bool moveTo(string path, bool bRelativeToData=true, bool overwrite=false)

_syntax: moveTo(string path, bool bRelativeToData=true, bool overwrite=false)_

_name: moveTo_

_returns: bool_

_parameters: string, bool = True, bool = False_



_description: _















//----------------------

##bool renameTo(string path, bool bRelativeToData=true, bool overwrite=false)

_syntax: renameTo(string path, bool bRelativeToData=true, bool overwrite=false)_

_name: renameTo_

_returns: bool_

_parameters: string, bool = True, bool = False_



_description: _















//----------------------

##bool remove(bool recursive)

_syntax: remove(bool recursive)_

_name: remove_

_returns: bool_

_parameters: bool_



_description: _















//----------------------

##uint64_t getSize() const 

_syntax: getSize() const _

_name: getSize_

_returns: uint64_t_

_parameters: _



_description: _















//----------------------

##Poco::File & getPocoFile()

_syntax: getPocoFile()_

_name: getPocoFile_

_returns: Poco::File &_

_parameters: _



_description: _















//----------------------

##bool operator==(const ofFile &file)

_syntax: operator==(const ofFile &file)_

_name: operator==_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator!=(const ofFile &file)

_syntax: operator!=(const ofFile &file)_

_name: operator!=_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator<(const ofFile &file)

_syntax: operator<(const ofFile &file)_

_name: operator<_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator<=(const ofFile &file)

_syntax: operator<=(const ofFile &file)_

_name: operator<=_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator>(const ofFile &file)

_syntax: operator>(const ofFile &file)_

_name: operator>_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator>=(const ofFile &file)

_syntax: operator>=(const ofFile &file)_

_name: operator>=_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##ofBuffer readToBuffer()

_syntax: readToBuffer()_

_name: readToBuffer_

_returns: ofBuffer_

_parameters: _



_description: _















//----------------------

##bool writeFromBuffer(ofBuffer &buffer)

_syntax: writeFromBuffer(ofBuffer &buffer)_

_name: writeFromBuffer_

_returns: bool_

_parameters: _



_description: _















//----------------------

##filebuf * getFileBuffer() const 

_syntax: getFileBuffer() const _

_name: getFileBuffer_

_returns: filebuf *_

_parameters: _



_description: _















//----------------------

##bool copyFromTo(string pathSrc, string pathDst, bool bRelativeToData=true, bool overwrite=false)

_syntax: copyFromTo(string pathSrc, string pathDst, bool bRelativeToData=true, bool overwrite=false)_

_name: copyFromTo_

_returns: bool_

_parameters: string, string, bool = True, bool = False_



_description: _















//----------------------

##bool moveFromTo(string pathSrc, string pathDst, bool bRelativeToData=true, bool overwrite=false)

_syntax: moveFromTo(string pathSrc, string pathDst, bool bRelativeToData=true, bool overwrite=false)_

_name: moveFromTo_

_returns: bool_

_parameters: string, string, bool = True, bool = False_



_description: _















//----------------------

##bool doesFileExist(string fPath, bool bRelativeToData=true)

_syntax: doesFileExist(string fPath, bool bRelativeToData=true)_

_name: doesFileExist_

_returns: bool_

_parameters: string, bool = True_



_description: _















//----------------------

##bool removeFile(string path, bool bRelativeToData=true)

_syntax: removeFile(string path, bool bRelativeToData=true)_

_name: removeFile_

_returns: bool_

_parameters: string, bool = True_



_description: _















//----------------------

##bool isWriteMode()

_syntax: isWriteMode()_

_name: isWriteMode_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool openStream(Mode _mode, bool binary)

_syntax: openStream(Mode _mode, bool binary)_

_name: openStream_

_returns: bool_

_parameters: bool_



_description: _















//----------------------

##void copyFrom(const ofFile &mom)

_syntax: copyFrom(const ofFile &mom)_

_name: copyFrom_

_returns: void_

_parameters: const _



_description: _















