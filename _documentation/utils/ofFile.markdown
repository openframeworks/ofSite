#class ofFile


##Description


ofFile wraps functionality for opening, reading, writing, and modifying files on your computer.

~~~~.cpp

fFile file;

file.open(ofToDataPath("temp.xml"), ofFile::ReadWrite, false);
ofBuffer buff = file.readToBuffer();
~~~~

You can do the same with the bufferFromFile method:

~~~~.cpp
ofBuffer ofBufferFromFile(const string & path, bool binary=false);
~~~~

To write a buffer to a file, use ofBufferToFile()

~~~~.cpp
ofBuffer dataBuffer;
// fill the buffer with something important
bool fileWritten = ofBufferToFile("data.dat", dataBuffer); 

~~~~

You can also compare files using the ==, !=, <, >, <=, >= operators. This is done so that the files can be stored in std::containers and sorted.

~~~~.cpp    
ofFile file(ofToDataPath("foo.xml"));
ofFile file2(ofToDataPath("foo2.xml"));    
cout << "is foo less than foo2? " << ((file < file2) ? "true" : "false") << endl;
~~~~





##Methods



###bool canExecute()

<!--
_syntax: canExecute()_
_name: canExecute_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Whether the file is an executable file.







<!----------------------------------------------------------------------------->

###bool canRead()

<!--
_syntax: canRead()_
_name: canRead_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Whether the file can be read or not.







<!----------------------------------------------------------------------------->

###bool canWrite()

<!--
_syntax: canWrite()_
_name: canWrite_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Whether the file can be written to or not.







<!----------------------------------------------------------------------------->

###bool changeMode(mode, binary = false)

<!--
_syntax: changeMode(mode, binary = false)_
_name: changeMode_
_returns: bool_
_returns_description: _
_parameters: Mode mode, bool binary=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Changes the mode of the file from the current mode to the one passed in.







<!----------------------------------------------------------------------------->

###void close()

<!--
_syntax: close()_
_name: close_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Closes the ofFile instance.







<!----------------------------------------------------------------------------->

###void copyFrom(&mom)

<!--
_syntax: copyFrom(&mom)_
_name: copyFrom_
_returns: void_
_returns_description: _
_parameters: const ofFile &mom_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool copyFromTo(pathSrc, pathDst, bRelativeToData = true, overwrite = false)

<!--
_syntax: copyFromTo(pathSrc, pathDst, bRelativeToData = true, overwrite = false)_
_name: copyFromTo_
_returns: bool_
_returns_description: _
_parameters: string pathSrc, string pathDst, bool bRelativeToData=true, bool overwrite=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool copyTo(path, bRelativeToData = true, overwrite = false)

<!--
_syntax: copyTo(path, bRelativeToData = true, overwrite = false)_
_name: copyTo_
_returns: bool_
_returns_description: _
_parameters: string path, bool bRelativeToData=true, bool overwrite=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Copy the file from its current location into the path parameter. This is similar to the cp command.







<!----------------------------------------------------------------------------->

###bool create()

<!--
_syntax: create()_
_name: create_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


If the ofFile contains a file path that doesn't exist yet, calling create() generates the file.

~~~~.cpp
ofFile newFile(ofToDataPath("temp.txt"), ofFile::Write); //file doesn't exist yet
newFile.create(); // now file doesn't exist 
~~~~







<!----------------------------------------------------------------------------->

###bool doesFileExist(fPath, bRelativeToData = true)

<!--
_syntax: doesFileExist(fPath, bRelativeToData = true)_
_name: doesFileExist_
_returns: bool_
_returns_description: _
_parameters: string fPath, bool bRelativeToData=true_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool exists()

<!--
_syntax: exists()_
_name: exists_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Tests whether a file path exists or not.







<!----------------------------------------------------------------------------->

###string getAbsolutePath()

<!--
_syntax: getAbsolutePath()_
_name: getAbsolutePath_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the absolute path to the file, on OSX this will be something like /Users/name/openFrameworks/apps/app/data/file.xml on Windows it will something like C:\Documents\openframeworks\apps\app\data\file.xml







<!----------------------------------------------------------------------------->

###string getBaseName()

<!--
_syntax: getBaseName()_
_name: getBaseName_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###string getEnclosingDirectory()

<!--
_syntax: getEnclosingDirectory()_
_name: getEnclosingDirectory_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the relative path to the directory containing the file, for instance:

~~~~.cpp

ofFile file(ofToDataPath("foo.xml"));
cout << file.getEnclosingDirectory(); // prints "../../../data/xml"

~~~~







<!----------------------------------------------------------------------------->

###string getExtension()

<!--
_syntax: getExtension()_
_name: getExtension_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the extension of the file.

~~~~.cpp
    ofFile file(ofToDataPath("foo.xml"));
    cout << file.getExtension();
~~~~







<!----------------------------------------------------------------------------->

###filebuf * getFileBuffer()

<!--
_syntax: getFileBuffer()_
_name: getFileBuffer_
_returns: filebuf *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###string getFileName()

<!--
_syntax: getFileName()_
_name: getFileName_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the actual file name.







<!----------------------------------------------------------------------------->

###Poco::File & getPocoFile()

<!--
_syntax: getPocoFile()_
_name: getPocoFile_
_returns: Poco::File &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the poco File instance that the ofFile wraps.







<!----------------------------------------------------------------------------->

###uint64_t getSize()

<!--
_syntax: getSize()_
_name: getSize_
_returns: uint64_t_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Gets the size of the file at the file path.







<!----------------------------------------------------------------------------->

###bool isDevice()

<!--
_syntax: isDevice()_
_name: isDevice_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns whether the file path points to a mounted device.







<!----------------------------------------------------------------------------->

###bool isDirectory()

<!--
_syntax: isDirectory()_
_name: isDirectory_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns whether the file path points to a directory or not.







<!----------------------------------------------------------------------------->

###bool isFile()

<!--
_syntax: isFile()_
_name: isFile_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Whether the file path points to a file (it could also be a directory)







<!----------------------------------------------------------------------------->

###bool isHidden()

<!--
_syntax: isHidden()_
_name: isHidden_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns whether the file path points to a hidden file or not.







<!----------------------------------------------------------------------------->

###bool isLink()

<!--
_syntax: isLink()_
_name: isLink_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns whether file is an alias or not.







<!----------------------------------------------------------------------------->

###bool isWriteMode()

<!--
_syntax: isWriteMode()_
_name: isWriteMode_
_returns: bool_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool moveFromTo(pathSrc, pathDst, bRelativeToData = true, overwrite = false)

<!--
_syntax: moveFromTo(pathSrc, pathDst, bRelativeToData = true, overwrite = false)_
_name: moveFromTo_
_returns: bool_
_returns_description: _
_parameters: string pathSrc, string pathDst, bool bRelativeToData=true, bool overwrite=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool moveTo(path, bRelativeToData = true, overwrite = false)

<!--
_syntax: moveTo(path, bRelativeToData = true, overwrite = false)_
_name: moveTo_
_returns: bool_
_returns_description: _
_parameters: string path, bool bRelativeToData=true, bool overwrite=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Moves the file to the location specified by path. This is similar to the mv command.







<!----------------------------------------------------------------------------->

### ofFile()

<!--
_syntax: ofFile()_
_name: ofFile_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Creates an empty ofFile.







<!----------------------------------------------------------------------------->

### ofFile(filePath, mode = ReadOnly, binary = false)

<!--
_syntax: ofFile(filePath, mode = ReadOnly, binary = false)_
_name: ofFile_
_returns: _
_returns_description: _
_parameters: string filePath, Mode mode=ReadOnly, bool binary=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Creates an ofFile using the file path and mode specified. Note that if the file doesn't actually exist on the file system this doesn't actually create file until you call create().

~~~~.cpp
ofFile fileToRead(ofToDataPath("dictionary.txt")); // a file that exists
~~~~

~~~~.cpp
ofFile newFile(ofToDataPath("temp.txt"), ofFile::Write); //file doesn't exist yet
newFile.create(); // now file doesn't exist 
~~~~







<!----------------------------------------------------------------------------->

### ofFile(&mom)

<!--
_syntax: ofFile(&mom)_
_name: ofFile_
_returns: _
_returns_description: _
_parameters: const ofFile &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Copy constructor for copying one ofFile into another 







<!----------------------------------------------------------------------------->

###bool open(path, mode = ReadOnly, binary = false)

<!--
_syntax: open(path, mode = ReadOnly, binary = false)_
_name: open_
_returns: bool_
_returns_description: _
_parameters: string path, Mode mode=ReadOnly, bool binary=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Opens the file with the file mode, either Reference, ReadOnly, WriteOnly, ReadWrite, Append







<!----------------------------------------------------------------------------->

###bool openStream(_mode, binary)

<!--
_syntax: openStream(_mode, binary)_
_name: openStream_
_returns: bool_
_returns_description: _
_parameters: Mode _mode, bool binary_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool operator!=(&file)

<!--
_syntax: operator!=(&file)_
_name: operator!=_
_returns: bool_
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Tests whether a file path is not equal to the file path of the ofFile on the right hand side. 







<!----------------------------------------------------------------------------->

###bool operator<(&file)

<!--
_syntax: operator<(&file)_
_name: operator<_
_returns: bool_
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Tests whether a file path is greater than the file path of the ofFile on the right hand side. 







<!----------------------------------------------------------------------------->

###bool operator<=(&file)

<!--
_syntax: operator<=(&file)_
_name: operator<=_
_returns: bool_
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Tests whether a file path is lesser or equal than the file path of the ofFile on the right hand side.







<!----------------------------------------------------------------------------->

###ofFile operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofFile_
_returns_description: _
_parameters: const ofFile &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Equals operator which allows you to do this:

~~~~.cpp
ofFile f1 = f2;
~~~~







<!----------------------------------------------------------------------------->

###bool operator==(&file)

<!--
_syntax: operator==(&file)_
_name: operator==_
_returns: bool_
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Tests whether a file path is equal to the file path of the  ofFile on the right hand side. 







<!----------------------------------------------------------------------------->

###bool operator>(&file)

<!--
_syntax: operator>(&file)_
_name: operator>_
_returns: bool_
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Tests whether a file path is greater than the file path of the ofFile on the right hand side.







<!----------------------------------------------------------------------------->

###bool operator>=(&file)

<!--
_syntax: operator>=(&file)_
_name: operator>=_
_returns: bool_
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Tests whether a file path is greater than or equal to the file path of the ofFile on the right hand side.
 







<!----------------------------------------------------------------------------->

###string path()

<!--
_syntax: path()_
_name: path_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the string of the ofFile file path.







<!----------------------------------------------------------------------------->

###ofBuffer readToBuffer()

<!--
_syntax: readToBuffer()_
_name: readToBuffer_
_returns: ofBuffer_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Read the file into an ofBuffer object and return it.







<!----------------------------------------------------------------------------->

###bool remove(recursive = false)

<!--
_syntax: remove(recursive = false)_
_name: remove_
_returns: bool_
_returns_description: _
_parameters: bool recursive=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


deletes a file or folder, be careful as this is not undo-able. 







<!----------------------------------------------------------------------------->

###bool removeFile(path, bRelativeToData = true)

<!--
_syntax: removeFile(path, bRelativeToData = true)_
_name: removeFile_
_returns: bool_
_returns_description: _
_parameters: string path, bool bRelativeToData=true_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool renameTo(path, bRelativeToData = true, overwrite = false)

<!--
_syntax: renameTo(path, bRelativeToData = true, overwrite = false)_
_name: renameTo_
_returns: bool_
_returns_description: _
_parameters: string path, bool bRelativeToData=true, bool overwrite=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Renames the file with the new file name. If you specify a different path then this will move the file as well.







<!----------------------------------------------------------------------------->

###void setExecutable(executable)

<!--
_syntax: setExecutable(executable)_
_name: setExecutable_
_returns: void_
_returns_description: _
_parameters: bool executable_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Toggles the file as executable or not executable.







<!----------------------------------------------------------------------------->

###void setReadOnly(readable)

<!--
_syntax: setReadOnly(readable)_
_name: setReadOnly_
_returns: void_
_returns_description: _
_parameters: bool readable_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Toggles the file as readable or not readable.







<!----------------------------------------------------------------------------->

###void setWriteable(writeable)

<!--
_syntax: setWriteable(writeable)_
_name: setWriteable_
_returns: void_
_returns_description: _
_parameters: bool writeable_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Toggles the file as writeable or not writeable.







<!----------------------------------------------------------------------------->

###bool writeFromBuffer(&buffer)

<!--
_syntax: writeFromBuffer(&buffer)_
_name: writeFromBuffer_
_returns: bool_
_returns_description: _
_parameters: ofBuffer &buffer_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Write an ofBuffer instance to the file path.







<!----------------------------------------------------------------------------->

### ~ofFile()

<!--
_syntax: ~ofFile()_
_name: ~ofFile_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Destructor







<!----------------------------------------------------------------------------->

##Variables



###Mode mode

<!--
_name: mode_
_type: Mode_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###Poco myFile

<!--
_name: myFile_
_type: Poco_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

