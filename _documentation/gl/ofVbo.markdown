#class ofVbo


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description

First things first: a Vertex Buffer Object (VBO) provides a way for you to create vertices, normals, colors, and texture coordinates on the graphics card for non-immediate mode rendering. This means that you can store it all on the graphics card and then access, update, or draw it, whenever you need. This is pretty convenient when you have something that you want to draw multiple times without changing it much, because it means that, instead of needing to upload new data each time, you can simply draw it without needing to recreate all your vertices and colors, a philosophy which is probably familiar to you from working with the ofFbo or ofTexture.

There are a few things that are important to understand about VBOs:

Each property of the VBO - vertices, texCoords, normals, colors - can be either dynamic or static. You set it to static when you know that you won't be updating it later on. You set it to dynamic when you know you will be updating it later on.

Just like with ofMesh, you need to keep track of the vertices and their indices in order to make shapes and you can draw a VBO in any one of the OpenGL drawing modes, GL_LINE_STRIP, GL_POINTS, GL_QUADS, GL_TRIANGLES and GL_TRIANGLE_STRIP.

Vertices are passed to your graphics card and your graphics card fills in the spaces in between them in a process usually called the rendering pipeline. The rendering pipeline goes more or less like this:

1. Say how you're going to connect all the points.

2. Make some points.

3. Say that you're done making points.

You may be thinking: Ill just make eight vertices and voila: a cube. Not so quick. Theres a hitch and that hitch is that the OpenGL renderer has different ways of connecting the vertices that you pass to it and none are as efficient as to only need eight vertices to create a cube. You've probably seen a version of the following image somewhere before.

![gl vertices](gl_vertices_options.jpg)

Generally, you have to create your points to fit the drawing mode that you've selected because of whats called winding. A vertex gets connected to another vertex in the order that the mode does its winding and this means that you might need multiple vertices in a given location to create the shape you want. The cube, for example, requires eighteen vertices, not the eight that you would expect. If you note the order of vertices in the GL chart above you'll see that all of them use their vertices slightly differently (in particular you should make note of the GL_TRIANGLE_STRIP example). Drawing a shape requires that you keep track of which drawing mode is being used and which order your vertices are declared in. If you're thinking it would be nice if there were an abstraction layer for this, you're thinking right. Enter the mesh, which is really just an abstraction of the vertex and drawing mode that we started with but which has the added bonus of managing the draw order for you. That may seem insignificant at first, but it provides some real benefits when working with complex geometry.

The following example shows an ofVbo representing an icosahedron:

~~~~{.cpp}
const ofIndexType Faces[] = {
    2, 1, 0,
    3, 2, 0,
    4, 3, 0,
    5, 4, 0,
    1, 5, 0,
    11, 6,  7,
    11, 7,  8,
    11, 8,  9,
    11, 9,  10,
    11, 10, 6,
    1, 2, 6,
    2, 3, 7,
    3, 4, 8,
    4, 5, 9,
    5, 1, 10,
    2,  7, 6,
    3,  8, 7,
    4,  9, 8,
    5, 10, 9,
    1, 6, 10 };
const float Verts[] = {
    0.000f,  0.000f,  1.000f,
    0.894f,  0.000f,  0.447f,
    0.276f,  0.851f,  0.447f,
    -0.724f,  0.526f,  0.447f,
    -0.724f, -0.526f,  0.447f,
    0.276f, -0.851f,  0.447f,
    0.724f,  0.526f, -0.447f,
    -0.276f,  0.851f, -0.447f,
    -0.894f,  0.000f, -0.447f,
    -0.276f, -0.851f, -0.447f,
    0.724f, -0.526f, -0.447f,
    0.000f,  0.000f, -1.000f };
ofVec3f v[12];
ofVec3f n[12];
ofFloatColor c[12];
ofVbo vbo;
void HelloWorldApp::setup()
{
    int i, j = 0;
    for ( i = 0; i < 12; i++ )
    {

        c[i].r = ofRandom(1.0);
        c[i].g = ofRandom(1.0);
        c[i].b = ofRandom(1.0);

        v[i][0] = Verts[j] * 100.f;
        j++;
        v[i][1] = Verts[j] * 100.f;
        j++;
        v[i][2] = Verts[j] * 100.f;
        j++;

    }

    vbo.setVertexData( &v[0], 12, GL_STATIC_DRAW );
    vbo.setColorData( &c[0], 12, GL_STATIC_DRAW );
    vbo.setIndexData( &Faces[0], 60, GL_STATIC_DRAW );

    glEnable(GL_DEPTH_TEST);
}
void HelloWorldApp::draw(){
    ofTranslate(ofGetWidth()/2, ofGetHeight()/2, 100);
    ofRotate(ofGetElapsedTimef() * 20.0, 1, 1, 0);
    glPointSize(10.f);
    vbo.drawElements( GL_TRIANGLES, 60);
}
~~~~

![vbo result](vbo.png)

You'll notice in a lot of the methods that a usage is required, for instance, setNormals(). The possible options are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY Each of these affects the speed of operations that you perform with the VBO and whether it's certain operations are allowed. For instance, if the vertices are STATIC, then they cannot be changed after they been loaded the first time, whereas if they're DYNAMIC, then they can be modified at any time later. The different modes can be broken down like so:

STREAM
The data store contents will be modified once and used at most a few times.

STATIC
The data store contents will be modified once and used many times.

DYNAMIC
The data store contents will be modified repeatedly and used many times.

The nature of access may be one of these:

DRAW
The data store contents are modified by the application, and used as the source for GL drawing and image specification commands.

READ
The data store contents are modified by reading data from the GL, and used to return that data when queried by the application.

COPY
The data store contents are modified by reading data from the GL, and used as the source for GL drawing and image specification commands.





##Methods



###void bind()

<!--
_syntax: bind()_
_name: bind_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This is for advanced users who might want to use ways of drawing other than draw() or drawElements(), it simply binds all the arrays for the VBO.





<!----------------------------------------------------------------------------->

###void clear()

<!--
_syntax: clear()_
_name: clear_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This erases your VBO data from your graphics card, but not the VBO itself, so you can fill it with data again.





<!----------------------------------------------------------------------------->

###void clearAttribute(attributePos_)

<!--
_syntax: clearAttribute(attributePos_)_
_name: clearAttribute_
_returns: void_
_returns_description: _
_parameters: int attributePos__
_access: public_
_version_started: 0.9.0_
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

###void clearColors()

<!--
_syntax: clearColors()_
_name: clearColors_
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







<!----------------------------------------------------------------------------->

###void clearIndices()

<!--
_syntax: clearIndices()_
_name: clearIndices_
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







<!----------------------------------------------------------------------------->

###void clearNormals()

<!--
_syntax: clearNormals()_
_name: clearNormals_
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







<!----------------------------------------------------------------------------->

###void clearTexCoords()

<!--
_syntax: clearTexCoords()_
_name: clearTexCoords_
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







<!----------------------------------------------------------------------------->

###void clearVertices()

<!--
_syntax: clearVertices()_
_name: clearVertices_
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







<!----------------------------------------------------------------------------->

###void disableColors()

<!--
_syntax: disableColors()_
_name: disableColors_
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







<!----------------------------------------------------------------------------->

###void disableIndices()

<!--
_syntax: disableIndices()_
_name: disableIndices_
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







<!----------------------------------------------------------------------------->

###void disableNormals()

<!--
_syntax: disableNormals()_
_name: disableNormals_
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







<!----------------------------------------------------------------------------->

###void disableTexCoords()

<!--
_syntax: disableTexCoords()_
_name: disableTexCoords_
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







<!----------------------------------------------------------------------------->

###void draw(drawMode, first, total)

<!--
_syntax: draw(drawMode, first, total)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: int drawMode, int first, int total_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This method allows you to draw your VBO but unlike drawElements() ignores any indices that you might have set up. This is an important distinction between the two methods.
mode
Specifies what kind of primitives to render. Symbolic constants GL_POINTS, GL_LINE_STRIP, GL_LINE_LOOP, GL_LINES, GL_TRIANGLE_STRIP, GL_TRIANGLE_FAN, GL_TRIANGLES, GL_QUAD_STRIP, GL_QUADS, and GL_POLYGON are accepted.
first
Specifies the starting index in the enabled arrays.
total
Specifies the number of indices to be rendered. This last part is pretty important: if you have more indices than vertices you'll want to make sure that you pass the number of indices, not the number of vertices.





<!----------------------------------------------------------------------------->

###void drawElements(drawMode, amt, offsetelements = 0)

<!--
_syntax: drawElements(drawMode, amt, offsetelements = 0)_
_name: drawElements_
_returns: void_
_returns_description: _
_parameters: int drawMode, int amt, int offsetelements=0_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

drawElements allows you use indices, unlike draw() which ignores them.
drawMode
Specifies what kind of primitives to render. Symbolic constants GL_POINTS, GL_LINE_STRIP, GL_LINE_LOOP, GL_LINES, GL_TRIANGLE_STRIP, GL_TRIANGLE_FAN, GL_TRIANGLES, GL_QUAD_STRIP, GL_QUADS, and GL_POLYGON are accepted.
~~~~{.cpp}
vbo.drawElements( GL_TRIANGLES, 60);
~~~~
amt specifies the number of indices to be rendered. This last part is pretty important: if you have more indices than vertices you'll want to make sure that you pass the number of indices, not the number of vertices.





<!----------------------------------------------------------------------------->

###void drawElementsInstanced(drawMode, amt, primCount)

<!--
_syntax: drawElementsInstanced(drawMode, amt, primCount)_
_name: drawElementsInstanced_
_returns: void_
_returns_description: _
_parameters: int drawMode, int amt, int primCount_
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

###void drawInstanced(drawMode, first, total, primCount)

<!--
_syntax: drawInstanced(drawMode, first, total, primCount)_
_name: drawInstanced_
_returns: void_
_returns_description: _
_parameters: int drawMode, int first, int total, int primCount_
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

###void enableColors()

<!--
_syntax: enableColors()_
_name: enableColors_
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







<!----------------------------------------------------------------------------->

###void enableIndices()

<!--
_syntax: enableIndices()_
_name: enableIndices_
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







<!----------------------------------------------------------------------------->

###void enableNormals()

<!--
_syntax: enableNormals()_
_name: enableNormals_
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







<!----------------------------------------------------------------------------->

###void enableTexCoords()

<!--
_syntax: enableTexCoords()_
_name: enableTexCoords_
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







<!----------------------------------------------------------------------------->

###ofBufferObject & getAttributeBuffer(location)

<!--
_syntax: getAttributeBuffer(location)_
_name: getAttributeBuffer_
_returns: ofBufferObject &_
_returns_description: _
_parameters: int location_
_access: public_
_version_started: 0.9.0_
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

###const ofBufferObject & getAttributeBuffer(location)

<!--
_syntax: getAttributeBuffer(location)_
_name: getAttributeBuffer_
_returns: const ofBufferObject &_
_returns_description: _
_parameters: int location_
_access: public_
_version_started: 0.9.0_
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

###GLuint getAttributeId(AttrPos_)

<!--
_syntax: getAttributeId(AttrPos_)_
_name: getAttributeId_
_returns: GLuint_
_returns_description: _
_parameters: int AttrPos__
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

returns OpenGL memory object id for GL buffer holding attribute data





_description: _







<!----------------------------------------------------------------------------->

###ofBufferObject & getColorBuffer()

<!--
_syntax: getColorBuffer()_
_name: getColorBuffer_
_returns: ofBufferObject &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###const ofBufferObject & getColorBuffer()

<!--
_syntax: getColorBuffer()_
_name: getColorBuffer_
_returns: const ofBufferObject &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###GLuint getColorId()

<!--
_syntax: getColorId()_
_name: getColorId_
_returns: GLuint_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
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

###ofBufferObject & getIndexBuffer()

<!--
_syntax: getIndexBuffer()_
_name: getIndexBuffer_
_returns: ofBufferObject &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###const ofBufferObject & getIndexBuffer()

<!--
_syntax: getIndexBuffer()_
_name: getIndexBuffer_
_returns: const ofBufferObject &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###GLuint getIndexId()

<!--
_syntax: getIndexId()_
_name: getIndexId_
_returns: GLuint_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
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

###bool getIsAllocated()

<!--
_syntax: getIsAllocated()_
_name: getIsAllocated_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Returns whether the ofVbo has been allocated or not. This is important to check before you start drawing or manipulating the vbo.





<!----------------------------------------------------------------------------->

###ofBufferObject & getNormalBuffer()

<!--
_syntax: getNormalBuffer()_
_name: getNormalBuffer_
_returns: ofBufferObject &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###const ofBufferObject & getNormalBuffer()

<!--
_syntax: getNormalBuffer()_
_name: getNormalBuffer_
_returns: const ofBufferObject &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###GLuint getNormalId()

<!--
_syntax: getNormalId()_
_name: getNormalId_
_returns: GLuint_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
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

###int getNumIndices()

<!--
_syntax: getNumIndices()_
_name: getNumIndices_
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

###int getNumVertices()

<!--
_syntax: getNumVertices()_
_name: getNumVertices_
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

###ofVbo::VertexAttribute & getOrCreateAttr(location)

<!--
_syntax: getOrCreateAttr(location)_
_name: getOrCreateAttr_
_returns: ofVbo::VertexAttribute &_
_returns_description: _
_parameters: int location_
_access: private_
_version_started: 0.9.0_
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

###ofBufferObject & getTexCoordBuffer()

<!--
_syntax: getTexCoordBuffer()_
_name: getTexCoordBuffer_
_returns: ofBufferObject &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###const ofBufferObject & getTexCoordBuffer()

<!--
_syntax: getTexCoordBuffer()_
_name: getTexCoordBuffer_
_returns: const ofBufferObject &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###GLuint getTexCoordId()

<!--
_syntax: getTexCoordId()_
_name: getTexCoordId_
_returns: GLuint_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
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

###bool getUsingColors()

<!--
_syntax: getUsingColors()_
_name: getUsingColors_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Returns whether the vertices within the VBO have colors associated with them or not.





<!----------------------------------------------------------------------------->

###bool getUsingIndices()

<!--
_syntax: getUsingIndices()_
_name: getUsingIndices_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Returns whether the VBO has assigned indices or not.





<!----------------------------------------------------------------------------->

###bool getUsingNormals()

<!--
_syntax: getUsingNormals()_
_name: getUsingNormals_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Returns whether the surfaces of the VBO have normals associated with them or not.





<!----------------------------------------------------------------------------->

###bool getUsingTexCoords()

<!--
_syntax: getUsingTexCoords()_
_name: getUsingTexCoords_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Returns whether the vertices of the VBO have texture coordinates associated with them or not.





<!----------------------------------------------------------------------------->

###bool getUsingVerts()

<!--
_syntax: getUsingVerts()_
_name: getUsingVerts_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Returns whether the ofVbo is using vertices or not. A VBO can exist without vertices, though it's quite unusual.





<!----------------------------------------------------------------------------->

###GLuint getVaoId()

<!--
_syntax: getVaoId()_
_name: getVaoId_
_returns: GLuint_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###GLuint getVertId()

<!--
_syntax: getVertId()_
_name: getVertId_
_returns: GLuint_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
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

###ofBufferObject & getVertexBuffer()

<!--
_syntax: getVertexBuffer()_
_name: getVertexBuffer_
_returns: ofBufferObject &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###const ofBufferObject & getVertexBuffer()

<!--
_syntax: getVertexBuffer()_
_name: getVertexBuffer_
_returns: const ofBufferObject &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###bool hasAttribute(attributePos_)

<!--
_syntax: hasAttribute(attributePos_)_
_name: hasAttribute_
_returns: bool_
_returns_description: _
_parameters: int attributePos__
_access: public_
_version_started: 0.9.0_
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

### ofVbo()

<!--
_syntax: ofVbo()_
_name: ofVbo_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Simple constructor for the ofVbo. When the ofVbo is first created there are no vertices or normals within it.





<!----------------------------------------------------------------------------->

### ofVbo(&mom)

<!--
_syntax: ofVbo(&mom)_
_name: ofVbo_
_returns: _
_returns_description: _
_parameters: const ofVbo &mom_
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

This is the copy constructor, so that you can do the following:

~~~~{.cpp}
ofVbo v1;
// filll v1;
ofVbo v2(v1); // v2 now contains all of v1s properties in a separate VBO
~~~~





<!----------------------------------------------------------------------------->

###ofVbo & operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofVbo &_
_returns_description: _
_parameters: const ofVbo &mom_
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

This is the equals operator, so that you can do the following:

~~~~{.cpp}
ofVbo v1;
// filll v1;
ofVbo v2 = v1; // v2 now contains all of v1s properties in a separate VBO
~~~~





<!----------------------------------------------------------------------------->

###void setAttributeBuffer(location, &buffer, numCoords, stride, offset = 0)

<!--
_syntax: setAttributeBuffer(location, &buffer, numCoords, stride, offset = 0)_
_name: setAttributeBuffer_
_returns: void_
_returns_description: _
_parameters: int location, ofBufferObject &buffer, int numCoords, int stride, int offset=0_
_access: public_
_version_started: 0.9.0_
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

###void setAttributeData(location, *vert0x, numCoords, total, usage, stride = 0)

<!--
_syntax: setAttributeData(location, *vert0x, numCoords, total, usage, stride = 0)_
_name: setAttributeData_
_returns: void_
_returns_description: _
_parameters: int location, const float *vert0x, int numCoords, int total, int usage, int stride=0_
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

###void setAttributeDivisor(location, divisor)

<!--
_syntax: setAttributeDivisor(location, divisor)_
_name: setAttributeDivisor_
_returns: void_
_returns_description: _
_parameters: int location, int divisor_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

used to send an attribute per instance(s) instead of per vertex.
will send per vertex if set to 0 or to the number of instances if >0

see textureBufferInstancedExample
and https://www.opengl.org/sdk/docs/man4/html/glVertexAttribDivisor.xhtml





_description: _







<!----------------------------------------------------------------------------->

###void setColorBuffer(&buffer, stride, offset = 0)

<!--
_syntax: setColorBuffer(&buffer, stride, offset = 0)_
_name: setColorBuffer_
_returns: void_
_returns_description: _
_parameters: ofBufferObject &buffer, int stride, int offset=0_
_access: public_
_version_started: 0.9.0_
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

###void setColorData(*colors, total, usage)

<!--
_syntax: setColorData(*colors, total, usage)_
_name: setColorData_
_returns: void_
_returns_description: _
_parameters: const ofFloatColor *colors, int total, int usage_
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

This allows you to set the colors for a vertex using an array of ofFloatColor instances.

~~~~{.cpp}
ofFloatColor c[12];
// fill in the colors and vertices
vbo.setColorData( &c[0], 12, GL_STATIC_DRAW );
~~~~

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY





<!----------------------------------------------------------------------------->

###void setColorData(*color0r, total, usage, stride = 0)

<!--
_syntax: setColorData(*color0r, total, usage, stride = 0)_
_name: setColorData_
_returns: void_
_returns_description: _
_parameters: const float *color0r, int total, int usage, int stride=0_
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

This sets the color data for the ofVbo from a pointer to an array of floats. The colors are RGB and are floats from 0.f - 1.f

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY





<!----------------------------------------------------------------------------->

###void setIndexBuffer(&buffer)

<!--
_syntax: setIndexBuffer(&buffer)_
_name: setIndexBuffer_
_returns: void_
_returns_description: _
_parameters: ofBufferObject &buffer_
_access: public_
_version_started: 0.9.0_
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

###void setIndexData(*indices, total, usage)

<!--
_syntax: setIndexData(*indices, total, usage)_
_name: setIndexData_
_returns: void_
_returns_description: _
_parameters: const ofIndexType *indices, int total, int usage_
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

This sets the index data for the VBO from a pointer to an array of ints. Each int represents the index of a vertex, and when the vbo is drawn the indices are used to generate the geometry from the indices.

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY





<!----------------------------------------------------------------------------->

###void setMesh(&mesh, usage)

<!--
_syntax: setMesh(&mesh, usage)_
_name: setMesh_
_returns: void_
_returns_description: _
_parameters: const ofMesh &mesh, int usage_
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

This allows you to pass a mesh to the ofVbo and populate the vertices, texture coordinates, and other properties of the VBO from the ofMesh instance. You can think of this as essentially moving geometry data from the CPU to the GPU.

~~~~{.cpp}
ofxAssimpModelLoader model;
model.loadModel("astroBoy_walk.dae",true);
ofMesh mesh = model.getMesh(0);
ofVbo vbo;
vbo.setMesh(mesh, GL_STATIC_DRAW);
~~~~

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY





<!----------------------------------------------------------------------------->

###void setMesh(&mesh, usage, useColors, useTextures, useNormals)

<!--
_syntax: setMesh(&mesh, usage, useColors, useTextures, useNormals)_
_name: setMesh_
_returns: void_
_returns_description: _
_parameters: const ofMesh &mesh, int usage, bool useColors, bool useTextures, bool useNormals_
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

###void setNormalBuffer(&buffer, stride, offset = 0)

<!--
_syntax: setNormalBuffer(&buffer, stride, offset = 0)_
_name: setNormalBuffer_
_returns: void_
_returns_description: _
_parameters: ofBufferObject &buffer, int stride, int offset=0_
_access: public_
_version_started: 0.9.0_
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

###void setNormalData(*normals, total, usage)

<!--
_syntax: setNormalData(*normals, total, usage)_
_name: setNormalData_
_returns: void_
_returns_description: _
_parameters: const ofVec3f *normals, int total, int usage_
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

This sets the normal data for the VBO from a pointer to an array of ofVec3f instances. The normals are calculated as the vector perpendicular to a face. The mathematical definition of a normal is shown on the left, while the way that a normal is calculated for a triangle is shown on the right.

![vbo normals](vboNormals.png)

One technique for calculating normals is something like the following:

~~~~{.cpp}
int* indices;
ofVec3f* verts;
ofVec3f* normals;
// allocate and create normals, indices, and verts
for ( int i = 0, int j = 0; i < NUM_INDICES; i+=3, j++) {
    ofVec3f v[3] = { vertices[i], verts[(i+1)], verts[(i+2)] };
    ofVec3f temp1 = v[1] - v[0];
    ofVec3f temp2 = v[2] - v[0];
    ofVec3f norm = temp1.getCrossed(temp2);

      for (int j = 0; j < 3; ++j) {
        Vector3 a = v[(i+1) % 3] - v[j];
        Vector3 b = v[(j+2) % 3] - v[j];
        float weight = acos(a.dot(b) / (a.length() * b.length()));
        norm += weight * normal;
    }

    normals[j] = norm;
}
~~~~

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY





<!----------------------------------------------------------------------------->

###void setNormalData(*normal0x, total, usage, stride = 0)

<!--
_syntax: setNormalData(*normal0x, total, usage, stride = 0)_
_name: setNormalData_
_returns: void_
_returns_description: _
_parameters: const float *normal0x, int total, int usage, int stride=0_
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

This sets the normals data for the ofVbo from a pointer to an array of floats, x,y,z, for each face, so a 3D cube would require an array of 18 floats, 3 for each face.

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY





<!----------------------------------------------------------------------------->

###void setTexCoordBuffer(&buffer, stride, offset = 0)

<!--
_syntax: setTexCoordBuffer(&buffer, stride, offset = 0)_
_name: setTexCoordBuffer_
_returns: void_
_returns_description: _
_parameters: ofBufferObject &buffer, int stride, int offset=0_
_access: public_
_version_started: 0.9.0_
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

###void setTexCoordData(*texCoords, total, usage)

<!--
_syntax: setTexCoordData(*texCoords, total, usage)_
_name: setTexCoordData_
_returns: void_
_returns_description: _
_parameters: const ofVec2f *texCoords, int total, int usage_
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

This sets the texture coordinate data for the VBO from a pointer to an array of ofVec2f instances. Each ofVec2f represents the texture coordinate of a vertex. By default OF uses ARB coords, so you can use pixel coordinates rather than normalized UV coordinates.

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY





<!----------------------------------------------------------------------------->

###void setTexCoordData(*texCoord0x, total, usage, stride = 0)

<!--
_syntax: setTexCoordData(*texCoord0x, total, usage, stride = 0)_
_name: setTexCoordData_
_returns: void_
_returns_description: _
_parameters: const float *texCoord0x, int total, int usage, int stride=0_
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

This sets the texCoord data for the ofVbo from a pointer to an array of floats, ST, for each face, so a 3D cube would require an array of 16 floats, 2 for each vertex.

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY





<!----------------------------------------------------------------------------->

###void setVertexBuffer(&buffer, numCoords, stride, offset = 0)

<!--
_syntax: setVertexBuffer(&buffer, numCoords, stride, offset = 0)_
_name: setVertexBuffer_
_returns: void_
_returns_description: _
_parameters: ofBufferObject &buffer, int numCoords, int stride, int offset=0_
_access: public_
_version_started: 0.9.0_
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

###void setVertexData(*verts, total, usage)

<!--
_syntax: setVertexData(*verts, total, usage)_
_name: setVertexData_
_returns: void_
_returns_description: _
_parameters: const ofVec3f *verts, int total, int usage_
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

This sets the vertex data for the ofVbo from a pointer to an array of ofVec3f instances. This creates a 3D vbo.

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY





<!----------------------------------------------------------------------------->

###void setVertexData(*verts, total, usage)

<!--
_syntax: setVertexData(*verts, total, usage)_
_name: setVertexData_
_returns: void_
_returns_description: _
_parameters: const ofVec2f *verts, int total, int usage_
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

This sets the vertex data for the ofVbo from a pointer to an array of ofVec2f instances. This creates a 2D vbo.

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY





<!----------------------------------------------------------------------------->

###void setVertexData(*vert0x, numCoords, total, usage, stride = 0)

<!--
_syntax: setVertexData(*vert0x, numCoords, total, usage, stride = 0)_
_name: setVertexData_
_returns: void_
_returns_description: _
_parameters: const float *vert0x, int numCoords, int total, int usage, int stride=0_
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

This sets the vertex data for the ofVbo from a pointer to an array of floats. The numCoords determines whether you're creating a 3D or 2D vbo, i.e. a 3D cube would require an array of 24 floats, and numCoords to be 8.

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY





<!----------------------------------------------------------------------------->

###void unbind()

<!--
_syntax: unbind()_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This is for advanced users who might want to use ways of drawing other than draw() or drawElements(), it simply unbinds all the arrays for the VBO.





<!----------------------------------------------------------------------------->

###void updateAttributeData(location, *vert0x, total)

<!--
_syntax: updateAttributeData(location, *vert0x, total)_
_name: updateAttributeData_
_returns: void_
_returns_description: _
_parameters: int location, const float *vert0x, int total_
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

###void updateColorData(*colors, total)

<!--
_syntax: updateColorData(*colors, total)_
_name: updateColorData_
_returns: void_
_returns_description: _
_parameters: const ofFloatColor *colors, int total_
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

If the color data for each vertex of the VBO have been declared as GL_DYNAMIC_DRAW, then you can update the vertex colors at any time.





<!----------------------------------------------------------------------------->

###void updateColorData(*color0r, total)

<!--
_syntax: updateColorData(*color0r, total)_
_name: updateColorData_
_returns: void_
_returns_description: _
_parameters: const float *color0r, int total_
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

If the vertex colors of the VBO have been declared as GL_DYNAMIC_DRAW, then you can update the colors at any time using an array of floats.





<!----------------------------------------------------------------------------->

###void updateIndexData(*indices, total)

<!--
_syntax: updateIndexData(*indices, total)_
_name: updateIndexData_
_returns: void_
_returns_description: _
_parameters: const ofIndexType *indices, int total_
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

If the indices of the VBO have been declared as GL_DYNAMIC_DRAW, then you can update the indices at any time.





<!----------------------------------------------------------------------------->

###void updateMesh(&mesh)

<!--
_syntax: updateMesh(&mesh)_
_name: updateMesh_
_returns: void_
_returns_description: _
_parameters: const ofMesh &mesh_
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

Updates all the data within the VBO from the data in the ofMesh.





<!----------------------------------------------------------------------------->

###void updateNormalData(*normals, total)

<!--
_syntax: updateNormalData(*normals, total)_
_name: updateNormalData_
_returns: void_
_returns_description: _
_parameters: const ofVec3f *normals, int total_
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

If the normals of the VBO have been declared as GL_DYNAMIC_DRAW, then you can update the normals at any time.





<!----------------------------------------------------------------------------->

###void updateNormalData(*normal0x, total)

<!--
_syntax: updateNormalData(*normal0x, total)_
_name: updateNormalData_
_returns: void_
_returns_description: _
_parameters: const float *normal0x, int total_
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

If the normals of the VBO have been declared as GL_DYNAMIC_DRAW, then you can update the normal data at any time using an array of floats.





<!----------------------------------------------------------------------------->

###void updateTexCoordData(*texCoords, total)

<!--
_syntax: updateTexCoordData(*texCoords, total)_
_name: updateTexCoordData_
_returns: void_
_returns_description: _
_parameters: const ofVec2f *texCoords, int total_
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

If the texture coordinates of the VBO have been declared as GL_DYNAMIC_DRAW, then you can update the texcoords at any time.





<!----------------------------------------------------------------------------->

###void updateTexCoordData(*texCoord0x, total)

<!--
_syntax: updateTexCoordData(*texCoord0x, total)_
_name: updateTexCoordData_
_returns: void_
_returns_description: _
_parameters: const float *texCoord0x, int total_
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

If the texture coords of the VBO have been declared as GL_DYNAMIC_DRAW, then you can update the tex coords at any time using an array of floats.





<!----------------------------------------------------------------------------->

###void updateVertexData(*verts, total)

<!--
_syntax: updateVertexData(*verts, total)_
_name: updateVertexData_
_returns: void_
_returns_description: _
_parameters: const ofVec3f *verts, int total_
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

If the vertices of the VBO have been declared as GL_DYNAMIC_DRAW, then you can update the vertices at any time.





<!----------------------------------------------------------------------------->

###void updateVertexData(*verts, total)

<!--
_syntax: updateVertexData(*verts, total)_
_name: updateVertexData_
_returns: void_
_returns_description: _
_parameters: const ofVec2f *verts, int total_
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

If the vertices of the VBO have been declared as GL_DYNAMIC_DRAW, then you can update the vertices at any time.





<!----------------------------------------------------------------------------->

###void updateVertexData(*ver0x, total)

<!--
_syntax: updateVertexData(*ver0x, total)_
_name: updateVertexData_
_returns: void_
_returns_description: _
_parameters: const float *ver0x, int total_
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

If the vertices of the VBO have been declared as GL_DYNAMIC_DRAW, then you can update the indices at any time using an array of floats.





<!----------------------------------------------------------------------------->

### ~ofVbo()

<!--
_syntax: ~ofVbo()_
_name: ~ofVbo_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This is the destructor for the ofVbo, it clears all the vertices, texture coordinates, and normals from the graphics card.





<!----------------------------------------------------------------------------->

##Variables



###bool bUsingColors

<!--
_name: bUsingColors_
_type: bool_
_access: private_
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

###bool bUsingIndices

<!--
_name: bUsingIndices_
_type: bool_
_access: private_
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

###bool bUsingNormals

<!--
_name: bUsingNormals_
_type: bool_
_access: private_
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

###bool bUsingTexCoords

<!--
_name: bUsingTexCoords_
_type: bool_
_access: private_
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

###bool bUsingVerts

<!--
_name: bUsingVerts_
_type: bool_
_access: private_
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

###ofVbo::VertexAttribute colorAttribute

<!--
_name: colorAttribute_
_type: ofVbo::VertexAttribute_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###map< int, ofVbo::VertexAttribute > customAttributes

<!--
_name: customAttributes_
_type: map< int, ofVbo::VertexAttribute >_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofVbo::IndexAttribute indexAttribute

<!--
_name: indexAttribute_
_type: ofVbo::IndexAttribute_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofVbo::VertexAttribute normalAttribute

<!--
_name: normalAttribute_
_type: ofVbo::VertexAttribute_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofVbo::VertexAttribute positionAttribute

<!--
_name: positionAttribute_
_type: ofVbo::VertexAttribute_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofVbo::VertexAttribute texCoordAttribute

<!--
_name: texCoordAttribute_
_type: ofVbo::VertexAttribute_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int totalIndices

<!--
_name: totalIndices_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int totalVerts

<!--
_name: totalVerts_
_type: int_
_access: private_
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

###bool vaoChanged

<!--
_name: vaoChanged_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool vaoChecked

<!--
_name: vaoChecked_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###GLuint vaoID

<!--
_name: vaoID_
_type: GLuint_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool vaoSupported

<!--
_name: vaoSupported_
_type: bool_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

