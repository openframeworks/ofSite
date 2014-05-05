#class ofBoxPrimitive


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

The ofBoxPrimitive allows you to create cubes and cuboids.

Like other primitives, it allows you to set its dimensions and position, draw it, etc. As a simple example:

~~~~{.cpp}

void setup()
{

	box.set( boxSize );
	// or
	// box.set( boxHeight, boxWidth, boxDepth );
}

void draw()
{

	box.setPosition(ofGetWidth()*.2, ofGetHeight()*.75, 0);
	box.rotate(spinX, 1.0, 0.0, 0.0);
	box.rotate(spinY, 0, 1.0, 0.0);

	// get all the faces from the icoSphere, handy when you want to copy
	// individual vertices or tweak them a little ;)
	vector<ofMeshFace> triangles = box.getMesh().getUniqueFaces();

	// now draw
	box.draw();
}
~~~~

To draw a texture over any primitive, simply bind the ofTexture instance and then draw your primitive:

~~~~{.cpp}

texture.getTextureReference().bind();
// now draw
box.draw();

~~~~





##Methods



###float getDepth()

<!--
_syntax: getDepth()_
_name: getDepth_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###ofVec3f getResolution()

<!--
_syntax: getResolution()_
_name: getResolution_
_returns: ofVec3f_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###int getResolutionDepth()

<!--
_syntax: getResolutionDepth()_
_name: getResolutionDepth_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###int getResolutionHeight()

<!--
_syntax: getResolutionHeight()_
_name: getResolutionHeight_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###int getResolutionWidth()

<!--
_syntax: getResolutionWidth()_
_name: getResolutionWidth_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###vector< ofIndexType > getSideIndices(sideIndex)

<!--
_syntax: getSideIndices(sideIndex)_
_name: getSideIndices_
_returns: vector< ofIndexType >_
_returns_description: _
_parameters: int sideIndex_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###ofMesh getSideMesh(sideIndex)

<!--
_syntax: getSideMesh(sideIndex)_
_name: getSideMesh_
_returns: ofMesh_
_returns_description: _
_parameters: int sideIndex_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###ofVec3f getSize()

<!--
_syntax: getSize()_
_name: getSize_
_returns: ofVec3f_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

### ofBoxPrimitive()

<!--
_syntax: ofBoxPrimitive()_
_name: ofBoxPrimitive_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

### ofBoxPrimitive(width, height, depth, resWidth = 2, resHeight = 2, resDepth = 2)

<!--
_syntax: ofBoxPrimitive(width, height, depth, resWidth = 2, resHeight = 2, resDepth = 2)_
_name: ofBoxPrimitive_
_returns: _
_returns_description: _
_parameters: float width, float height, float depth, int resWidth=2, int resHeight=2, int resDepth=2_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void resizeToTexture(&inTexture)

<!--
_syntax: resizeToTexture(&inTexture)_
_name: resizeToTexture_
_returns: void_
_returns_description: _
_parameters: ofTexture &inTexture_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void set(width, height, depth, resWidth, resHeight, resDepth)

<!--
_syntax: set(width, height, depth, resWidth, resHeight, resDepth)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float width, float height, float depth, int resWidth, int resHeight, int resDepth_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void set(width, height, depth)

<!--
_syntax: set(width, height, depth)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float width, float height, float depth_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void set(size)

<!--
_syntax: set(size)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float size_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setDepth(a_depth)

<!--
_syntax: setDepth(a_depth)_
_name: setDepth_
_returns: void_
_returns_description: _
_parameters: float a_depth_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setHeight(a_height)

<!--
_syntax: setHeight(a_height)_
_name: setHeight_
_returns: void_
_returns_description: _
_parameters: float a_height_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setMode(mode)

<!--
_syntax: setMode(mode)_
_name: setMode_
_returns: void_
_returns_description: _
_parameters: ofPrimitiveMode mode_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setResolution(res)

<!--
_syntax: setResolution(res)_
_name: setResolution_
_returns: void_
_returns_description: _
_parameters: int res_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setResolution(resWidth, resHeight, resDepth)

<!--
_syntax: setResolution(resWidth, resHeight, resDepth)_
_name: setResolution_
_returns: void_
_returns_description: _
_parameters: int resWidth, int resHeight, int resDepth_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setResolutionDepth(depthRes)

<!--
_syntax: setResolutionDepth(depthRes)_
_name: setResolutionDepth_
_returns: void_
_returns_description: _
_parameters: int depthRes_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setResolutionHeight(heightRes)

<!--
_syntax: setResolutionHeight(heightRes)_
_name: setResolutionHeight_
_returns: void_
_returns_description: _
_parameters: int heightRes_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setResolutionWidth(widthRes)

<!--
_syntax: setResolutionWidth(widthRes)_
_name: setResolutionWidth_
_returns: void_
_returns_description: _
_parameters: int widthRes_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setSideColor(sideIndex, color)

<!--
_syntax: setSideColor(sideIndex, color)_
_name: setSideColor_
_returns: void_
_returns_description: _
_parameters: int sideIndex, ofColor color_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setWidth(a_width)

<!--
_syntax: setWidth(a_width)_
_name: setWidth_
_returns: void_
_returns_description: _
_parameters: float a_width_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

### ~ofBoxPrimitive()

<!--
_syntax: ~ofBoxPrimitive()_
_name: ~ofBoxPrimitive_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

##Variables



###ofVec3f resolution

<!--
_name: resolution_
_type: ofVec3f_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f size

<!--
_name: size_
_type: ofVec3f_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int strides

<!--
_name: strides_
_type: int_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int vertices

<!--
_name: vertices_
_type: int_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

