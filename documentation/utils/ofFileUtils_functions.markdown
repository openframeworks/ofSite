#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###ofBuffer ofBufferFromFile(&path, binary = true)

<!--
_syntax: ofBufferFromFile(&path, binary = true)_
_name: ofBufferFromFile_
_returns: ofBuffer_
_returns_description: _
_parameters: const filesystem::path &path, bool binary=true_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Read the contents of a file at path into a buffer.

Opens as a text file by default.


Parameters:
path file to open
binary set to false if you are reading a text file & want lines
split at endline characters automatically





_description: _







<!----------------------------------------------------------------------------->

###bool ofBufferToFile(&path, &buffer, binary = true)

<!--
_syntax: ofBufferToFile(&path, &buffer, binary = true)_
_name: ofBufferToFile_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &path, const ofBuffer &buffer, bool binary=true_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Write the contents of a buffer to a file at path.

Saves as a text file by default.


Parameters:
path file to open
buffer data source to write from
binary set to false if you are writing a text file & want lines
split at endline characters automatically





_description: _







<!----------------------------------------------------------------------------->

