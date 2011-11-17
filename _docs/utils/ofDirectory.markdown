#class ofDirectory

Example



Reference



Methods



//----------------------

##void open(string path)

_syntax: open(string path)_

_name: open_

_returns: void_

_parameters: string_



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

##bool isDirectory() const 

_syntax: isDirectory() const _

_name: isDirectory_

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

##void allowExt(string extension)

_syntax: allowExt(string extension)_

_name: allowExt_

_returns: void_

_parameters: string_



_description: _















//----------------------

##int listDir(string path, bool absolute=false)

_syntax: listDir(string path, bool absolute=false)_

_name: listDir_

_returns: int_

_parameters: string, bool = False_



_description: _















//----------------------

##int listDir()

_syntax: listDir()_

_name: listDir_

_returns: int_

_parameters: _



_description: _















//----------------------

##string getName(unsigned int position)

_syntax: getName(unsigned int position)_

_name: getName_

_returns: string_

_parameters: unsigned int_



_description: _















//----------------------

##string getPath(unsigned int position)

_syntax: getPath(unsigned int position)_

_name: getPath_

_returns: string_

_parameters: unsigned int_



_description: _















//----------------------

##ofFile getFile(unsigned int position, ofFile::Mode mode=ofFile::Reference, bool binary=false)

_syntax: getFile(unsigned int position, ofFile::Mode mode=ofFile::Reference, bool binary=false)_

_name: getFile_

_returns: ofFile_

_parameters: unsigned int,  = ofFile::Reference, bool = False_



_description: _















//----------------------

##void reset()

_syntax: reset()_

_name: reset_

_returns: void_

_parameters: _



_description: _















//----------------------

##void sort()

_syntax: sort()_

_name: sort_

_returns: void_

_parameters: _



_description: _















//----------------------

##unsigned int size()

_syntax: size()_

_name: size_

_returns: unsigned int_

_parameters: _



_description: _















//----------------------

##int numFiles()

_syntax: numFiles()_

_name: numFiles_

_returns: int_

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

##bool operator==(const ofDirectory &dir)

_syntax: operator==(const ofDirectory &dir)_

_name: operator==_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator!=(const ofDirectory &dir)

_syntax: operator!=(const ofDirectory &dir)_

_name: operator!=_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator<(const ofDirectory &dir)

_syntax: operator<(const ofDirectory &dir)_

_name: operator<_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator<=(const ofDirectory &dir)

_syntax: operator<=(const ofDirectory &dir)_

_name: operator<=_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator>(const ofDirectory &dir)

_syntax: operator>(const ofDirectory &dir)_

_name: operator>_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator>=(const ofDirectory &dir)

_syntax: operator>=(const ofDirectory &dir)_

_name: operator>=_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool createDirectory(string dirPath, bool bRelativeToData=true, bool recursive=false)

_syntax: createDirectory(string dirPath, bool bRelativeToData=true, bool recursive=false)_

_name: createDirectory_

_returns: bool_

_parameters: string, bool = True, bool = False_



_description: _















//----------------------

##bool isDirectoryEmpty(string dirPath, bool bRelativeToData=true)

_syntax: isDirectoryEmpty(string dirPath, bool bRelativeToData=true)_

_name: isDirectoryEmpty_

_returns: bool_

_parameters: string, bool = True_



_description: _















//----------------------

##bool doesDirectoryExist(string dirPath, bool bRelativeToData=true)

_syntax: doesDirectoryExist(string dirPath, bool bRelativeToData=true)_

_name: doesDirectoryExist_

_returns: bool_

_parameters: string, bool = True_



_description: _















//----------------------

##bool removeDirectory(string path, bool deleteIfNotEmpty, bool bRelativeToData=true)

_syntax: removeDirectory(string path, bool deleteIfNotEmpty, bool bRelativeToData=true)_

_name: removeDirectory_

_returns: bool_

_parameters: string, bool, bool = True_



_description: _















