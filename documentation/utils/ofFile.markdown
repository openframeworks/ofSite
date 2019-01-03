#class ofFile


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: std::fstream_
-->

##InlineDescription



path to a file or directory

inherits from an fstream so you can read/write using the stream operators
once a file path has been opened





##Description

ofFile wraps functionality for opening, reading, writing, and modifying files on your computer.

~~~~{.cpp}

ofFile file;

file.open(ofToDataPath("temp.xml"), ofFile::ReadWrite, false);
ofBuffer buff = file.readToBuffer();
~~~~

You can do the same with the bufferFromFile method:

~~~~{.cpp}
ofBuffer ofBufferFromFile(const string & path, bool binary=false);
~~~~

To write a buffer to a file, use ofBufferToFile()

~~~~{.cpp}
ofBuffer dataBuffer;
// fill the buffer with something important
bool fileWritten = ofBufferToFile("data.dat", dataBuffer); 

~~~~

You can also compare files using the ==, !=, <, >, <=, >= operators. This is done so that the files can be stored in std::containers and sorted.

~~~~{.cpp}    
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Check if the current path is executable.


**Returns**: true if executable





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Check if the current path is readable.


**Returns**: true if readable





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Check if the current path is writable.


**Returns**: true if writable





_description: _

Whether the file can be written to or not.





<!----------------------------------------------------------------------------->

###bool changeMode(mode, binary = true)

<!--
_syntax: changeMode(mode, binary = true)_
_name: changeMode_
_returns: bool_
_returns_description: _
_parameters: ofFile::Mode mode, bool binary=true_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Reopen the current file path with a different access mode.


**Parameters:**

mode file access mode depending on how you plan to use the file
(read only, read write, etc)

binary set to false if you are reading a text file & want lines
split at endline characters automatically

**Returns**: true if the file was reopened with the new access mode(s).





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Close a currently open file.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool copyFromTo(&pathSrc, &pathDst, bRelativeToData = true, overwrite = false)

<!--
_syntax: copyFromTo(&pathSrc, &pathDst, bRelativeToData = true, overwrite = false)_
_name: copyFromTo_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &pathSrc, const filesystem::path &pathDst, bool bRelativeToData=true, bool overwrite=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Copy source path to destination path.

Copies relative to the data path & does *not* overwrite by default
assumes the source & destination path is in the data directory.


**Parameters:**

pathSrc source file or directory path

pathDst destination file or directory path

bRelativeToData set to false if you are working with paths that
are *not* in the data directory

overwrite set to true if you want to overwrite the file or
directory at the new path

**Returns**: true if the copy was successful





_description: _







<!----------------------------------------------------------------------------->

###bool copyTo(&path, bRelativeToData = true, overwrite = false)

<!--
_syntax: copyTo(&path, bRelativeToData = true, overwrite = false)_
_name: copyTo_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &path, bool bRelativeToData=true, bool overwrite=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Copy the current file or directory path to a new path.

Copies relative to the data path & does *not* overwrite by default
does not change the current path & assumes the new path is in the data
folder.


**Parameters:**

path destination file or directory path

bRelativeToData set to false if you are working with paths that
are *not* in the data folder

overwrite set to true if you want to overwrite the file or
directory at the new path

**Returns**: true if the copy was successful





_description: _

Copy the file from its current location into the path parameter. This is similar to the cp command.





<!----------------------------------------------------------------------------->

###bool create(&path)

<!--
_syntax: create(&path)_
_name: create_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &path_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create a file at a given path.

Creates as a write only binary file by default.


**Parameters:**

path file path

**Returns**: true if the file was created





_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create a file at the current path.

Creates as a write only binary file by default.


**Returns**: true if the file was created





_description: _

If the ofFile contains a file path that doesn't exist yet, calling create() generates the file.

~~~~{.cpp}
ofFile newFile(ofToDataPath("temp.txt"), ofFile::Write); // file doesn't exist yet
newFile.create(); // now file exists
~~~~





<!----------------------------------------------------------------------------->

###bool doesFileExist(&fPath, bRelativeToData = true)

<!--
_syntax: doesFileExist(&fPath, bRelativeToData = true)_
_name: doesFileExist_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &fPath, bool bRelativeToData=true_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Check if a file or directory exists at a given path.


**Parameters:**

fPath file path

bRelativeToData set to false if you are working with paths that
are *not* in the data folder and want the direct path without relative
"../../"

**Returns**: true if a file or directory exists





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Check if a file exists at the current path.


**Returns**: true if the file exists





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\biref Get the absolute, full path of the file,
ie. "images" -> "/Users/mickey/of/apps/myApps/Donald/bin/data/images".


**Returns**: current path as an absolute path





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\biref Get the current path without its last component,
ie. "images/duck.jpg" -> "images" and
"images/some/folder" -> "images/some".


**Returns**: current path basename





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the enclosing parent directory of a path,
ie. "images/duck.jpg" -> "images", assumes the path is in the data
directory.


**Returns**: current path's enclosing directory





_description: _

Returns the relative path to the directory containing the file, for instance:

~~~~{.cpp}

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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the current path without its extension,
ie. "duck.jpg" ->"duck".


**Returns**: current path file extension





_description: _

Returns the extension of the file.

~~~~{.cpp}
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Read the entire contents of the currently opened file into an
output stream.

This is basically an easy to use equivalent to rdbuf():
ie. ofLogNotice() << file.getFileBuffer();
    write_file << file.getFileBuffer();

\return output stream





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the filename of the current path by stripping the parent
directories, ie. "images/duck.jpg"  -> "duck.jpg".


**Returns**: current path filename





_description: _

Returns the actual file name.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the size of the file at the current file path


**Returns**: size in bytes





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Check if the current path is a device file.

Works on Mac & Linux which can represent devices as files, however
always returns false on Windows.


**Returns**: true if a device file





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Check if the current path is a directory and not a file.


**Returns**: true if a directory





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Check if the current path is a file and not a directory.


**Returns**: true if a file





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Check if the current path is hidden.

Works on Mac & Linux which denote hidden files by prepending a period
to the filename -> ".hello", however always returns false on Windows.


**Returns**: true if hidden





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Check if the current path is a system link to another file or
directory.


**Returns**: true if a system link





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool moveFromTo(&pathSrc, &pathDst, bRelativeToData = true, overwrite = false)

<!--
_syntax: moveFromTo(&pathSrc, &pathDst, bRelativeToData = true, overwrite = false)_
_name: moveFromTo_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &pathSrc, const filesystem::path &pathDst, bool bRelativeToData=true, bool overwrite=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Move source path to destination path.

Moves relative to the data path & does *not* overwrite by default
assumes the source & destination path is in the data directory.


**Parameters:**

pathSrc source file or directory path

pathDst destination file or directory path

bRelativeToData set to false if you are working with paths that
are *not* in the data folder

overwrite set to true if you want to overwrite the file or
directory at the new path

**Warning**: be careful with slashes here, appending a slash when moving a
folder may cause mad headaches in OSX

**Returns**: true if the move was successful





_description: _







<!----------------------------------------------------------------------------->

###bool moveTo(&path, bRelativeToData = true, overwrite = false)

<!--
_syntax: moveTo(&path, bRelativeToData = true, overwrite = false)_
_name: moveTo_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &path, bool bRelativeToData=true, bool overwrite=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Move the current file or directory path to a new path.

Moves relative to the data path & does *not* overwrite by default
does not change the current path & assumes the new path is in the data
folder.


**Parameters:**

path destination file or directory path

bRelativeToData set to false if you are working with paths that
are *not* in the data folder

overwrite set to true if you want to overwrite the file or
directory at the new path

**Returns**: true if the copy was successful





_description: _

Moves the file to the location specified by path. This is similar to the mv command.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create a new file path using the same path & settings of another
file.


**Parameters:**

mom ofFile instance source





_description: _

Copy constructor for copying one ofFile into another 





<!----------------------------------------------------------------------------->

### ofFile(&path, mode = ReadOnly, binary = true)

<!--
_syntax: ofFile(&path, mode = ReadOnly, binary = true)_
_name: ofFile_
_returns: _
_returns_description: _
_parameters: const filesystem::path &path, ofFile::Mode mode=ReadOnly, bool binary=true_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create a new ofFile instance and attempt to open the path as a
file.

Opens as a binary file with read only access by default.


**Parameters:**

path file path

mode file access mode depending on how you plan to use the file
(read only, read write, etc)

binary set to false if you are working with a text file & want
lines split at endline characters automatically





_description: _

Creates an ofFile using the file path and mode specified. Note that if the file doesn't actually exist on the file system this doesn't actually create file until you call create().

~~~~{.cpp}
ofFile fileToRead(ofToDataPath("dictionary.txt")); // a file that exists
~~~~

~~~~{.cpp}
ofFile newFile(ofToDataPath("temp.txt"), ofFile::Write); // file doesn't exist yet
newFile.create(); // now file exists 
~~~~





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create an ofFile instance.

Does not refer to a specific file until you either open a file or create
a file or directory path.





_description: _

Creates an empty ofFile.





<!----------------------------------------------------------------------------->

###bool open(&path, mode = ReadOnly, binary = true)

<!--
_syntax: open(&path, mode = ReadOnly, binary = true)_
_name: open_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &path, ofFile::Mode mode=ReadOnly, bool binary=true_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Open the path as a file.

Opens as a text file with read only access by default.


**Parameters:**

path file path

mode file access mode depending on how you plan to use the file
(read only, read write, etc)

binary set to false if you are reading a text file & want lines
split at endline characters automatically

**Returns**: true if the path was opened





_description: _

Opens the file with the file mode, either Reference, ReadOnly, WriteOnly, ReadWrite, Append





<!----------------------------------------------------------------------------->

###bool openFromCWD(&path, mode = ReadOnly, binary = true)

<!--
_syntax: openFromCWD(&path, mode = ReadOnly, binary = true)_
_name: openFromCWD_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &path, ofFile::Mode mode=ReadOnly, bool binary=true_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Open the path as a file.

Opens as a text file with read only access by default from the current working directory without internally calling ofToDataPath.


**Parameters:**

path file path

mode file access mode depending on how you plan to use the file
(read only, read write, etc)

binary set to false if you are reading a text file & want lines
split at endline characters automatically

**Returns**: true if the path was opened





_description: _







<!----------------------------------------------------------------------------->

###bool openStream(_mode, binary)

<!--
_syntax: openStream(_mode, binary)_
_name: openStream_
_returns: bool_
_returns_description: _
_parameters: ofFile::Mode _mode, bool binary_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Tests whether a file path is lesser or equal than the file path of the ofFile on the right hand side.





<!----------------------------------------------------------------------------->

###ofFile & operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofFile &_
_returns_description: _
_parameters: const ofFile &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Copy the path and settings of an ofFile into this instance.


**Parameters:**

mom ofFile instance source





_description: _

Equals operator which allows you to do this:

~~~~{.cpp}
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the current path.


**Returns**: current path





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Read the contents of a file at the current path into a buffer.


**Returns**: buffer with file contents





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Removes the file or directory at the current path.

Does not remove non-empty directories by default.


**Warning**: Be careful! This deletes a file or folder. :)

**Parameters:**

recursive set to true to remove a non-empty directory and its
contents

**Returns**: true if the path was removed successfully





_description: _

deletes a file or folder, be careful as this is not undo-able. 





<!----------------------------------------------------------------------------->

###bool removeFile(&path, bRelativeToData = true)

<!--
_syntax: removeFile(&path, bRelativeToData = true)_
_name: removeFile_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &path, bool bRelativeToData=true_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Remove a file or directory at a given path.


**Parameters:**

bRelativeToData set to false if you are working with paths that
are *not* in the data folder and want the direct path without relative
"../../"

**Returns**: true if the path was removed successfully





_description: _







<!----------------------------------------------------------------------------->

###bool renameTo(&path, bRelativeToData = true, overwrite = false)

<!--
_syntax: renameTo(&path, bRelativeToData = true, overwrite = false)_
_name: renameTo_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &path, bool bRelativeToData=true, bool overwrite=false_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rename the current file or directory path to a new path.

Renames relative to the data path & does *not* overwrite by default
does not change the current path & assumes the new path is in the data
folder.


**Parameters:**

path destination file or directory path

bRelativeToData set to false if you are working with paths that
are *not* in the data folder

overwrite set to true if you want to overwrite the file or
directory at the new path

**Returns**: true if the copy was successful





_description: _

Renames the file with the new file name. If you specify a different path then this will move the file as well.





<!----------------------------------------------------------------------------->

###void setExecutable(executable = true)

<!--
_syntax: setExecutable(executable = true)_
_name: setExecutable_
_returns: void_
_returns_description: _
_parameters: bool executable=true_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the executable flag of the current path.





_description: _

Toggles the file as executable or not executable.





<!----------------------------------------------------------------------------->

###void setReadable(readable = true)

<!--
_syntax: setReadable(readable = true)_
_name: setReadable_
_returns: void_
_returns_description: _
_parameters: bool readable=true_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the readable flag of the current path.





_description: _







<!----------------------------------------------------------------------------->

###void setWriteable(writeable = true)

<!--
_syntax: setWriteable(writeable = true)_
_name: setWriteable_
_returns: void_
_returns_description: _
_parameters: bool writeable=true_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the writable flag of the current path.





_description: _

Toggles the file as writeable or not writeable.





<!----------------------------------------------------------------------------->

###bool writeFromBuffer(&buffer)

<!--
_syntax: writeFromBuffer(&buffer)_
_name: writeFromBuffer_
_returns: bool_
_returns_description: _
_parameters: const ofBuffer &buffer_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Write the contents of a buffer into a file at the current path.


**Parameters:**

buffer source byte buffer

**Returns**: true if buffer's contents written successfully





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Destructor





<!----------------------------------------------------------------------------->

##Variables



###bool  binary

<!--
_name: binary_
_type: bool _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

