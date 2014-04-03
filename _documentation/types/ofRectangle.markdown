#class ofRectangle


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription

A class representing a 2D rectangle. 


ofRectangle is a simple container for describing the position and size of a 2D rectangle. Since the width and height variables can be negative, the x/y position is not garanteed to represent the upper right hand corner. For example, two visually identical rectangles can be represented in the following ways: ofRectangle myRect(0, 0, 100, 100);


or ofRectangle myRect(100, 100, -100, -100);


While both representations will yield the same visual results in all openFrameworks renderers, the results of some method operations that modify x, y, width and height (such as scaling) produce mathematically correct, but visually different results for each of the above representations.

To avoid this ambiguity, users planning to should prefer "standardized" rectangles. "Standardized" rectangles are rectangles whose width >= 0 and height >= 0. The ofRectangle::standardize() method can be used to ensure that the is in it the "standard" form. 





##Description

##Description

The ofRectangle class provides a data structure and a collection of useful helper methods for manipulating rectangles.





##Methods



###void alignTo(&targetPoint, thisHorzAnchor = OF_ALIGN_HORZ_CENTER, thisVertAnchor = OF_ALIGN_VERT_CENTER)

<!--
_syntax: alignTo(&targetPoint, thisHorzAnchor = OF_ALIGN_HORZ_CENTER, thisVertAnchor = OF_ALIGN_VERT_CENTER)_
_name: alignTo_
_returns: void_
_returns_description: _
_parameters: const ofPoint &targetPoint, ofAlignHorz thisHorzAnchor=OF_ALIGN_HORZ_CENTER, ofAlignVert thisVertAnchor=OF_ALIGN_VERT_CENTER_
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








_description: _


Aligns the position of the ofRectangle to the given point using an ofAlignHorz constant and an ofAlignVert constant.
If neither constant is passed in, this will align the center of the rectangle.

__ofAlignHorz Constants:__

__OF_ALIGN_HORZ_IGNORE__              : Does not perform any horizontal alignment.  
__OF_ALIGN_HORZ_LEFT__                : Uses the left edge of the rectangle to horizontally anchor the alignment.
__OF_ALIGN_HORZ_RIGHT__               : Uses the right edge of the rectangle to horizontally anchor the alignment.
__OF_ALIGN_HORZ_CENTER__              : Uses the center of the rectangle to horizontally anchor the alignment.  

__ofAlignVert Constants:__

__OF_ALIGN_VERT_IGNORE__              : Does not perform any vertical alignment.  
__OF_ALIGN_VERT_TOP__                 : Uses the upper edge of the rectangle to vertically anchor the alignment.  
__OF_ALIGN_VERT_BOTTOM__              : Uses the bottom edge of the rectangle to vertically anchor the alignment.  
__OF_ALIGN_VERT_CENTER__              : Uses the center of the rectangle to vertically anchor the alignment.

For a working example of how to use ofAlignVert and ofAlignHorz, see the *graphics/rectangleAlignmentAndScaling/* example within the examples directory.







<!----------------------------------------------------------------------------->

###void alignTo(&targetRect, sharedHorzAnchor = OF_ALIGN_HORZ_CENTER, sharedVertAnchor = OF_ALIGN_VERT_CENTER)

<!--
_syntax: alignTo(&targetRect, sharedHorzAnchor = OF_ALIGN_HORZ_CENTER, sharedVertAnchor = OF_ALIGN_VERT_CENTER)_
_name: alignTo_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &targetRect, ofAlignHorz sharedHorzAnchor=OF_ALIGN_HORZ_CENTER, ofAlignVert sharedVertAnchor=OF_ALIGN_VERT_CENTER_
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








_description: _


Aligns the position of the ofRectangle to that of the passed-in ofRectangle.  Can take an ofAlignHorz constant and an ofAlignVert constant.
If neither constant is passed in, this will align the centers of the rectangles. 
If constants are passed in, it will use those constants for both rectangles.

For a description of the available options, see above.







<!----------------------------------------------------------------------------->

###void alignTo(&targetRect, targetHorzAnchor, targetVertAnchor, thisHorzAnchor, thisVertAnchor)

<!--
_syntax: alignTo(&targetRect, targetHorzAnchor, targetVertAnchor, thisHorzAnchor, thisVertAnchor)_
_name: alignTo_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &targetRect, ofAlignHorz targetHorzAnchor, ofAlignVert targetVertAnchor, ofAlignHorz thisHorzAnchor, ofAlignVert thisVertAnchor_
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








_description: _


Aligns the position of the ofRectangle to that of the passed-in ofRectangle.  Takes two ofAlignHorz constants and two ofAlignVert constants.
Will align the chosen anchors in the ofRectangle with the chosen anchors in the passed-in ofRectangle.

For a description of the available options, see above.







<!----------------------------------------------------------------------------->

###void alignToHorz(&targetX, thisHorzAnchor = OF_ALIGN_HORZ_CENTER)

<!--
_syntax: alignToHorz(&targetX, thisHorzAnchor = OF_ALIGN_HORZ_CENTER)_
_name: alignToHorz_
_returns: void_
_returns_description: _
_parameters: const float &targetX, ofAlignHorz thisHorzAnchor=OF_ALIGN_HORZ_CENTER_
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








_description: _


Aligns the horizontal position of the ofRectangle to the given x position using an ofAlignHorz constant.
If a constant is not passed in, this will align the center of the rectangle.

__ofAlignHorz Constants:__

__OF_ALIGN_HORZ_IGNORE__              : Does not perform any horizontal alignment.  
__OF_ALIGN_HORZ_LEFT__                : Uses the left edge of the rectangle to horizontally anchor the alignment.
__OF_ALIGN_HORZ_RIGHT__               : Uses the right edge of the rectangle to horizontally anchor the alignment.
__OF_ALIGN_HORZ_CENTER__              : Uses the center of the rectangle to horizontally anchor the alignment.  

For a working example of how to use ofAlignHorz, see the *graphics/rectangleAlignmentAndScaling/* example within the examples directory.







<!----------------------------------------------------------------------------->

###void alignToHorz(&targetRect, sharedAnchor = OF_ALIGN_HORZ_CENTER)

<!--
_syntax: alignToHorz(&targetRect, sharedAnchor = OF_ALIGN_HORZ_CENTER)_
_name: alignToHorz_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &targetRect, ofAlignHorz sharedAnchor=OF_ALIGN_HORZ_CENTER_
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








_description: _


Aligns the horizontal position of the ofRectangle to that of the passed-in ofRectangle.  Can take an ofAlignHorz constant.
If a constant is not passed in, this will align the horizontal centers of the rectangles. 
If a constant is passed in, it will use that constant for both rectangles.

For a description of the available options, see above.







<!----------------------------------------------------------------------------->

###void alignToHorz(&targetRect, targetHorzAnchor, thisHorzAnchor)

<!--
_syntax: alignToHorz(&targetRect, targetHorzAnchor, thisHorzAnchor)_
_name: alignToHorz_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &targetRect, ofAlignHorz targetHorzAnchor, ofAlignHorz thisHorzAnchor_
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








_description: _


Aligns the horizontal position of the ofRectangle to that of the the passed-in ofRectangle.  Takes two ofAlignHorz constants.
Will align the chosen anchor in the ofRectangle with the chosen anchor in the passed-in ofRectangle.

For a description of the available options, see above.







<!----------------------------------------------------------------------------->

###void alignToVert(&targetY, sharedAnchor = OF_ALIGN_VERT_CENTER)

<!--
_syntax: alignToVert(&targetY, sharedAnchor = OF_ALIGN_VERT_CENTER)_
_name: alignToVert_
_returns: void_
_returns_description: _
_parameters: const float &targetY, ofAlignVert sharedAnchor=OF_ALIGN_VERT_CENTER_
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








_description: _


Aligns the vertical position of the ofRectangle to the given x position using an ofAlignVert constant.
If a constant is not passed in, this will align the center of the rectangle.

__ofAlignVert Constants:__

__OF_ALIGN_VERT_IGNORE__              : Does not perform any vertical alignment.  
__OF_ALIGN_VERT_TOP__                 : Uses the upper edge of the rectangle to vertically anchor the alignment.  
__OF_ALIGN_VERT_BOTTOM__              : Uses the bottom edge of the rectangle to vertically anchor the alignment.  
__OF_ALIGN_VERT_CENTER__              : Uses the center of the rectangle to vertically anchor the alignment.

For a working example of how to use ofAlignVert, see the *graphics/rectangleAlignmentAndScaling/* example within the examples directory.







<!----------------------------------------------------------------------------->

###void alignToVert(&targetRect, sharedAnchor = OF_ALIGN_VERT_CENTER)

<!--
_syntax: alignToVert(&targetRect, sharedAnchor = OF_ALIGN_VERT_CENTER)_
_name: alignToVert_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &targetRect, ofAlignVert sharedAnchor=OF_ALIGN_VERT_CENTER_
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








_description: _


Aligns the vertical position of the ofRectangle to that of the passed-in ofRectangle.  Can take an ofAlignVert constant.
If a constant is not passed in, this will align the vertical centers of the rectangles. 
If a constant is passed in, it will use that constant for both rectangles.

For a description of the available options, see above.







<!----------------------------------------------------------------------------->

###void alignToVert(&targetRect, targetVertAnchor, thisVertAnchor)

<!--
_syntax: alignToVert(&targetRect, targetVertAnchor, thisVertAnchor)_
_name: alignToVert_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &targetRect, ofAlignVert targetVertAnchor, ofAlignVert thisVertAnchor_
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








_description: _


Aligns the vertical position of the ofRectangle to that of the the passed-in ofRectangle.  Takes two ofAlignVert constants.
Will align the chosen anchor in the ofRectangle with the chosen anchor in the passed-in ofRectangle.

For a description of the available options, see above.







<!----------------------------------------------------------------------------->

###float getArea()

<!--
_syntax: getArea()_
_name: getArea_
_returns: float_
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








_description: _


Returns the area of the ofRectangle as a float.
This is the product of the width and height.

Example: 
~~~~{.cpp}

// Create a rectangle that is 100 units wide and 200 units tall
ofRectangle myRect(0,0,100,200);  

// Get the area of that rectangle
float areaValue = myRect.getArea();

// areaValue will be 20000.0.
~~~~







<!----------------------------------------------------------------------------->

###float getAspectRatio()

<!--
_syntax: getAspectRatio()_
_name: getAspectRatio_
_returns: float_
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








_description: _


Returns the ratio of width to height of the ofRectangle as a float.  

Example: 
~~~~{.cpp}

// Create a rectangle that is 100 units wide and 200 units tall
ofRectangle myRect(0,0,100,200);  

// Get the aspect ratio of that rectangle
float aspectRatioValue = myRect.getAspectRatio();

// aspectRatioValue will be 0.5.
~~~~







<!----------------------------------------------------------------------------->

###float getBottom()

<!--
_syntax: getBottom()_
_name: getBottom_
_returns: float_
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








_description: _


Returns the position of the bottom of the ofRectangle as a float.

Equivalent to ofRectangle::getMaxY().







<!----------------------------------------------------------------------------->

###ofPoint getBottomLeft()

<!--
_syntax: getBottomLeft()_
_name: getBottomLeft_
_returns: ofPoint_
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








_description: _


Returns the (x,y) coordinates of the bottom left corner of the rectangle as an ofPoint. 







<!----------------------------------------------------------------------------->

###ofPoint getBottomRight()

<!--
_syntax: getBottomRight()_
_name: getBottomRight_
_returns: ofPoint_
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








_description: _


Returns the (x,y) coordinates of the bottom right corner of the rectangle as an ofPoint. 

Equivalent to ofRectangle::getMax().







<!----------------------------------------------------------------------------->

###ofPoint getCenter()

<!--
_syntax: getCenter()_
_name: getCenter_
_returns: ofPoint_
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








_description: _


Returns the (x,y) coordinates of the center of the rectangle as an ofPoint. 







<!----------------------------------------------------------------------------->

###float getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
_returns: float_
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








_description: _


Returns the height of the ofRectangle as a float.







<!----------------------------------------------------------------------------->

###float getHorzAnchor(anchor)

<!--
_syntax: getHorzAnchor(anchor)_
_name: getHorzAnchor_
_returns: float_
_returns_description: _
_parameters: ofAlignHorz anchor_
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








_description: _


getHorzAnchor is a convenience method that returns the value of one of the horizontal edges of the ofRectangle 
using the ofAlignHorz enum.  

Possible anchor values are:

__OF_ALIGN_HORZ_IGNORE__  : returns 0.0  
__OF_ALIGN_HORZ_LEFT__    : returns the position of the left edge, equivalent to ofRectangle::geLeft().  
__OF_ALIGN_HORZ_RIGHT__   : returns the position of the right edge, equivalent to ofRectangle::getRight().  
__OF_ALIGN_HORZ_CENTER__  : returns the x position of the center of the ofRectangle.  

Any other anchor value will return 0.0.







<!----------------------------------------------------------------------------->

###ofRectangle getIntersection(&rect)

<!--
_syntax: getIntersection(&rect)_
_name: getIntersection_
_returns: ofRectangle_
_returns_description: _
_parameters: const ofRectangle &rect_
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








_description: _


Return a new ofRectangle containing the area shared between the ofRectangle and the passed ofRectangle.
If the two rectangles do not overlap, return a rectangle located at (0,0) with 0 height and 0 width.

If the two rectangles only share an edge this will return a rectangle positioned on that edge:
if the shared edge is vertical, the rectangle will have zero width, otherwise it will have zero height.







<!----------------------------------------------------------------------------->

###float getLeft()

<!--
_syntax: getLeft()_
_name: getLeft_
_returns: float_
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








_description: _


Returns the position of the left of the ofRectangle as a float.

Equivalent to ofRectangle::getMinX().







<!----------------------------------------------------------------------------->

###ofPoint getMax()

<!--
_syntax: getMax()_
_name: getMax_
_returns: ofPoint_
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








_description: _


Returns the (x,y) coordinates of the corner of the rectangle with the largest x and largest y position as an ofPoint. 

Equivalent to ofRectangle::getBottomRight().







<!----------------------------------------------------------------------------->

###float getMaxX()

<!--
_syntax: getMaxX()_
_name: getMaxX_
_returns: float_
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








_description: _


Returns the position of the larger of the two sides of the rectangle perpendicular to the x axis as a float. 

Equivalent to ofRectangle::getRight().







<!----------------------------------------------------------------------------->

###float getMaxY()

<!--
_syntax: getMaxY()_
_name: getMaxY_
_returns: float_
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








_description: _


Returns the position of the larger of the two sides of the rectangle perpendicular to the y axis as a float. 

Equivalent to ofRectangle::getBottom().







<!----------------------------------------------------------------------------->

###ofPoint getMin()

<!--
_syntax: getMin()_
_name: getMin_
_returns: ofPoint_
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








_description: _


Returns the (x,y) coordinates of the corner of the rectangle with the smallest x and y position as an ofPoint. 

Equivalent to ofRectangle::getTopLeft().







<!----------------------------------------------------------------------------->

###float getMinX()

<!--
_syntax: getMinX()_
_name: getMinX_
_returns: float_
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








_description: _


Returns the position of the smaller of the two sides of the rectangle perpendicular to the x axis as a float. 

Equivalent to ofRectangle::getLeft().







<!----------------------------------------------------------------------------->

###float getMinY()

<!--
_syntax: getMinY()_
_name: getMinY_
_returns: float_
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








_description: _


Returns the position of the smaller of the two sides of the rectangle perpendicular to the y axis as a float. 

Equivalent to ofRectangle::getTop().







<!----------------------------------------------------------------------------->

###float getPerimeter()

<!--
_syntax: getPerimeter()_
_name: getPerimeter_
_returns: float_
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








_description: _


Returns the perimeter of the ofRectangle as a float.
This is the sum of the lengths of the sides.

Example: 
~~~~{.cpp}

// Create a rectangle that is 100 units wide and 200 units tall
ofRectangle myRect(0,0,100,200);  

// Get the perimeter of that rectangle
float perimeterValue = myRect.getPerimeter();

// perimeterValue will be 600.0.
~~~~







<!----------------------------------------------------------------------------->

###ofPoint getPosition()

<!--
_syntax: getPosition()_
_name: getPosition_
_returns: ofPoint_
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








_description: _


Returns the (x,y) position of the ofRectangle as an ofPoint. 

Equivalent to ofRectangle::getPositionRef().







<!----------------------------------------------------------------------------->

###ofPoint & getPositionRef()

<!--
_syntax: getPositionRef()_
_name: getPositionRef_
_returns: ofPoint &_
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








_description: _


Returns the current (x,y) position of the ofRectangle as an ofPoint. 

Equivalent to ofRectangle::getPosition().







<!----------------------------------------------------------------------------->

###float getRight()

<!--
_syntax: getRight()_
_name: getRight_
_returns: float_
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








_description: _


Returns the position of the right of the ofRectangle as a float.

Equivalent to ofRectangle::getMaxX().







<!----------------------------------------------------------------------------->

###ofRectangle getStandardized()

<!--
_syntax: getStandardized()_
_name: getStandardized_
_returns: ofRectangle_
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








_description: _


If the ofRectangle is standardized, it returns itself.  Otherwise it returns a standardized copy of itself.

For more information about standardized rectangles, see the discussion at ofRectangle::standardize().







<!----------------------------------------------------------------------------->

###float getTop()

<!--
_syntax: getTop()_
_name: getTop_
_returns: float_
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








_description: _


Returns the position of the top of the ofRectangle as a float.

Equivalent to ofRectangle::getMinY().







<!----------------------------------------------------------------------------->

###ofPoint getTopLeft()

<!--
_syntax: getTopLeft()_
_name: getTopLeft_
_returns: ofPoint_
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








_description: _


Returns the (x,y) coordinates of the top left corner of the ofRectangle as an ofPoint. 

Equivalent to ofRectangle::getMin().







<!----------------------------------------------------------------------------->

###ofPoint getTopRight()

<!--
_syntax: getTopRight()_
_name: getTopRight_
_returns: ofPoint_
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








_description: _


Returns the (x,y) coordinates of the top right corner of the rectangle as an ofPoint.







<!----------------------------------------------------------------------------->

###ofRectangle getUnion(&rect)

<!--
_syntax: getUnion(&rect)_
_name: getUnion_
_returns: ofRectangle_
_returns_description: _
_parameters: const ofRectangle &rect_
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








_description: _


Return a new ofRectangle whose area contains both the area of the ofRectangle and that of the passed ofRectangle.







<!----------------------------------------------------------------------------->

###float getVertAnchor(anchor)

<!--
_syntax: getVertAnchor(anchor)_
_name: getVertAnchor_
_returns: float_
_returns_description: _
_parameters: ofAlignVert anchor_
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








_description: _


getVertAnchor is a convenience method that returns the value of one of the vertical edges of the ofRectangle 
using the ofAlignVert enum.  

Possible anchor values are:

__OF_ALIGN_VERT_IGNORE__  : returns 0.0  
__OF_ALIGN_VERT_TOP__     : returns the position of the upper edge, equivalent to ofRectangle::getTop().  
__OF_ALIGN_VERT_BOTTOM__  : returns the position of the bottom edge, equivalent to ofRectangle::getBottom().  
__OF_ALIGN_VERT_CENTER__  : returns the y position of the center of the ofRectangle.  

Any other anchor value will return 0.0.







<!----------------------------------------------------------------------------->

###float getWidth()

<!--
_syntax: getWidth()_
_name: getWidth_
_returns: float_
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








_description: _


Returns the width of the ofRectangle as a float.







<!----------------------------------------------------------------------------->

###float getX()

<!--
_syntax: getX()_
_name: getX_
_returns: float_
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








_description: _


Returns the x position of the ofRectangle as a float.







<!----------------------------------------------------------------------------->

###float getY()

<!--
_syntax: getY()_
_name: getY_
_returns: float_
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








_description: _


Returns the y position of the ofRectangle as a float.







<!----------------------------------------------------------------------------->

###void growToInclude(px, py)

<!--
_syntax: growToInclude(px, py)_
_name: growToInclude_
_returns: void_
_returns_description: _
_parameters: float px, float py_
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








_description: _


Modify the ofRectangle so that the x and y coordinates given are both enclosed within the rectangle.
This will potentially change the width, height, x position, and y position of the ofRectangle.







<!----------------------------------------------------------------------------->

###void growToInclude(&p)

<!--
_syntax: growToInclude(&p)_
_name: growToInclude_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p_
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








_description: _


Modify the ofRectangle so that the ofPoint given is enclosed within the rectangle.
This will potentially change the width, height, x position, and y position of the ofRectangle.







<!----------------------------------------------------------------------------->

###void growToInclude(&rect)

<!--
_syntax: growToInclude(&rect)_
_name: growToInclude_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &rect_
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








_description: _


Expand the ofRectangle so that the ofRectangle passed into the method is entirely enclosed by the current ofRectangle.
This will potentially change the width, height, x position, and y position of the current ofRectangle,
but will not modify the passed ofRectangle.







<!----------------------------------------------------------------------------->

###void growToInclude(&p0, &p1)

<!--
_syntax: growToInclude(&p0, &p1)_
_name: growToInclude_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p0, const ofPoint &p1_
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








_description: _


Modify the ofRectangle so that both the ofPoints given are enclosed within the rectangle.
This will potentially change the width, height, x position, and y position of the ofRectangle.







<!----------------------------------------------------------------------------->

###bool inside(px, py)

<!--
_syntax: inside(px, py)_
_name: inside_
_returns: bool_
_returns_description: _
_parameters: float px, float py_
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


Determines if the passed (x,y) coordinates are within the ofRectangle or not.
Returns true if the coordinates are inside the ofRectangle, false otherwise.

Note that coordinates on the edge of the ofRectangle are not considered within the rectangle and will return false.







<!----------------------------------------------------------------------------->

###bool inside(p)

<!--
_syntax: inside(p)_
_name: inside_
_returns: bool_
_returns_description: _
_parameters: const ofPoint &p_
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


Determines if the passed ofPoint is within the ofRectangle or not.
Returns true if the point is inside the rectangle, false otherwise.

Note that points on the edge of the ofRectangle are not considered within the rectangle and will return false.







<!----------------------------------------------------------------------------->

###bool inside(&rect)

<!--
_syntax: inside(&rect)_
_name: inside_
_returns: bool_
_returns_description: _
_parameters: const ofRectangle &rect_
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








_description: _


Determines if a passed ofRectangle is completely within the ofRectangle or not.
Returns true if the passed rectangle is contained within the ofRectangle, false otherwise.

Note that rectangles that share an edge with the ofRectangle are not considered within the rectangle and will return false.







<!----------------------------------------------------------------------------->

###bool inside(&p0, &p1)

<!--
_syntax: inside(&p0, &p1)_
_name: inside_
_returns: bool_
_returns_description: _
_parameters: const ofPoint &p0, const ofPoint &p1_
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








_description: _


Determines if both of the passed ofPoints are within the ofRectangle or not.
Returns true if both points are inside the rectangle, false otherwise.
Typically used for determining if a line segment is inside the rectangle.

Note that points on the edge of the ofRectangle are not considered within the rectangle and will return false.







<!----------------------------------------------------------------------------->

###bool intersects(&rect)

<!--
_syntax: intersects(&rect)_
_name: intersects_
_returns: bool_
_returns_description: _
_parameters: const ofRectangle &rect_
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








_description: _


Returns true if the area contained within the ofRectangle overlaps with the area contained within the passed ofRectangle,
returns false otherwise.

Rectangles that only share an edge and do not intersect otherwise are not considered to intersect and will return false.







<!----------------------------------------------------------------------------->

###bool intersects(&p0, &p1)

<!--
_syntax: intersects(&p0, &p1)_
_name: intersects_
_returns: bool_
_returns_description: _
_parameters: const ofPoint &p0, const ofPoint &p1_
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








_description: _


Returns true if the line segment defined by the two passed ofPoints either crosses the perimeter of the ofRectangle or is completely contained within.
returns false otherwise.







<!----------------------------------------------------------------------------->

###bool isEmpty()

<!--
_syntax: isEmpty()_
_name: isEmpty_
_returns: bool_
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








_description: _


Returns true if both the rectangle's width and height are 0, false if either is non-zero.







<!----------------------------------------------------------------------------->

###bool isStandardized()

<!--
_syntax: isStandardized()_
_name: isStandardized_
_returns: bool_
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








_description: _


Returns true if this ofRectangle is in the standardized form; that its width and height are
both positive.

For a discussion of the standardized form, see ofRectangle::standardize()  







<!----------------------------------------------------------------------------->

### ofRectangle()

<!--
_syntax: ofRectangle()_
_name: ofRectangle_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Construct a rectangle with zero width and zero height at 0, 0. 








_description: _








<!----------------------------------------------------------------------------->

### ofRectangle(_x, _y, _w, _h)

<!--
_syntax: ofRectangle(_x, _y, _w, _h)_
_name: ofRectangle_
_returns: _
_returns_description: _
_parameters: float px, float py, float w, float h_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Construct a rectangle using location and size. 


To produce consistent results, users are encouraged to initialize rectangles in the standardized form with width >=0 and height >= 0.










_description: _








<!----------------------------------------------------------------------------->

### ofRectangle(pos, w, h)

<!--
_syntax: ofRectangle(pos, w, h)_
_name: ofRectangle_
_returns: _
_returns_description: _
_parameters: const ofPoint &p, float w, float h_
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

Construct a rectangle from a point and dimensions. 


To produce consistent results, users are encouraged to initialize rectangles in the standardized form with width >=0 and height >= 0.










_description: _








<!----------------------------------------------------------------------------->

### ofRectangle(&r)

<!--
_syntax: ofRectangle(&r)_
_name: ofRectangle_
_returns: _
_returns_description: _
_parameters: const ofRectangle &rect_
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

Construct a rectangle by copying another rectangle. 


To produce consistent results, users are encouraged to initialize rectangles in the standardized form with width >=0 and height >= 0.










_description: _








<!----------------------------------------------------------------------------->

### ofRectangle(&p0, &p1)

<!--
_syntax: ofRectangle(&p0, &p1)_
_name: ofRectangle_
_returns: _
_returns_description: _
_parameters: const ofPoint &p0, const ofPoint &p1_
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

Construct a rectangle by defining two corners. 











_description: _








<!----------------------------------------------------------------------------->

###bool operator!=(&r)

<!--
_syntax: operator!=(&r)_
_name: operator!=_
_returns: bool_
_returns_description: _
_parameters: const ofRectangle &rect_
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


If the two ofRectangles differ in x, y, width, or height, they are considered unequal.







<!----------------------------------------------------------------------------->

###ofRectangle operator+(&point)

<!--
_syntax: operator+(&point)_
_name: operator+_
_returns: ofRectangle_
_returns_description: _
_parameters: const ofPoint &p_
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


Returns a new ofRectangle where the x and y positions of the rectangle are offset by the (x,y) coordinates of the ofPoint.







<!----------------------------------------------------------------------------->

###ofRectangle & operator=(&rect)

<!--
_syntax: operator=(&rect)_
_name: operator=_
_returns: ofRectangle &_
_returns_description: _
_parameters: const ofRectangle &rect_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###bool operator==(&r)

<!--
_syntax: operator==(&r)_
_name: operator==_
_returns: bool_
_returns_description: _
_parameters: const ofRectangle &rect_
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


If both ofRectangles have the same x, y, width, and height, they are considered equal.







<!----------------------------------------------------------------------------->

###void scale(s)

<!--
_syntax: scale(s)_
_name: scale_
_returns: void_
_returns_description: _
_parameters: float s_
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

Scale the rectangle. 


Scaling will scale the width and the height, but will not change the position.










_description: _


Uniformly scales the ofRectangle by multiplying both the current width and current height with the passed-in float.







<!----------------------------------------------------------------------------->

###void scale(sX, sY)

<!--
_syntax: scale(sX, sY)_
_name: scale_
_returns: void_
_returns_description: _
_parameters: float sX, float sY_
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

Scale the rectangle. 


Scaling will scale the width and the height, but will not change the position.










_description: _


Scales the width and height of the ofRectangle by multiplying the current width and height with the passed-in floats.







<!----------------------------------------------------------------------------->

###void scale(&s)

<!--
_syntax: scale(&s)_
_name: scale_
_returns: void_
_returns_description: _
_parameters: const ofPoint &s_
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

Scale the rectangle. 


Scaling will scale the width and the height, but will not change the position.










_description: _


Scales the width and height of the ofRectangle by multiplying the current width and 
height with the (x,y) coordinates of the passed-in ofPoint.







<!----------------------------------------------------------------------------->

###void scaleFromCenter(s)

<!--
_syntax: scaleFromCenter(s)_
_name: scaleFromCenter_
_returns: void_
_returns_description: _
_parameters: float s_
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








_description: _


Uniformly scales the ofRectangle from its center point.  
The center point of the rectangle will remain fixed and the width, height, x, and y will be adjusted.







<!----------------------------------------------------------------------------->

###void scaleFromCenter(sX, sY)

<!--
_syntax: scaleFromCenter(sX, sY)_
_name: scaleFromCenter_
_returns: void_
_returns_description: _
_parameters: float sX, float sY_
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








_description: _


Scales both the width and height the ofRectangle from its center point.  
The center point of the rectangle will remain fixed and the width, height, x, and y will be adjusted.







<!----------------------------------------------------------------------------->

###void scaleFromCenter(&s)

<!--
_syntax: scaleFromCenter(&s)_
_name: scaleFromCenter_
_returns: void_
_returns_description: _
_parameters: const ofPoint &s_
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








_description: _


Scales both the width and height the ofRectangle from its center point.  
The center point of the rectangle will remain fixed and the width, height, x, and y will be adjusted.







<!----------------------------------------------------------------------------->

###void scaleHeight(sY)

<!--
_syntax: scaleHeight(sY)_
_name: scaleHeight_
_returns: void_
_returns_description: _
_parameters: float sY_
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








_description: _


Scales the height of the ofRectangle by multiplying the current height with the passed-in float.







<!----------------------------------------------------------------------------->

###void scaleTo(&targetRect, scaleMode = OF_SCALEMODE_FIT)

<!--
_syntax: scaleTo(&targetRect, scaleMode = OF_SCALEMODE_FIT)_
_name: scaleTo_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &targetRect, ofScaleMode scaleMode=OF_SCALEMODE_FIT_
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








_description: _


Adjusts the ofRectangle to match the passed-in ofRectangle using the passed-in ofScaleMode.

Assuming the ofRectangle as the Subject and the passed-in ofRectangle as the Target:

__OF_SCALEMODE_FIT__:  
This centers the Subject rectangle within the Target rectangle, and resizes the Subject rectangle to completely fit within the Target Rectangle.	

  * It fits the Subject rectangle inside the target rectangle.
  * It preserves Subject's aspect ratio.
  * The Subject's final area <= the Target's area.
  * The Subject's center == the Target's center.

__OF_SCALEMODE_FILL__:  
This centers the Subject rectangle within the Target rectangle, and resizes the Subject rectangle to completely encompass the Target Rectangle.

  * It fills the Target rectangle with the Subject rectangle.
  * It preserves the Subject's aspect ratio.
  * The Subject's Area >= the Target's area.
  * The Subject's center == the Target's center.

__OF_SCALEMODE_CENTER__:  
This centers the Subject rectangle within the Target rectangle, and does not modify the Subject's scale.

  * It preserves the Subject's aspect ratio.
  * The Subject's area is unchanged.
  * The Subject's center == Target's center.

__OF_SCALEMODE_STRETCH_TO_FILL__:  
This simply modifies the Subject rectangle to match the Target rectangle's dimensions.

  * It can change the Subject's aspect ratio.
  * The Subject's area == the Target's area.
  * The Subject's center == the Target's center.

For a working example of the various ofScaleModes, see the *graphics/rectangleAlignmentAndScaling/* example within the examples directory.







<!----------------------------------------------------------------------------->

###void scaleTo(&targetRect, subjectAspectRatioMode, sharedHorzAnchor = OF_ALIGN_HORZ_CENTER, sharedVertAnchor = OF_ALIGN_VERT_CENTER)

<!--
_syntax: scaleTo(&targetRect, subjectAspectRatioMode, sharedHorzAnchor = OF_ALIGN_HORZ_CENTER, sharedVertAnchor = OF_ALIGN_VERT_CENTER)_
_name: scaleTo_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &targetRect, ofAspectRatioMode subjectAspectRatioMode, ofAlignHorz sharedHorzAnchor=OF_ALIGN_HORZ_CENTER, ofAlignVert sharedVertAnchor=OF_ALIGN_VERT_CENTER_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Adjusts the ofRectangle to match the passed-in ofRectangle.  It will use the ofAspectRatioMode to scale the ofRectangle, and will use the use the alignment anchor parameters to position the rectangle.

This is a convenience method when both the target and subject rectangles are using the same alignment anchors.  For a more complete explanation, see below.  For a working example of how to use ofAspectRatioMode, ofAlignVert, and ofAlignHorz, see the *graphics/rectangleAlignmentAndScaling/* example within the examples directory.







<!----------------------------------------------------------------------------->

###void scaleTo(&targetRect, subjectAspectRatioMode, modelHorzAnchor, modelVertAnchor, subjectHorzAnchor, subjectVertAnchor)

<!--
_syntax: scaleTo(&targetRect, subjectAspectRatioMode, modelHorzAnchor, modelVertAnchor, subjectHorzAnchor, subjectVertAnchor)_
_name: scaleTo_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &targetRect, ofAspectRatioMode subjectAspectRatioMode, ofAlignHorz modelHorzAnchor, ofAlignVert modelVertAnchor, ofAlignHorz subjectHorzAnchor, ofAlignVert subjectVertAnchor_
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








_description: _


Adjusts the ofRectangle to match the passed-in ofRectangle.  It will use the ofAspectRatioMode to scale the ofRectangle, and will use the use the alignment anchor parameters to position the rectangle.

Assuming the ofRectangle as the Subject and the passed-in ofRectangle as the Target:

__ofAspectRatioMode Options:__

__OF_ASPECT_RATIO_IGNORE__            : Sets the Subject rectangle's width and height to match those of the Target.  
__OF_ASPECT_RATIO_KEEP__              : Resizes the Subject rectangle to completely fit within the Target rectangle.  
__OF_ASPECT_RATIO_KEEP_BY_EXPANDING__ : Resizes the Subject rectangle to completely enclose the Target rectangle.

__ofAlignHorz Options:__

__OF_ALIGN_HORZ_IGNORE__              : Does not perform any horizontal alignment.  
__OF_ALIGN_HORZ_LEFT__                : Uses the left edge of the rectangle to horizontally anchor the alignment.
__OF_ALIGN_HORZ_RIGHT__               : Uses the right edge of the rectangle to horizontally anchor the alignment.
__OF_ALIGN_HORZ_CENTER__              : Uses the center of the rectangle to horizontally anchor the alignment.  

__ofAlignVert Options:__

__OF_ALIGN_VERT_IGNORE__              : Does not perform any vertical alignment.  
__OF_ALIGN_VERT_TOP__                 : Uses the upper edge of the rectangle to vertically anchor the alignment.  
__OF_ALIGN_VERT_BOTTOM__              : Uses the bottom edge of the rectangle to vertically anchor the alignment.  
__OF_ALIGN_VERT_CENTER__              : Uses the center of the rectangle to vertically anchor the alignment.

For a working example of how to use ofAspectRatioMode, ofAlignVert, and ofAlignHorz, see the *graphics/rectangleAlignmentAndScaling/* example within the examples directory.







<!----------------------------------------------------------------------------->

###void scaleWidth(sX)

<!--
_syntax: scaleWidth(sX)_
_name: scaleWidth_
_returns: void_
_returns_description: _
_parameters: float sX_
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








_description: _


Scales the width of the ofRectangle by multiplying the current width with the passed-in float.







<!----------------------------------------------------------------------------->

###void set(px, py, w, h)

<!--
_syntax: set(px, py, w, h)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float px, float py, float w, float h_
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

Set the position and size of a rectangle. 


To produce consistent results, users are encouraged to initialize rectangles in the standardized form with width >=0 and height >= 0.










_description: _


Sets the x position, y position, width, and height of the ofRectangle.







<!----------------------------------------------------------------------------->

###void set(pos, w, h)

<!--
_syntax: set(pos, w, h)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float w, float h_
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

Set the position and size of a rectangle. 


To produce consistent results, users are encouraged to initialize rectangles in the standardized form with width >=0 and height >= 0.










_description: _


Sets the (x,y) coordinates, width, and height of the ofRectangle.







<!----------------------------------------------------------------------------->

###void set(&rect)

<!--
_syntax: set(&rect)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &rect_
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

Set the position and size of a rectangle by defining two corners. 











_description: _


Sets the x position, y position, width, and height of the ofRectangle to match those of the passed ofRectangle.







<!----------------------------------------------------------------------------->

###void set(&p0, &p1)

<!--
_syntax: set(&p0, &p1)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p0, const ofPoint &p1_
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

Set the position and size of a rectangle using corners. 











_description: _


Sets the x position, y position, width, and height of the ofRectangle to enclose the line segment defined by the passed ofPoints.

The rectangle will always be in standardized form, regardless of the order of the ofPoints passed in.







<!----------------------------------------------------------------------------->

###void setFromCenter(px, py, w, h)

<!--
_syntax: setFromCenter(px, py, w, h)_
_name: setFromCenter_
_returns: void_
_returns_description: _
_parameters: float px, float py, float w, float h_
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

Set position and size of a rectangle from the center. 


The center of the rectangle is defined and the width and height grow out around the center.










_description: _


Sets the position, width, and height of the ofRectangle.  
The x and y position passed into the function determine the center point of the ofRectangle.







<!----------------------------------------------------------------------------->

###void setFromCenter(pos, w, h)

<!--
_syntax: setFromCenter(pos, w, h)_
_name: setFromCenter_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float w, float h_
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

Set position and size of a rectangle from the center. 


The center of the rectangle is defined and the width and height grow out around the center.










_description: _


Sets the position, width, and height of the ofRectangle.  
The (x,y) coordinates passed into the function determine the center point of the ofRectangle.







<!----------------------------------------------------------------------------->

###void setHeight(h)

<!--
_syntax: setHeight(h)_
_name: setHeight_
_returns: void_
_returns_description: _
_parameters: float h_
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

Set the height of a rectangle. 











_description: _


Sets the height of the ofRectangle.







<!----------------------------------------------------------------------------->

###void setPosition(px, py)

<!--
_syntax: setPosition(px, py)_
_name: setPosition_
_returns: void_
_returns_description: _
_parameters: float px, float py_
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

Set the position of a rectangle. 











_description: _


Sets the (x,y) position of the ofRectangle by passing in x and y as floats.







<!----------------------------------------------------------------------------->

###void setPosition(&p)

<!--
_syntax: setPosition(&p)_
_name: setPosition_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p_
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

Set the position of a rectangle. 











_description: _


Sets the (x,y) position of the ofRectangle by passing in x and y as an ofPoint.







<!----------------------------------------------------------------------------->

###void setWidth(w)

<!--
_syntax: setWidth(w)_
_name: setWidth_
_returns: void_
_returns_description: _
_parameters: float w_
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

Set the width of a rectangle. 











_description: _


Sets the width of the ofRectangle.







<!----------------------------------------------------------------------------->

###void setX(px)

<!--
_syntax: setX(px)_
_name: setX_
_returns: void_
_returns_description: _
_parameters: float px_
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

Set the x position of a rectangle. 











_description: _


Sets the x position of the ofRectangle.







<!----------------------------------------------------------------------------->

###void setY(py)

<!--
_syntax: setY(py)_
_name: setY_
_returns: void_
_returns_description: _
_parameters: float py_
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

Set the y position of a rectangle. 











_description: _


Sets the y position of the ofRectangle.







<!----------------------------------------------------------------------------->

###void standardize()

<!--
_syntax: standardize()_
_name: standardize_
_returns: void_
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








_description: _


ofRectangle is a simple container for describing the position
and size of 2D rectangles. Like many rectangle data structures
found in other frameworks and graphics libraries, member
width and height variables can take negative values.
Additionally, x / y position and width / height are publicly
accessible, resulting in great programming freedom.
Consequently, two visually identical rectangles can be
represented in the following ways:

~~~~{.cpp}
ofRectangle myRect(0,0,100,100);
// OR
ofRectangle myRect(100,100,-100,-100);
~~~~

While both representations will yield the same visual
results in all openFrameworks renderers, the results of
some method operations that modify x / y / width / height
(such as scaling) produce mathematically correct, but
visually different results for each of the above
representations.

"Standardized" rectangles are rectangles whose width >= 0 and height >= 0.
This method can be used to ensure that the rectangle is "standardized".
If the rectangle is non-standard, it will modify the x / width and y / height
values into their respective standardized versions.







<!----------------------------------------------------------------------------->

###void translate(dx, dy)

<!--
_syntax: translate(dx, dy)_
_name: translate_
_returns: void_
_returns_description: _
_parameters: float dx, float dy_
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

Translate the rectangle's position by an x and y amount. 











_description: _


Offsets the position of the ofRectangle in the both the x and y dimensions by passing in two floats.







<!----------------------------------------------------------------------------->

###void translate(&dp)

<!--
_syntax: translate(&dp)_
_name: translate_
_returns: void_
_returns_description: _
_parameters: const ofPoint &dp_
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

Translate the rectangle's position by an x and y amount. 











_description: _


Offsets the position of the ofRectangle in the both the x and y dimensions by passing in an ofPoint. 







<!----------------------------------------------------------------------------->

###void translateX(dx)

<!--
_syntax: translateX(dx)_
_name: translateX_
_returns: void_
_returns_description: _
_parameters: float dx_
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

Translate the x position of the rectangle. 











_description: _


Offsets the position of the ofRectangle in the x dimension by a given amount. 







<!----------------------------------------------------------------------------->

###void translateY(dy)

<!--
_syntax: translateY(dy)_
_name: translateY_
_returns: void_
_returns_description: _
_parameters: float dy_
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

Translate the y position of the rectangle. 











_description: _


Offsets the position of the ofRectangle in the y dimension by a given amount.







<!----------------------------------------------------------------------------->

### ~ofRectangle()

<!--
_syntax: ~ofRectangle()_
_name: ~ofRectangle_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Destroy the rectangle. 








_description: _








<!----------------------------------------------------------------------------->

##Variables



###float height

<!--
_name: height_
_type: float_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


The height variable contains the height of the ofRectangle.







<!----------------------------------------------------------------------------->

###ofPoint position

<!--
_name: position_
_type: ofPoint_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


The position variable contains the (x,y) position of the ofRectangle as an ofPoint.







<!----------------------------------------------------------------------------->

###float width

<!--
_name: width_
_type: float_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


THe width variable contains the width of the ofRectangle.







<!----------------------------------------------------------------------------->

###float x

<!--
_name: x_
_type: float_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


the x variable contains the x position of the ofRectangle.







<!----------------------------------------------------------------------------->

###float y

<!--
_name: y_
_type: float_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


The y variable contains the y position of the ofRectangle.







<!----------------------------------------------------------------------------->

