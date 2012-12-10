#class ofRectangle


##Description


ofRectangle class contains information about how a rectangle is in openFrameworks. Basically the class contains the position and the size of a rectangle. 





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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint getPositionRef()

<!--
_syntax: getPositionRef()_
_name: getPositionRef_
_returns: ofPoint_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofRectangle operator=(&rect)

<!--
_syntax: operator=(&rect)_
_name: operator=_
_returns: ofRectangle_
_returns_description: _
_parameters: const ofRectangle &rect_
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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void scaleTo(&targetRect, subjectAspectRatioMode, sharedHorzAnchor = OF_ALIGN_HORZ_CENTER, sharedVertAnchor = OF_ALIGN_VERT_CENTER)

<!--
_syntax: scaleTo(&targetRect, subjectAspectRatioMode, sharedHorzAnchor = OF_ALIGN_HORZ_CENTER, sharedVertAnchor = OF_ALIGN_VERT_CENTER)_
_name: scaleTo_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &targetRect, ofAspectRatioMode subjectAspectRatioMode, ofAlignHorz sharedHorzAnchor=OF_ALIGN_HORZ_CENTER, ofAlignVert sharedVertAnchor=OF_ALIGN_VERT_CENTER_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

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


height variable contains the height of our ofRectangle.







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


width variable contains the width of our ofRectangle.







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


x variable contains the x coordinate of our ofRectangle.







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


y variable contains the y coordinate of our ofRectangle.







<!----------------------------------------------------------------------------->

