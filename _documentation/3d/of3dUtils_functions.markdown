#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###void ofDrawArrow(&start, &end, headSize = 0.05f)

<!--
_syntax: ofDrawArrow(&start, &end, headSize = 0.05f)_
_name: ofDrawArrow_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &start, const ofVec3f &end, float headSize=0.05f_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws an arrow with the current color.

This function draws an arrow from a start (tail) point to an end (head)
point, with a conical arrowhead at the end point. The arrow is drawn in the
current color (e.g. set with ofSetColor).

~~~~{.cpp}
    ofSetColor(0,0,0);
    ofVec3f arrowTailPoint (0,0,0);
    ofVec3f arrowHeadPoint (100, 150,0);
    ofDrawArrow(arrowTailPoint, arrowHeadPoint, 20.0);
~~~~


Parameters:
start The start point (tail) of the arrow, expressed as an ofVec3f.
end The end point (head) of the arrow, expressed as an ofVec3f.
headSize The size of the arrowhead.







_description: _








<!----------------------------------------------------------------------------->

###void ofDrawAxis(size)

<!--
_syntax: ofDrawAxis(size)_
_name: ofDrawAxis_
_returns: void_
_returns_description: _
_parameters: float size_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


Parameters:
size The size at which to draw the axes.







_description: _








<!----------------------------------------------------------------------------->

###void ofDrawRotationAxes(radius, stripWidth = 10, circleRes = 60)

<!--
_syntax: ofDrawRotationAxes(radius, stripWidth = 10, circleRes = 60)_
_name: ofDrawRotationAxes_
_returns: void_
_returns_description: _
_parameters: float radius, float stripWidth, int circleRes=60_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

This function renders a set of 3 axis-aligned circular bands, centered at the origin.


Parameters:
radius The radius of the circular bands.
stripWidth The width of the circular bands. The default is 10 units.
circleRes The resolution of the circular bands. The default is 60 segments.







_description: _








<!----------------------------------------------------------------------------->

###void ofDrawRotationAxes(radius, stripWidth = 10, circleRes = 60)

<!--
_syntax: ofDrawRotationAxes(radius, stripWidth = 10, circleRes = 60)_
_name: ofDrawRotationAxes_
_returns: void_
_returns_description: _
_parameters: float radius, float stripWidth, int circleRes=60_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

This function renders a set of 3 axis-aligned circular bands, centered at the origin.


Parameters:
radius The radius of the circular bands.
stripWidth The width of the circular bands. The default is 10 units.
circleRes The resolution of the circular bands. The default is 60 segments.







_description: _








<!----------------------------------------------------------------------------->

###void ofDrawRotationAxes(radius, stripWidth = 10, circleRes = 60)

<!--
_syntax: ofDrawRotationAxes(radius, stripWidth = 10, circleRes = 60)_
_name: ofDrawRotationAxes_
_returns: void_
_returns_description: _
_parameters: float radius, float stripWidth, int circleRes=60_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

This function renders a set of 3 axis-aligned circular bands, centered at the origin.


Parameters:
radius The radius of the circular bands.
stripWidth The width of the circular bands. The default is 10 units.
circleRes The resolution of the circular bands. The default is 60 segments.







_description: _








<!----------------------------------------------------------------------------->

