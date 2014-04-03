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

This function draws an arrow from a start (tail) point to an end (head) point, with a conical arrowhead at the end point. The arrow is drawn in the current color (e.g. set with ofSetColor).

Example: 







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

Draws x,y,z axes representing the current reference frame. 

This function draws a set of x,y,z axes, which can be helpful for understanding which way is up. There are no unit markings nor arrowheads. Axes are not drawn in the negative directions. Axes are drawn in red (+x), green (+y) and blue (+z), starting from the origin. 







_description: _








<!----------------------------------------------------------------------------->

###void ofDrawGrid(scale = 10.0f, ticks = 8.0f, labels = false, x = true, y = true, z = true)

<!--
_syntax: ofDrawGrid(scale = 10.0f, ticks = 8.0f, labels = false, x = true, y = true, z = true)_
_name: ofDrawGrid_
_returns: void_
_returns_description: _
_parameters: float scale=10.0f, float ticks=8.0f, bool labels=false, bool x=true, bool y=true, bool z=true_
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

This function draws a set of three double-ended grid planes centered at the origin. Parameters allow each of the grid planes (yz,xz, and xy) to be turned on or off. Optionally, the function can include white numeric labels for grid subdivisions. (Numeric labels are drawn using ofDrawBitmapString internally.)

The yz plane (at x=0) is drawn in red. The xz plane (at y=0) is drawn in green. The xy plane (at z=0) is drawn in blue.







_description: _








<!----------------------------------------------------------------------------->

###void ofDrawGridPlane(scale, ticks = 8.0f, labels = false)

<!--
_syntax: ofDrawGridPlane(scale, ticks = 8.0f, labels = false)_
_name: ofDrawGridPlane_
_returns: void_
_returns_description: _
_parameters: float scale, float ticks=8.0f, bool labels=false_
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

This function draws the YZ grid plane, at x=0, in a double-ended manner centered at the origin. Optionally, the function can include white numeric labels for grid subdivisions. (Numeric labels are drawn using ofDrawBitmapString internally.) The grid is drawn with the current color (i.e. set with ofSetColor).







_description: _








<!----------------------------------------------------------------------------->

###void ofDrawRotationAxes(radius, stripWidth = 10, circleRes = 60)

<!--
_syntax: ofDrawRotationAxes(radius, stripWidth = 10, circleRes = 60)_
_name: ofDrawRotationAxes_
_returns: void_
_returns_description: _
_parameters: float radius, float stripWidth=10, int circleRes=60_
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







_description: _








<!----------------------------------------------------------------------------->

