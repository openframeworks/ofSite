#class ofStyle


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

Contains general information about the style of ofGraphics
elements such as color, line width and others.





##Description

ofStyle class contains general information about the style of our ofGraphics elements such as color, line width and others.





##Methods



### ofStyle()

<!--
_syntax: ofStyle()_
_name: ofStyle_
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

Create a default ofStyle.





_description: _







<!----------------------------------------------------------------------------->

### ~ofStyle()

<!--
_syntax: ~ofStyle()_
_name: ~ofStyle_
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

 Destroy the ofStyle.





_description: _







<!----------------------------------------------------------------------------->

##Variables



###bool bFill

<!--
_name: bFill_
_type: bool_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

True if the renderer should fill a rendered shape.

If true, the renderer will fill the rendered shape.  If false, the
renderer will draw the outline of the rendered shape.





_description: _

bFill variable contains information about how the graphics have to be drawed: Fill or noFill(empty)





<!----------------------------------------------------------------------------->

###ofColor bgColor

<!--
_name: bgColor_
_type: ofColor_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

The background color used when rendering.





_description: _







<!----------------------------------------------------------------------------->

###ofBlendMode blendingMode

<!--
_name: blendingMode_
_type: ofBlendMode_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

 The blending mode.





_description: _







<!----------------------------------------------------------------------------->

###int circleResolution

<!--
_name: circleResolution_
_type: int_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _

circleResolution variable contains the resolution of a ofDrawCircle.





<!----------------------------------------------------------------------------->

###ofColor color

<!--
_name: color_
_type: ofColor_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The color used when rendering.

This style depends on the state of the ofStyle::bFill.





_description: _

color variable contain the color information for the style object.





<!----------------------------------------------------------------------------->

###int curveResolution

<!--
_name: curveResolution_
_type: int_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofDrawBitmapMode drawBitmapMode

<!--
_name: drawBitmapMode_
_type: ofDrawBitmapMode_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

The render mode for bitmaps (e.g. ofDrawBitmapString).


See also: ofDrawBitmapString(const T& textString, float x, float y)





_description: _







<!----------------------------------------------------------------------------->

###float lineWidth

<!--
_name: lineWidth_
_type: float_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The width of rendered lines.

Warning: This is not currently implemented in modern OF renderers.





_description: _

lineWidth contains information about the width of the line for our ofDrawLine.





<!----------------------------------------------------------------------------->

###int polyMode

<!--
_name: polyMode_
_type: int_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The current rendering mode for polygons.

ofPolyWindingMode determines how ovelapping parts of the same
polygon are rendered.


See also: ofPolyWindingMode





_description: _

polyMode variable contains information about the drawing behavior for ovelapping parts of the same polygon when we create a shape.

Possible modes are:
OF_POLY_WINDING_ODD -
OF_POLY_WINDING_NONZERO -
OF_POLY_WINDING_POSITIVE -
OF_POLY_WINDING_NEGATIVE -
OF_POLY_WINDING_ABS_GEQ_TWO -





<!----------------------------------------------------------------------------->

###int rectMode

<!--
_name: rectMode_
_type: int_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

Determine how some shapes are anchored (e.g. ofDrawEllipse).

The rectMode applies to several shapes, including ofDrawRectangle
and ofDrawEllipse.  If the current rectMode is `OF_RECTMODE_CENTER`,
the rendered shape will be drawn with x, y in the center of the
shape. If the current rectMode is `OF_RECTMODE_CORNER`, the
rendered shape will be drawn with the x, y in the upper-left-hand
corner of the shape.





_description: _

rectMode contains information about the mode for drawing rectangles.
If they are corner aligned, or drawn so that the x,y position is the center of the rectangle. Possible options are OF_RECTMODE_CENTER and OF_RECTMODE_CORNER





<!----------------------------------------------------------------------------->

###bool smoothing

<!--
_name: smoothing_
_type: bool_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

True if anti-aliasing is enabled.





_description: _

smoothing variable contains the information about if smoothing effect is activated or not.





<!----------------------------------------------------------------------------->

###int sphereResolution

<!--
_name: sphereResolution_
_type: int_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->
