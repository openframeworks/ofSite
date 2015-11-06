#class ofAbstractHasPixels


<!--
_visible: True_
_advanced: True_
_istemplated: False_
_extends: _
-->

##InlineDescription

An abstract class representing an object that has pixels.

This empty class primarily exists to allow templated subclasses of different
types to be stored as raw or shared pointers in collections such as
std::vector.

Example:
\code{.cpp}

std::vector<ofAbstractHasPixels> pixelProviders;

ofPixels pixels;
ofFloatPixels floatPixels;
ofShortPixels shortPixels;

// ...

pixelProviders.push_back(&pixels);
pixelProviders.push_back(&floatPixels);
pixelProviders.push_back(&shortPixels);

\endcode





##Description





##Methods



### ~ofAbstractHasPixels()

<!--
_syntax: ~ofAbstractHasPixels()_
_name: ~ofAbstractHasPixels_
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

Destroy the ofAbstractHasPixels.





_description: _







<!----------------------------------------------------------------------------->

##Variables



