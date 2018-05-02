#class ofFilePath


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription



Static class for working with file path strings.






##Description





##Methods



###string addLeadingSlash(&path)

<!--
_syntax: addLeadingSlash(&path)_
_name: addLeadingSlash_
_returns: string_
_returns_description: _
_parameters: const filesystem::path &path_
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

Prepend path with a slash, ie. "images" -> "/images".


Parameters:
path file or directory path

Returns: slah + path





_description: _







<!----------------------------------------------------------------------------->

###string addTrailingSlash(&path)

<!--
_syntax: addTrailingSlash(&path)_
_name: addTrailingSlash_
_returns: string_
_returns_description: _
_parameters: const filesystem::path &path_
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

Append path with a slash, ie. "images" -> "images/".


Parameters:
path directory path

Returns: path + slash





_description: _







<!----------------------------------------------------------------------------->

###bool createEnclosingDirectory(&filePath, bRelativeToData = true, bRecursive = true)

<!--
_syntax: createEnclosingDirectory(&filePath, bRelativeToData = true, bRecursive = true)_
_name: createEnclosingDirectory_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &filePath, bool bRelativeToData=true, bool bRecursive=true_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create the enclosing parent directory of a path, ie.
"images" is the enclosing directory of "duck.jpg" = "images/duck.jpg".

Assumes the path is in the data folder & automatically creates nested
directories as required.


Parameters:
bRecursive set to false to override automatically nested
directory creation
bRelativeToData set to false if you are working with paths that
are *not* in the data folder and want the direct path without relative
"../../"

Returns: true if the enclosing directory was created





_description: _







<!----------------------------------------------------------------------------->

###string getAbsolutePath(&path, bRelativeToData = true)

<!--
_syntax: getAbsolutePath(&path, bRelativeToData = true)_
_name: getAbsolutePath_
_returns: string_
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

Get the absolute, full path for a given path,
ie. "images" -> "/Users/mickey/of/apps/myApps/Donald/bin/data/images".


Parameters:
path file or directory path
bRelativeToData set to false if you are working with paths that
are *not* in the data folder and want the direct path without relative
"../../"

Returns: absolute path





_description: _







<!----------------------------------------------------------------------------->

###string getBaseName(&filePath)

<!--
_syntax: getBaseName(&filePath)_
_name: getBaseName_
_returns: string_
_returns_description: _
_parameters: const filesystem::path &filePath_
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

Get a file name without its extension,
ie. "images/duck.jpg" -> "duck" and
"images/some/folder" -> "folder"


Parameters:
filePath file path

Returns: basename





_description: _

~~~~{.cpp}
string baseName = ofFilePath::getBaseName("/path/to/your-file.ext");
// baseName = "your-file"
~~~~





<!----------------------------------------------------------------------------->

###string getCurrentExeDir()

<!--
_syntax: getCurrentExeDir()_
_name: getCurrentExeDir_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the full path to the application's parent directory.

Windows & Linux: the application's parent directory
Mac: the Contents/MacOS folder within the application's .app bundle


Returns: current executable directory





_description: _







<!----------------------------------------------------------------------------->

###string getCurrentExePath()

<!--
_syntax: getCurrentExePath()_
_name: getCurrentExePath_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the full path to the application's executable file.

Mac: the binary within the application's .app bundle Contents/MacOS dir
Windows: the .exe
Linux: the binary file itself


Returns: current executable path





_description: _







<!----------------------------------------------------------------------------->

###string getCurrentWorkingDirectory()

<!--
_syntax: getCurrentWorkingDirectory()_
_name: getCurrentWorkingDirectory_
_returns: string_
_returns_description: _
_parameters: _
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

Get the full path to the app's current working directory.

This may be the app's parent directory or the location the app was
launched from (aka on the commandline).


Warning: This location *may* change if you or a library calls the cd()
std C function.

Returns: current working directory





_description: _







<!----------------------------------------------------------------------------->

###string getEnclosingDirectory(&filePath, bRelativeToData = true)

<!--
_syntax: getEnclosingDirectory(&filePath, bRelativeToData = true)_
_name: getEnclosingDirectory_
_returns: string_
_returns_description: _
_parameters: const filesystem::path &filePath, bool bRelativeToData=true_
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

Get the enclosing parent directory of a path,
ie. "images/duck.jpg" -> "images", assumes the path is in the data
directory.


Parameters:
filePath file path
bRelativeToData set to false if you are working with paths that
are *not* in the data folder and want the direct path without relative
"../../"

Returns: enclosing directory





_description: _







<!----------------------------------------------------------------------------->

###string getFileExt(&filename)

<!--
_syntax: getFileExt(&filename)_
_name: getFileExt_
_returns: string_
_returns_description: _
_parameters: const filesystem::path &filename_
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

Get the extension of a filename, ie. "duck.jpg" -> "jpg".


Parameters:
filename file path

Returns: filename extension only





_description: _

~~~~{.cpp}
string ext = ofFilePath::getFileExt("/path/to/your-file.jpg");
// ext = "jpg"
~~~~





<!----------------------------------------------------------------------------->

###string getFileName(&filePath, bRelativeToData = true)

<!--
_syntax: getFileName(&filePath, bRelativeToData = true)_
_name: getFileName_
_returns: string_
_returns_description: _
_parameters: const filesystem::path &filePath, bool bRelativeToData=true_
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

Get the filename of a given path by stripping the parent
directories ie. "images/duck.jpg" -> "duck.jpg", assumes the path is in
the data folder.


Parameters:
filePath file path
bRelativeToData set to false if you are working with paths that
are *not* in the data folder and want the direct path without relative
"../../"

Returns: filename





_description: _

~~~~{.cpp}
string fN = ofFilePath::getFileName("/path/to/your-file.ext");
// fN = "your-file.ext"
~~~~





<!----------------------------------------------------------------------------->

###string getPathForDirectory(&path)

<!--
_syntax: getPathForDirectory(&path)_
_name: getPathForDirectory_
_returns: string_
_returns_description: _
_parameters: const filesystem::path &path_
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

Cleaned up a directory path by adding a trailing slash if needed.

For Windows-style path strings using "\", a "\" will be added.
For Unix-style path strings using "/", a "/" will be added.


Parameters:
path directory path

Returns: cleaned path + trailing slash (if needed)





_description: _







<!----------------------------------------------------------------------------->

###string getUserHomeDir()

<!--
_syntax: getUserHomeDir()_
_name: getUserHomeDir_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the absolute path to the user's home directory.

Mac OSX: /Users/<username>
Windows: <root>\Users\<username>
Linux: /home/<username>


Returns: home directory path





_description: _







<!----------------------------------------------------------------------------->

###bool isAbsolute(&path)

<!--
_syntax: isAbsolute(&path)_
_name: isAbsolute_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &path_
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

Check if a path is an absolute (aka a full path),
ie. "images" -> false,
"/Users/mickey/of/apps/myApps/Donald/bin/data/images" -> true.


Parameters:
path file or directory path

Returns: true if the path is an absolute path





_description: _







<!----------------------------------------------------------------------------->

###string join(&path1, &path2)

<!--
_syntax: join(&path1, &path2)_
_name: join_
_returns: string_
_returns_description: _
_parameters: const filesystem::path &path1, const filesystem::path &path2_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create a single path by joining path1 & path2 using a slash,
ie. "/hello/world" + "foo/bar" -> "/hello/world/foo/bar".


Parameters:
path1 left half of the path to join
path2 right half of the path to join

Returns: joined path





_description: _







<!----------------------------------------------------------------------------->

###string makeRelative(&from, &to)

<!--
_syntax: makeRelative(&from, &to)_
_name: makeRelative_
_returns: string_
_returns_description: _
_parameters: const filesystem::path &from, const filesystem::path &to_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Make one path relative to another,
ie. the relative path of "images/felines/lions" to
"images/felines/tigers" is "../tigers".


Parameters:
from starting path
to destination path

Returns: relative path





_description: _







<!----------------------------------------------------------------------------->

###string removeExt(&filename)

<!--
_syntax: removeExt(&filename)_
_name: removeExt_
_returns: string_
_returns_description: _
_parameters: const filesystem::path &filename_
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

Remove extension from a filename, ie. "duck.jpg" ->"duck".


Parameters:
filename file path

Returns: filename without extension





_description: _







<!----------------------------------------------------------------------------->

###string removeTrailingSlash(&path)

<!--
_syntax: removeTrailingSlash(&path)_
_name: removeTrailingSlash_
_returns: string_
_returns_description: _
_parameters: const filesystem::path &path_
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

Remove a path's trailing slash (if found),
ie. "images/" -> "images".


Parameters:
path directory path

Returns: path minus trailing slash





_description: _







<!----------------------------------------------------------------------------->

##Variables



