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

###void ofDrawGrid(stepSize = 1.25f, numberOfSteps, labels = false, x = true, y = true, z = true)

<!--
_syntax: ofDrawGrid(stepSize = 1.25f, numberOfSteps, labels = false, x = true, y = true, z = true)_
_name: ofDrawGrid_
_returns: void_
_returns_description: _
_parameters: float stepSize=1.25f, size_t numberOfSteps, bool labels=false, bool x=true, bool y=true, bool z=true_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws grid planes representing the current reference frame.

This function draws a set of three double-ended grid planes centered at the
origin. Parameters allow each of the grid planes (yz,xz, and xy) to be
turned on or off. Optionally, the function can include white numeric labels
for grid subdivisions. (Numeric labels are drawn using ofDrawBitmapString
internally.)

The yz plane (at x=0) is drawn in red.
The xz plane (at y=0) is drawn in green.
The xy plane (at z=0) is drawn in blue.


Parameters:
stepSize distance between (parallel) lines on the grid
numberOfSteps number of lines to draw on each side of the central axis of the grid. A number of 8 will draw 8 lines on each side of the central axis, plus one line at the central axis.
labels Whether or not labels are drawn.
x Whether or not the yz plane (at x=0) is drawn.
y Whether or not the xz plane (at y=0) is drawn.
z Whether or not the xy plane (at z=0) is drawn.





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawGridPlane(stepSize = 1.25f, numberOfSteps, labels = false)

<!--
_syntax: ofDrawGridPlane(stepSize = 1.25f, numberOfSteps, labels = false)_
_name: ofDrawGridPlane_
_returns: void_
_returns_description: _
_parameters: float stepSize=1.25f, size_t numberOfSteps, bool labels=false_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws the YZ grid plane representing the current reference frame.

This function draws the YZ grid plane, at x=0, in a double-ended manner
centered at the origin. Optionally, the function can include white numeric
labels for grid subdivisions. (Numeric labels are drawn using
ofDrawBitmapString internally.) The grid is drawn with the current color
(i.e. set with ofSetColor).


Parameters:
stepSize distance between (parallel) lines on the grid
numberOfSteps number of lines to draw on each side of the central axis of the grid. A number of 8 will draw 8 lines on each side of the central axis, plus one line at the central axis.
labels Whether or not labels are drawn.





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

