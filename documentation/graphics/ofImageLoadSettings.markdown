#class ofImageLoadSettings


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

\todo Needs documentation.





##Description

(Only works with JPG images)
Define the settings used when loading an image with ofImage load(). There is 4 settings, that are all set to false by default :
- accurate : the level of accuracy used to load the image
- grayscale : if the image is colored or in grayscale
- separateCMYK : separate the 4 colors layers of an image
- exifRotate : rotate the image using Exif data

~~~~{.cpp}
ofImageLoadSettings settings;
settings.accurate = true;
settings.grayscale = false;
settings.separateCMYK = false;
settings.exifRotate = false;

// Then load the image with these settings 
ofImage myImg;
myImg.load("anImage.jpg", settings);
~~~~



##Methods



##Variables



###bool accurate

<!--
_name: accurate_
_type: bool_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _

Define the level of accuracy used to load the image.
True : more accurate, but slighly slower to load.
False : faster load, but slighly less accurate (default)

~~~~{.cpp}
ofImageLoadSettings settings;
settings.accurate = true;

// Then load the image with these settings 
ofImage myImg;
myImg.load("anImage.jpg", settings);
~~~~



<!----------------------------------------------------------------------------->

###bool exifRotate

<!--
_name: exifRotate_
_type: bool_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _

Rotate according to the EXIF 'Orientation' tag if available. For example if the image was taken in portrait orientation, it exif data will show that it's orientation is "Vertical".
True : the image will be rotated using Exif data
False : the image won't be rotated (default)


~~~~{.cpp}
ofImageLoadSettings settings;
settings.exifRotate = true;

// Then load the image with these settings 
ofImage myImg;
myImg.load("anImage.jpg", settings);
~~~~


<!----------------------------------------------------------------------------->

###bool grayscale

<!--
_name: grayscale_
_type: bool_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _

Set the loaded image to grayscale. Probably better to set it on load, performance wise. 
True : grayscale image
False : normal color image (default)

~~~~{.cpp}
ofImageLoadSettings settings;
settings.grayscale = true;

// Then load the image with these settings 
ofImage myImg;
myImg.load("anImage.jpg", settings);
~~~~


<!----------------------------------------------------------------------------->

###bool separateCMYK

<!--
_name: separateCMYK_
_type: bool_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _

Separate the 4 colors layers (Cyan, Magenta, Yellow & Black) of an image. 
Only works with CMYB color images : it has to be converted with Photophoh / Gimp, to use a CMYB color space.
True : Separate 4 color layers
False : no color layers separation (deafault)

~~~~{.cpp}
ofImageLoadSettings settings;
settings.separateCMYB = true;

// Then load the image with these settings 
ofImage myImg;
myImg.load("anImage.jpg", settings);
~~~~



<!----------------------------------------------------------------------------->

