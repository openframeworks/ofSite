#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###ostream & operator<<(&os, &rect)

<!--
_syntax: operator<<(&os, &rect)_
_name: operator<<_
_returns: ostream &_
_returns_description: _
_parameters: ostream &os, const ofRectangle &rect_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Writes the parameters of the ofRectangle to an ostream.
Typically used to print or save to a file.

Example of storing parameters in rectangle.txt:
~~~~{.cpp}
ofFile file("rectangle.txt",ofFile::WriteOnly);
file << rect;
file.close();
~~~~







<!----------------------------------------------------------------------------->

###istream & operator>>(&is, &rect)

<!--
_syntax: operator>>(&is, &rect)_
_name: operator>>_
_returns: istream &_
_returns_description: _
_parameters: istream &is, ofRectangle &rect_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Reads the parameters of the ofRectangle from an istream and constructs the ofRectangle.
Typically used to load from a stream or a file.

Example of reading parameters from rectangle.txt:
~~~~{.cpp}
ofFile file("rectangle.txt",ofFile::ReadOnly);
file >> rect;
file.close();
~~~~







<!----------------------------------------------------------------------------->

