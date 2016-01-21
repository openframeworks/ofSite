#class ofAbstractImage


<!--
_visible: True_
_advanced: True_
_istemplated: False_
_extends: ofBaseDraws, ofBaseHasTexture_
-->

##InlineDescription

An abstract class representing an image.

This empty class primarily exists to allow templated subclasses of different
types to be stored as raw or shared pointers in collections such as
std::vector.

Example:
\code{.cpp}

std::vector<ofAbstractImage*> imageProviders;

ofImage image;
ofFloatImage floatImage;
ofShortImage shortImage;

// ...

imageProviders.push_back(&image);
imageProviders.push_back(&floatImage);
imageProviders.push_back(&shortImage);

\endcode





##Description





##Methods



### ~ofAbstractImage()

<!--
_syntax: ~ofAbstractImage()_
_name: ~ofAbstractImage_
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

Destroy the ofAbstractImage.





_description: _







<!----------------------------------------------------------------------------->

##Variables



