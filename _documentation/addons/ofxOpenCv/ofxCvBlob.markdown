#class ofxCvBlob


##Description


ofxCvBlob represents an area identified by the OpenCV plug-in as being a contiguous object in the scene. It's most often stored within a contrountFind instance and populated by a call to findContours().

In the image below you can see two blobs detected in the grayscale image:

[img src="blobs.png"]





##Methods



### ofxCvBlob()

<!--
_syntax: ofxCvBlob()_
_name: ofxCvBlob_
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




Constructor.









<!----------------------------------------------------------------------------->

###void draw(x = 0, y = 0)

<!--
_syntax: draw(x = 0, y = 0)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x=0, float y=0_
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




This method draws the blob to the screen with the upper-left corner located at the point specified by the x and y values.









<!----------------------------------------------------------------------------->

##Variables



###float area

<!--
_name: area_
_type: float_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _




Returns the area of the blob.









<!----------------------------------------------------------------------------->

###float length

<!--
_name: length_
_type: float_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _






Returns the perimeter of the blob.







<!----------------------------------------------------------------------------->

###ofRectangle boundingRect

<!--
_name: boundingRect_
_type: ofRectangle_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _




an ofRectangle instance that can be drawn to the screen and that shows the height and width of the blob. This can be helpful to determine large regions of interest, or it can lead to some inaccurate results depending on the shape of your object. For instance, a squarish shape will be well represented by a rectangle, whereas a long thin shape with an angle in the middle will not.









<!----------------------------------------------------------------------------->

###ofPoint centroid

<!--
_name: centroid_
_type: ofPoint_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


This is an ofPoint instance with its x and y positions set at the center of the boundaries of the blob.











<!----------------------------------------------------------------------------->

###bool hole

<!--
_name: hole_
_type: bool_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


This is a Boolean value that indicates whether the blob contains a whole. This is also dependent on whether the call to findContours() in ofxContourFinder has the findHoles parameter set to true.











<!----------------------------------------------------------------------------->

###vector< ofPoint > pts

<!--
_name: pts_
_type: vector< ofPoint >_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _






This is a vector of ofPoint objects that represent the contour of the blob. This is different from the bounding rectangle. It's listing the different points around the edge of the blob. The bounding rectangle is a rectangle around the extreme points of the blob.







<!----------------------------------------------------------------------------->

###int nPts

<!--
_name: nPts_
_type: int_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







This is an int that represents the number of points that are contained within the contour.






<!----------------------------------------------------------------------------->

