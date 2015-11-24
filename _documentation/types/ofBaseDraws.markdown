#class ofBaseDraws


<!--
_visible: True_
_advanced: True_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description





##Methods



###void draw(x, y)

<!--
_syntax: draw(x, y)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y_
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

Draw at a position at the native size.

Native size is determined by getWidth() and getHeight().


Parameters:
x Draw position on the x axis.
y Draw position on the y axis.





_description: _







<!----------------------------------------------------------------------------->

###void draw(x, y, w, h)

<!--
_syntax: draw(x, y, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h_
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

Draw at a position with the specified size.


Parameters:
x Draw position on the x axis.
y Draw position on the y axis.
w Draw width.
h Draw height.





_description: _







<!----------------------------------------------------------------------------->

###void draw(&point)

<!--
_syntax: draw(&point)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPoint &point_
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

Draw at a position at the native size.

Native size is determined by getWidth() and getHeight().


Parameters:
point Draw position.





_description: _







<!----------------------------------------------------------------------------->

###void draw(&rect)

<!--
_syntax: draw(&rect)_
_name: draw_
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

Draw at a position and size specified by a rectangle.


Parameters:
rect Draw position and size.





_description: _







<!----------------------------------------------------------------------------->

###void draw(&point, w, h)

<!--
_syntax: draw(&point, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPoint &point, float w, float h_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw at a position.


Parameters:
point Draw position.
w Draw width.
h Draw height.





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
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the height.

Returns: the height.





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
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the width.

Returns: the width.





_description: _







<!----------------------------------------------------------------------------->

###void resetAnchor()

<!--
_syntax: resetAnchor()_
_name: resetAnchor_
_returns: void_
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

Reset the anchor point to (0, 0).





_description: _







<!----------------------------------------------------------------------------->

###void setAnchorPercent(xPct, yPct)

<!--
_syntax: setAnchorPercent(xPct, yPct)_
_name: setAnchorPercent_
_returns: void_
_returns_description: _
_parameters: float xPct, float yPct_
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

Set the anchor point the item is drawn around as a percentage.

This can be useful if you want to rotate an image around a particular
point.


Parameters:
xPct Horizontal position as a percentage (0 - 1).
yPct Vertical position as a percentage (0 - 1).





_description: _







<!----------------------------------------------------------------------------->

###void setAnchorPoint(x, y)

<!--
_syntax: setAnchorPoint(x, y)_
_name: setAnchorPoint_
_returns: void_
_returns_description: _
_parameters: float x, float y_
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

Set the anchor point the item is drawn around in pixels.

This can be useful if you want to rotate an image around a particular
point.


Parameters:
x Horizontal texture position in pixels.
y Vertical texture position in pixels.





_description: _







<!----------------------------------------------------------------------------->

### ~ofBaseDraws()

<!--
_syntax: ~ofBaseDraws()_
_name: ~ofBaseDraws_
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

Destroy the abstract object.





_description: _







<!----------------------------------------------------------------------------->

##Variables



