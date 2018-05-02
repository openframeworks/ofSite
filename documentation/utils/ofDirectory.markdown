#class ofDirectory


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription



Path to a directory. Can be used to query file and directory
contents.






##Description

ofDirectory is a class for reading and manipulating directories on the file system through openFrameworks.

Here is a common way to use it:

~~~~{.cpp}
//some path, may be absolute or relative to bin/data
string path = "/my/path/file"; 
ofDirectory dir(path);
//only show png files
dir.allowExt("png");
//populate the directory object
dir.listDir();

//go through and print out all the paths
for(int i = 0; i < dir.size(); i++){
	ofLogNotice(dir.getPath(i));
}
~~~~





##Methods



###void allowExt(&extension)

<!--
_syntax: allowExt(&extension)_
_name: allowExt_
_returns: void_
_returns_description: _
_parameters: const string &extension_
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

Allow a file extension when listing the contents the current
directory path.

Setting an allowed extension enables a whitelist mode which only lists
extensions which have been explicitly allowed.


Parameters:
extension file type extension ie. "jpg", "png", "txt", etc





_description: _

Adds an allowed extension to the list of filters when listing directories. Use this to set any number of filters before calling listDir().

For example if you wanted to only get images in a directory, you may set several filters:

~~~~{.cpp}
string path = "/path/to/images";
ofDirectory dir(path);
dir.allowExt("png");
dir.allowExt("jpg");
dir.allowExt("gif");
dir.listDir();
~~~~





<!----------------------------------------------------------------------------->

###vector< ofFile >::const_iterator begin()

<!--
_syntax: begin()_
_name: begin_
_returns: vector< ofFile >::const_iterator_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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


Returns: true if executable





_description: _

Returns true if the current directory is executable. An executable directory can be entered into with command such as cd.





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


Returns: true if readable





_description: _

Returns true if the open directory can be read.





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

Check if the current path is writeable.


Returns: true if writable





_description: _

Returns true if the open directory can be written to.





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

Close the currently open path.





_description: _

Closes the directory.





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
directory.


Parameters:
path destination file or directory path
bRelativeToData set to false if you are working with paths that
are *not* in the data directory
overwrite set to true if you want to overwrite the file or
directory at the new path

Returns: true if the copy was successful





_description: _

Copies the directory into path.  If bRelativeToData is set to false then path should be absolute. If overwrite is set to true any existing files with the same name will be overwritten by the copy.





<!----------------------------------------------------------------------------->

###bool create(recursive = false)

<!--
_syntax: create(recursive = false)_
_name: create_
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

Create a directory at the current path.


Parameters:
bRecursive set to true to automatically create nested directories
as required





_description: _

Creates the directory if it doesn't exist already. A common reason to use create is to ensure that you are able to write files to a known path, like so

~~~~{.cpp}
string path = "/path/to/file";
ofDirectory dir(path);
if(!dir.exists()){
	dir.create(true);
}
//now you can be sure that path exists
~~~~

The recursive boolean flag will indicate if you'd like to create directories all the directories required to reach the given path.  In our example, if "/path/to" didn't already exist, the call to create() would also create these. If recursive were set to false, the directory would not be created.





<!----------------------------------------------------------------------------->

###bool createDirectory(&dirPath, bRelativeToData = true, recursive = false)

<!--
_syntax: createDirectory(&dirPath, bRelativeToData = true, recursive = false)_
_name: createDirectory_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &dirPath, bool bRelativeToData=true, bool recursive=false_
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

Create a directory at a given path.

Creates relative to the data path by default.


Parameters:
dirPath directory path
bRelativeToData set to false if you are working with paths that
are *not* in the data directory
bRecursive set to true to automatically create nested directories
as required

Returns: true if directory was created successfully





_description: _

Static method to create a directory at a given path. 





<!----------------------------------------------------------------------------->

###bool doesDirectoryExist(&dirPath, bRelativeToData = true)

<!--
_syntax: doesDirectoryExist(&dirPath, bRelativeToData = true)_
_name: doesDirectoryExist_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &dirPath, bool bRelativeToData=true_
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

Check if a directory exists at a given path.

Assumes directory path is relative to the data path by default.


Parameters:
dirPath directory path
bRelativeToData set to false if you are working with paths that
are *not* in the data directory

Returns: true if the directory exists





_description: _

Returns true if the directory at dirPath exists.





<!----------------------------------------------------------------------------->

###vector< ofFile >::const_iterator end()

<!--
_syntax: end()_
_name: end_
_returns: vector< ofFile >::const_iterator_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

Check if a directory exists at the current path.


Returns: true if exists





_description: _

Returns true if the open directory exists. Great to be used in conjunction with ofDirectory::create()





<!----------------------------------------------------------------------------->

###string getAbsolutePath()

<!--
_syntax: getAbsolutePath()_
_name: getAbsolutePath_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the absolute, full path of the directory,
ie. "images" -> "/Users/mickey/of/apps/myApps/Donald/bin/data/images".

\return current path as an absolute path





_description: _







<!----------------------------------------------------------------------------->

###ofFile getFile(position, mode = Reference, binary = true)

<!--
_syntax: getFile(position, mode = Reference, binary = true)_
_name: getFile_
_returns: ofFile_
_returns_description: _
_parameters: size_t position, ofFile::Mode mode=Reference, bool binary=true_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Open an ofFile instance using the path a given position in the
directory contents list.

Opens as a binary file with readonly access by default.


Warning: Call listDir() before using this function or the directory
contents list will be empty.
\throw Throws an out of bounds exception if position >= the number of
listed directory contents.

Parameters:
position array index in the directory contents list
mode file access mode depending on how you plan to use the file
(read only, read write, etc)
binary set to false if you are working with a text file & want
lines split at endline characters automatically

Returns: ofFile instance





_description: _







<!----------------------------------------------------------------------------->

###const vector< ofFile > & getFiles()

<!--
_syntax: getFiles()_
_name: getFiles_
_returns: const vector< ofFile > &_
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

Get files and directories in the directory contents list.

Directory contents are automatically listed.


Returns: vector of files in the directory





_description: _

Returns a vector of ofFile objects populated by a prior call to listDir().  The files are opened in ofFile::Reference mode.





<!----------------------------------------------------------------------------->

###string getName(position)

<!--
_syntax: getName(position)_
_name: getName_
_returns: string_
_returns_description: _
_parameters: size_t position_
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

Get the filename at a given position in the directory contents
list, ie. "duck.jpg".


Warning: Call listDir() before using this function or the directory
contents list will be empty.
\throws Throws an out of bounds exception if position >= the number of
listed directory contents.

Parameters:
position array index in the directory contents list

Returns: file or directory name





_description: _

Returns the file name,(eg "mypicture.png") with extension but not the enclosing path at a given index. Position must be less than the result of numFiles().





<!----------------------------------------------------------------------------->

###string getOriginalDirectory()

<!--
_syntax: getOriginalDirectory()_
_name: getOriginalDirectory_
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

Returns: the current path





_description: _







<!----------------------------------------------------------------------------->

###string getPath(position)

<!--
_syntax: getPath(position)_
_name: getPath_
_returns: string_
_returns_description: _
_parameters: size_t position_
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

Get the full path of the file or directory at a given position in
the directory contents list.


Warning: Call listDir() before using this function or the directory
contents list will be empty.
\throws Throws an out of bounds exception if position >= the number of
listed directory contents.

Parameters:
position array index in the directory contents list

Returns: file or directory name including the current path





_description: _

Returns the absolute path,(eg "/path/to/files/mypicture.png"). Position must be less than the result of size().





<!----------------------------------------------------------------------------->

###bool getShowHidden()

<!--
_syntax: getShowHidden()_
_name: getShowHidden_
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

Check whether hidden files & directories are included when
listing files.

Mac & Linux denote hidden directories by prepending a period
-> ".hello".


Returns: true if hidden files are shown





_description: _

Returns if hidden files are set to be shown or not.





<!----------------------------------------------------------------------------->

###ofDirectory getSorted()

<!--
_syntax: getSorted()_
_name: getSorted_
_returns: ofDirectory_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get a sorted ofDirectory instance using the current path.


Returns: sorted ofDirectory instance





_description: _







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

Check if the current path is indeed a directory and not a file.


Returns: true if a directory





_description: _

Returns true if the given path is actually a directory.





<!----------------------------------------------------------------------------->

###bool isDirectoryEmpty(&dirPath, bRelativeToData = true)

<!--
_syntax: isDirectoryEmpty(&dirPath, bRelativeToData = true)_
_name: isDirectoryEmpty_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &dirPath, bool bRelativeToData=true_
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

Check if a directory at a given path is empty.

Assumes directory path is relative to the data path by default.


Parameters:
dirPath directory path
bRelativeToData set to false if you are working with paths that
are *not* in the data directory

Returns: true if the directory is empty aka contains no files or
directories





_description: _

Returns true if the directory at dirPath is empty.





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

Works on Mac & Linux which denote hidden directories by prepending
a period -> ".hello", however always returns false on Windows.


Returns: true if hidden





_description: _

Returns true if the directory is hidden in the file system. 





<!----------------------------------------------------------------------------->

###size_t listDir(&path)

<!--
_syntax: listDir(&path)_
_name: listDir_
_returns: size_t_
_returns_description: _
_parameters: const string &path_
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

Open and read the contents of a directory.

Uses allowed extension whitelist to ignore unwanted file types if
allowExt() has been called.


Parameters:
path directory path

Returns: number of paths found





_description: _

Opens and populates the directory with files.  Returns the number of files found.





<!----------------------------------------------------------------------------->

###size_t listDir()

<!--
_syntax: listDir()_
_name: listDir_
_returns: size_t_
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

Open and read the contents of the current directory.

Uses allowed extension whitelist to ignore unwanted file types if
allowExt() has been called.


Returns: number of paths found





_description: _

Populates the directory with files. Call this after opening a directory and setting filters. After this call, size(), getPath(position), and getName(position) can be used to access the contents of the directory.





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
directory.


Parameters:
path destination file or directory path
bRelativeToData set to false if you are working with paths that
are *not* in the data directory
overwrite set to true if you want to overwrite the file or
directory at the new path

Returns: true if the copy was successful





_description: _

Moves the directory into another directory at path.  If bRelativeToData is set to false then path should be absolute. If overwrite is set to true any existing files with the same name will be overwritten by the move.





<!----------------------------------------------------------------------------->

### ofDirectory()

<!--
_syntax: ofDirectory()_
_name: ofDirectory_
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

Create an ofDirectory instance

Does not refer to a specific directory until you either open or create
a directory path.





_description: _

Constructs an empty directory object.





<!----------------------------------------------------------------------------->

### ofDirectory(&path)

<!--
_syntax: ofDirectory(&path)_
_name: ofDirectory_
_returns: _
_returns_description: _
_parameters: const filesystem::path &path_
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

Create an ofDirectory instance and attempt to open the path.


Parameters:
path directory path





_description: _

Constructs a directory object and calls open() on the provided path.  The contents of the path are not accessible until listDir() is called.





<!----------------------------------------------------------------------------->

###void open(&path)

<!--
_syntax: open(&path)_
_name: open_
_returns: void_
_returns_description: _
_parameters: const filesystem::path &path_
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

Open a directory path, clears the current file list.


Parameters:
path directory path





_description: _

Opens a path. At this point you can see if the directory exists by calling exists() but the contents of the path are not accessible until listDir() is called.

	





<!----------------------------------------------------------------------------->

###void openFromCWD(&path)

<!--
_syntax: openFromCWD(&path)_
_name: openFromCWD_
_returns: void_
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

Open a directory path relative to the current working directory without calling ofToDataPath internally, clears the current file list.


Parameters:
path directory path





_description: _







<!----------------------------------------------------------------------------->

###bool operator!=(&dir)

<!--
_syntax: operator!=(&dir)_
_name: operator!=_
_returns: bool_
_returns_description: _
_parameters: const ofDirectory &dir_
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

Returns true if this directory and another have different paths.





<!----------------------------------------------------------------------------->

###bool operator<(&dir)

<!--
_syntax: operator<(&dir)_
_name: operator<_
_returns: bool_
_returns_description: _
_parameters: const ofDirectory &dir_
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

Returns true if the right hand side directory is alphabetically after the left hand side directory.





<!----------------------------------------------------------------------------->

###bool operator<=(&dir)

<!--
_syntax: operator<=(&dir)_
_name: operator<=_
_returns: bool_
_returns_description: _
_parameters: const ofDirectory &dir_
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

Returns true if the right hand side directory is alphabetically after or equal to the left hand side directory.





<!----------------------------------------------------------------------------->

###bool operator==(&dir)

<!--
_syntax: operator==(&dir)_
_name: operator==_
_returns: bool_
_returns_description: _
_parameters: const ofDirectory &dir_
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

Returns true if this directory and another have the same path.





<!----------------------------------------------------------------------------->

###bool operator>(&dir)

<!--
_syntax: operator>(&dir)_
_name: operator>_
_returns: bool_
_returns_description: _
_parameters: const ofDirectory &dir_
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

Returns true if the left hand side directory is alphabetically after the right hand side directory.





<!----------------------------------------------------------------------------->

###bool operator>=(&dir)

<!--
_syntax: operator>=(&dir)_
_name: operator>=_
_returns: bool_
_returns_description: _
_parameters: const ofDirectory &dir_
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

Returns true if the left hand side directory is alphabetically after or equal to the right hand side directory;





<!----------------------------------------------------------------------------->

###ofFile operator[](position)

<!--
_syntax: operator[](position)_
_name: operator[]_
_returns: ofFile_
_returns_description: _
_parameters: size_t position_
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

Access directory contents via th array operator.


Warning: Call listDir() before using this function or the directory
contents list will be empty.
\throw Throws an out of bounds exception if position >= the number of
listed directory contents.

Parameters:
position array index in the directory contents list

Returns: opened ofFile instance





_description: _

Operator for accessing files with array notation syntax. Call is equivalent to ofFile::getFile(position).





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


Returns: current path





_description: _

Returns the currently opened path.





<!----------------------------------------------------------------------------->

###vector< ofFile >::const_reverse_iterator rbegin()

<!--
_syntax: rbegin()_
_name: rbegin_
_returns: vector< ofFile >::const_reverse_iterator_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###bool remove(recursive)

<!--
_syntax: remove(recursive)_
_name: remove_
_returns: bool_
_returns_description: _
_parameters: bool recursive_
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


Warning: Be careful! This deletes a file or folder. :)

Parameters:
recursive set to true to remove a non-empty directory and its
contents

Returns: true if the path was removed successfully





_description: _

Deletes the directory. If recursive is set to false and this directory contains others the remove will fail.





<!----------------------------------------------------------------------------->

###bool removeDirectory(&path, deleteIfNotEmpty, bRelativeToData = true)

<!--
_syntax: removeDirectory(&path, deleteIfNotEmpty, bRelativeToData = true)_
_name: removeDirectory_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &path, bool deleteIfNotEmpty, bool bRelativeToData=true_
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

remove a directory at a given path


Parameters:
deleteIfNotEmpty set to true if you want to recursively delete
the directory *and* its contents
bRelativeToData set to false if you are working with paths that
are *not* in the data directory

Returns: true if the path was removed successfully





_description: _

Removes a directory. If deleteIfNotEmpty is set to false and the directory contains files the call will fail.





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
directory.


Parameters:
path destination file or directory path
bRelativeToData set to false if you are working with paths that
are *not* in the data folder
overwrite set to true if you want to overwrite the file or
directory at the new path

Returns: true if the copy was successful





_description: _

Renames the directory to the path path.  If bRelativeToData is set to false then path should be absolute. If overwrite is set to true any existing files with the same name will be overwritten by the rename.





<!----------------------------------------------------------------------------->

###vector< ofFile >::const_reverse_iterator rend()

<!--
_syntax: rend()_
_name: rend_
_returns: vector< ofFile >::const_reverse_iterator_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###void reset()

<!--
_syntax: reset()_
_name: reset_
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

Closes the directory.

This is for backwards compatibility with ofxDirList.





_description: _

Resets the current directory. Equivalent to close().





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


Parameters:
executable set to true to make path executable





_description: _

Enables or disables execution on the current open directory. If the directory is executable then it can be entered through commands such as cd.





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


Parameters:
readable set to true to make path readable





_description: _







<!----------------------------------------------------------------------------->

###void setShowHidden(showHidden)

<!--
_syntax: setShowHidden(showHidden)_
_name: setShowHidden_
_returns: void_
_returns_description: _
_parameters: bool showHidden_
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

Show hidden files & directories when listing files?

Mac & Linux denote hidden directories by prepending a period
-> ".hello".


Parameters:
showHidden set to true to show hidden files





_description: _

Sets whether or not the call to listDir() will return hidden files.





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


Parameters:
writable set to true to make path writable





_description: _

Enables or disables writeable on the current open directory.





<!----------------------------------------------------------------------------->

###size_t size()

<!--
_syntax: size()_
_name: size_
_returns: size_t_
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

Get the number of paths in the current directory list.


Warning: Call listDir() before using this function or it will return 0
since the directory list will be empty.

Returns: number of paths





_description: _

Returns the number of files contained within the directory. Set after listDir() is called.





<!----------------------------------------------------------------------------->

###void sort()

<!--
_syntax: sort()_
_name: sort_
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

Sort the directory contents list alphabetically.


Warning: Call listDir() before using this function or there will be
nothing to sort.





_description: _

Sorts the contents of the directory by filename.





<!----------------------------------------------------------------------------->

###void sortByDate()

<!--
_syntax: sortByDate()_
_name: sortByDate_
_returns: void_
_returns_description: _
_parameters: _
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

Sort the directory contents list by date.


Warning: Call listDir() before using this function or there will be
nothing to sort.





_description: _







<!----------------------------------------------------------------------------->

##Variables



###vector< string > extensions

<!--
_name: extensions_
_type: vector< string >_
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

###ofFile files

<!--
_name: files_
_type: ofFile_
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

###Poco myDir

<!--
_name: myDir_
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

###string originalDirectory

<!--
_name: originalDirectory_
_type: string_
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

###bool showHidden

<!--
_name: showHidden_
_type: bool_
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

