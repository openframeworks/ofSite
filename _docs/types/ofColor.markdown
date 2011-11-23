#class ofColor

##Example



##Reference



This class contains variables defining a color. We can create a color object containing information about a certain color. 
For example:

$$code(lang=c++)

ofColor red;
red.r=255;
red.g=0;
red.b=0;
ofSetColor(red.r,red.g,red.b);

$$/code



##Methods



###void ofColor()

_syntax: ofColor()_

_name: ofColor_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void ~ofColor()

_syntax: ~ofColor()_

_name: ~ofColor_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















##Variables



###float r

_name: r_

_type: float_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _

_visible: 1_

_advanced: 0_



_description: _

Variable r contains the amount of red color our color object has. r needs to be a value between 0 and 255.













###float g

_name: g_

_type: float_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _

_visible: 1_

_advanced: 0_



_description: _

Variable g contains the amount of green color our color object has. g needs to be a value between 0 and 255.













###float b

_name: b_

_type: float_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _

_visible: 1_

_advanced: 0_



_description: _

Variable b contains the amount of blue color our color object has. b needs to be a value between 0 and 255.













###float a

_name: a_

_type: float_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _

_visible: 1_

_advanced: 0_



_description: _

Variable a contains the alpha value of our color object.













