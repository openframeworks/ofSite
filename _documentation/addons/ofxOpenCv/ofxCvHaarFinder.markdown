#class ofxCvHaarFinder


##Description












##Methods



### ofxCvHaarFinder()

<!--
_syntax: ofxCvHaarFinder()_
_name: ofxCvHaarFinder_
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














<!----------------------------------------------------------------------------->

### ofxCvHaarFinder(&finder)

<!--
_syntax: ofxCvHaarFinder(&finder)_
_name: ofxCvHaarFinder_
_returns: _
_returns_description: _
_parameters: const ofxCvHaarFinder &finder_
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

### ~ofxCvHaarFinder()

<!--
_syntax: ~ofxCvHaarFinder()_
_name: ~ofxCvHaarFinder_
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














<!----------------------------------------------------------------------------->

###void setup(haarFile)

<!--
_syntax: setup(haarFile)_
_name: setup_
_returns: void_
_returns_description: _
_parameters: string haarFile_
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

###void setScaleHaar(scaleHaar)

<!--
_syntax: setScaleHaar(scaleHaar)_
_name: setScaleHaar_
_returns: void_
_returns_description: _
_parameters: float scaleHaar_
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

###void setNeighbors(neighbors)

<!--
_syntax: setNeighbors(neighbors)_
_name: setNeighbors_
_returns: void_
_returns_description: _
_parameters: unsigned neighbors_
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

###int findHaarObjects(&input, minWidth = 0, minHeight = 0)

<!--
_syntax: findHaarObjects(&input, minWidth = 0, minHeight = 0)_
_name: findHaarObjects_
_returns: int_
_returns_description: _
_parameters: ofImage &input, int minWidth=0, int minHeight=0_
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

###int findHaarObjects(&input, minWidth = 0, minHeight = 0)

<!--
_syntax: findHaarObjects(&input, minWidth = 0, minHeight = 0)_
_name: findHaarObjects_
_returns: int_
_returns_description: _
_parameters: const ofxCvGrayscaleImage &input, int minWidth=0, int minHeight=0_
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

###int findHaarObjects(&input, &roi, minWidth = 0, minHeight = 0)

<!--
_syntax: findHaarObjects(&input, &roi, minWidth = 0, minHeight = 0)_
_name: findHaarObjects_
_returns: int_
_returns_description: _
_parameters: const ofxCvGrayscaleImage &input, ofRectangle &roi, int minWidth=0, int minHeight=0_
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

###int findHaarObjects(&, x, y, w, h, minWidth = 0, minHeight = 0)

<!--
_syntax: findHaarObjects(&, x, y, w, h, minWidth = 0, minHeight = 0)_
_name: findHaarObjects_
_returns: int_
_returns_description: _
_parameters: const ofxCvGrayscaleImage &, int x, int y, int w, int h, int minWidth=0, int minHeight=0_
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

###int findHaarObjects(&input, minWidth = 0, minHeight = 0)

<!--
_syntax: findHaarObjects(&input, minWidth = 0, minHeight = 0)_
_name: findHaarObjects_
_returns: int_
_returns_description: _
_parameters: ofPixels &input, int minWidth=0, int minHeight=0_
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

###float getWidth()

<!--
_syntax: getWidth()_
_name: getWidth_
_returns: float_
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

###float getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
_returns: float_
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

###void draw(x, y)

<!--
_syntax: draw(x, y)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y_
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

##Variables



###ofxCvBlob blobs

<!--
_name: blobs_
_type: ofxCvBlob_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###CvHaarClassifierCascade * cascade

<!--
_name: cascade_
_type: CvHaarClassifierCascade *_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###string haarFile

<!--
_name: haarFile_
_type: string_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###ofxCvGrayscaleImage img

<!--
_name: img_
_type: ofxCvGrayscaleImage_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###float scaleHaar

<!--
_name: scaleHaar_
_type: float_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###unsigned neighbors

<!--
_name: neighbors_
_type: unsigned_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

