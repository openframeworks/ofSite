#class ofMesh


##Description


An ofMesh represents a set of vertices in 3D spaces, and normals at those points, colors at those points, and texture coordinates at those points. Each of these different properties is stored in a vector. 
Vertices are passed to your graphics card and your graphics card fill in the spaces in between them in a processing usually called the rendering pipeline. The rendering pipeline goes more or less like this:

1. Say how you're going to connect all the points.

2. Make some points.

3. Say that you're done making points.

You may be thinking: I'll just make eight vertices and voila: a cube. Not so quick. There's a hitch and that hitch is that the OpenGL renderer has different ways of connecting the vertices that you pass to it and none are as efficient as to only need eight vertices to create a cube. 

You've probably seen a version of the following image somewhere before.
![PRIMATIVES](primitives_new-640x269.gif)
Generally you have to create your points to fit the drawing mode that you've selected because of whats called winding. A vertex gets connected to another vertex in the order that the mode does its winding and this means that you might need multiple vertices in a given location to create the shape you want. The cube, for example, requires eighteen vertices, not the eight that you would expect. If you note the order of vertices in the GL chart above you'll see that all of them use their vertices slightly differently (in particular you should make note of the GL_TRIANGLE_STRIP example). Drawing a shape requires that you keep track of which drawing mode is being used and which order your vertices are declared in. 

If you're thinking: it would be nice if there were an abstraction layer for this you're thinking right. Enter the mesh, which is really just an abstraction of the vertex and drawing mode that we started with but which has the added bonus of managing the draw order for you. That may seem insignificant at first, but it provides some real benefits when working with complex geometry.

A very typical usage is something like the following:

~~~~{.cpp}
ofMesh mesh;
for (int y = 0; y < height; y++){
	for (int x = 0; x<width; x++){
		mesh.addVertex(ofPoint(x,y,0)); // make a new vertex
		mesh.addColor(ofFloatColor(0,0,0));  // add a color at that vertex
	}
}

// now it's important to make sure that each vertex is correctly connected with the
// other vertices around it. This is done using indices, which you can set up like so:	
for (int y = 0; y<height-1; y++){
	for (int x=0; x<width-1; x++){
		mesh.addIndex(x+y*width);				// 0
		mesh.addIndex((x+1)+y*width);			// 1
		mesh.addIndex(x+(y+1)*width);			// 10
		
		mesh.addIndex((x+1)+y*width);			// 1
		mesh.addIndex((x+1)+(y+1)*width);		// 11
		mesh.addIndex(x+(y+1)*width);			// 10
	}
}
~~~~


##Methods



###void addColor(c)

<!--
_syntax: addColor(c)_
_name: addColor_
_returns: void_
_returns_description: _
_parameters: const ofFloatColor& c_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add a color at the index in the colors vector.







<!----------------------------------------------------------------------------->

###void addColor(&c)

<!--
_syntax: addColor(&c)_
_name: addColor_
_returns: void_
_returns_description: _
_parameters: const ofFloatColor &c_
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



This adds a single color to all vertices.




<!----------------------------------------------------------------------------->

###void addColors(cols)

<!--
_syntax: addColors(cols)_
_name: addColors_
_returns: void_
_returns_description: _
_parameters: const vector&lt;ofFloatColor&gt;& cols_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add multiple colors at the index in the colors vector.







<!----------------------------------------------------------------------------->

###void addColors(cols, amt)

<!--
_syntax: addColors(cols, amt)_
_name: addColors_
_returns: void_
_returns_description: _
_parameters: const ofFloatColor* cols, int amt_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add colors to the colors vector using a pointer. The second parameter is always the number of colors that you're adding to the ofMesh.







<!----------------------------------------------------------------------------->

###void addColors(&cols)

<!--
_syntax: addColors(&cols)_
_name: addColors_
_returns: void_
_returns_description: _
_parameters: const vector< ofFloatColor > &cols_
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


This adds colors using a reference to a vector of ofColors. For each color in the vector, this will put the colors at the corresponding vertex.





<!----------------------------------------------------------------------------->

###void addColors(*cols, amt)

<!--
_syntax: addColors(*cols, amt)_
_name: addColors_
_returns: void_
_returns_description: _
_parameters: const ofFloatColor *cols, int amt_
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



This adds a pointer of colors to the ofMesh instance with the amount passed as the second parameter.





<!----------------------------------------------------------------------------->

###void addIndex(i)

<!--
_syntax: addIndex(i)_
_name: addIndex_
_returns: void_
_returns_description: _
_parameters: ofIndexType i_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Add an index from the index vector. Each index represents the index of the vertex in the vertices vector. This determines the way that the vertices are connected into the polgoynon type set in the primitiveMode.







<!----------------------------------------------------------------------------->

###void addIndices(inds)

<!--
_syntax: addIndices(inds)_
_name: addIndices_
_returns: void_
_returns_description: _
_parameters: const vector&lt;ofIndexType&gt;& inds_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add multiple indices to the index vector. Each index represents the index of the vertex in the vertices vector. This determines the way that the vertices are connected into the polygon type set in the primitiveMode.







<!----------------------------------------------------------------------------->

###void addIndices(inds, amt)

<!--
_syntax: addIndices(inds, amt)_
_name: addIndices_
_returns: void_
_returns_description: _
_parameters: const ofIndexType* inds, int amt_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add multiple indices to the index vector. Each index represents the index of the vertex in the vertices vector. This determines the way that the vertices are connected into the polygon type set in the primitiveMode.







<!----------------------------------------------------------------------------->

###void addIndices(&inds)

<!--
_syntax: addIndices(&inds)_
_name: addIndices_
_returns: void_
_returns_description: _
_parameters: const vector< ofIndexType > &inds_
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


This adds a vector of indices.





<!----------------------------------------------------------------------------->

###void addIndices(*inds, amt)

<!--
_syntax: addIndices(*inds, amt)_
_name: addIndices_
_returns: void_
_returns_description: _
_parameters: const ofIndexType *inds, int amt_
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


This adds indices to the ofMesh. 





<!----------------------------------------------------------------------------->

###void addNormal(n)

<!--
_syntax: addNormal(n)_
_name: addNormal_
_returns: void_
_returns_description: _
_parameters: const ofVec3f& n_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Adds a normal at the index in the normals vector.







<!----------------------------------------------------------------------------->

###void addNormal(&n)

<!--
_syntax: addNormal(&n)_
_name: addNormal_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &n_
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

###void addNormals(norms)

<!--
_syntax: addNormals(norms)_
_name: addNormals_
_returns: void_
_returns_description: _
_parameters: const vector&lt;ofVec3f&gt;& norms_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add normals to the the normals vector.







<!----------------------------------------------------------------------------->

###void addNormals(norms, amt)

<!--
_syntax: addNormals(norms, amt)_
_name: addNormals_
_returns: void_
_returns_description: _
_parameters: const ofVec3f* norms, int amt_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add multiple normals at the index in the normals vector.







<!----------------------------------------------------------------------------->

###void addNormals(&norms)

<!--
_syntax: addNormals(&norms)_
_name: addNormals_
_returns: void_
_returns_description: _
_parameters: const vector< ofVec3f > &norms_
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

###void addNormals(*norms, amt)

<!--
_syntax: addNormals(*norms, amt)_
_name: addNormals_
_returns: void_
_returns_description: _
_parameters: const ofVec3f *norms, int amt_
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

###void addTexCoord(t)

<!--
_syntax: addTexCoord(t)_
_name: addTexCoord_
_returns: void_
_returns_description: _
_parameters: const ofVec2f& t_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add a Vec2f representing the texture coordinate. Because OF uses ARB textures these are in pixels rather than 0-1 normalized coordinates.







<!----------------------------------------------------------------------------->

###void addTexCoord(&t)

<!--
_syntax: addTexCoord(&t)_
_name: addTexCoord_
_returns: void_
_returns_description: _
_parameters: const ofVec2f &t_
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

###void addTexCoords(tCoords)

<!--
_syntax: addTexCoords(tCoords)_
_name: addTexCoords_
_returns: void_
_returns_description: _
_parameters: const vector&lt;ofVec2f&gt;& tCoords_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add multiple Vec2f representing the texture coordinate. Because OF uses ARB textures these are in pixels rather than 0-1 normalized coordinates.







<!----------------------------------------------------------------------------->

###void addTexCoords(tCoords, amt)

<!--
_syntax: addTexCoords(tCoords, amt)_
_name: addTexCoords_
_returns: void_
_returns_description: _
_parameters: const ofVec2f* tCoords, int amt_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add multiple Vec2f representing the texture coordinate. Because OF uses ARB textures these are in pixels rather than 0-1 normalized coordinates.







<!----------------------------------------------------------------------------->

###void addTexCoords(&tCoords)

<!--
_syntax: addTexCoords(&tCoords)_
_name: addTexCoords_
_returns: void_
_returns_description: _
_parameters: const vector< ofVec2f > &tCoords_
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

###void addTexCoords(*tCoords, amt)

<!--
_syntax: addTexCoords(*tCoords, amt)_
_name: addTexCoords_
_returns: void_
_returns_description: _
_parameters: const ofVec2f *tCoords, int amt_
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

###void addTriangle(index1, index2, index3)

<!--
_syntax: addTriangle(index1, index2, index3)_
_name: addTriangle_
_returns: void_
_returns_description: _
_parameters: ofIndexType index1, ofIndexType index2, ofIndexType index3_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Adding a triangle means using three of the vertices that have already been added to create a triangle. This is an easy way to create triangles in the mesh. The indices refer to the index of the vertex in the vector of vertices.







<!----------------------------------------------------------------------------->

###void addVertex(v)

<!--
_syntax: addVertex(v)_
_name: addVertex_
_returns: void_
_returns_description: _
_parameters: const ofVec3f& v_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add a vertex.







<!----------------------------------------------------------------------------->

###void addVertex(&v)

<!--
_syntax: addVertex(&v)_
_name: addVertex_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &v_
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

###void addVertices(verts)

<!--
_syntax: addVertices(verts)_
_name: addVertices_
_returns: void_
_returns_description: _
_parameters: const vector&lt;ofVec3f&gt;& verts_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add multiple vertices.







<!----------------------------------------------------------------------------->

###void addVertices(verts, amt)

<!--
_syntax: addVertices(verts, amt)_
_name: addVertices_
_returns: void_
_returns_description: _
_parameters: const ofVec3f* verts, int amt_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Add multiple vertices.







<!----------------------------------------------------------------------------->

###void addVertices(&verts)

<!--
_syntax: addVertices(&verts)_
_name: addVertices_
_returns: void_
_returns_description: _
_parameters: const vector< ofVec3f > &verts_
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

###void addVertices(*verts, amt)

<!--
_syntax: addVertices(*verts, amt)_
_name: addVertices_
_returns: void_
_returns_description: _
_parameters: const ofVec3f *verts, int amt_
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

###void append(&mesh)

<!--
_syntax: append(&mesh)_
_name: append_
_returns: void_
_returns_description: _
_parameters: ofMesh &mesh_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofMesh box(width, height, depth, resX = 2, resY = 2, resZ = 2)

<!--
_syntax: box(width, height, depth, resX = 2, resY = 2, resZ = 2)_
_name: box_
_returns: ofMesh_
_returns_description: _
_parameters: float width, float height, float depth, int resX=2, int resY=2, int resZ=2_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This removes all the vertices, colors, and indices from the mesh.







<!----------------------------------------------------------------------------->

###void clearColors()

<!--
_syntax: clearColors()_
_name: clearColors_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Clear all the colors.







<!----------------------------------------------------------------------------->

###void clearIndices()

<!--
_syntax: clearIndices()_
_name: clearIndices_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Remove all the indices of the mesh. This means that your mesh will be a point cloud.







<!----------------------------------------------------------------------------->

###void clearNormals()

<!--
_syntax: clearNormals()_
_name: clearNormals_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Remove all the normals.







<!----------------------------------------------------------------------------->

###void clearTexCoords()

<!--
_syntax: clearTexCoords()_
_name: clearTexCoords_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Clear all the texture coordinates.







<!----------------------------------------------------------------------------->

###void clearVertices()

<!--
_syntax: clearVertices()_
_name: clearVertices_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Removes all the vertices.







<!----------------------------------------------------------------------------->

###ofMesh cone(radius, height, radiusSegments = 12, heightSegments = 6, capSegments = 2, mode = OF_PRIMITIVE_TRIANGLE_STRIP)

<!--
_syntax: cone(radius, height, radiusSegments = 12, heightSegments = 6, capSegments = 2, mode = OF_PRIMITIVE_TRIANGLE_STRIP)_
_name: cone_
_returns: ofMesh_
_returns_description: _
_parameters: float radius, float height, int radiusSegments=12, int heightSegments=6, int capSegments=2, ofPrimitiveMode mode=OF_PRIMITIVE_TRIANGLE_STRIP_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofMesh cylinder(radius, height, radiusSegments = 12, heightSegments = 6, numCapSegments = 2, bCapped = true, mode = OF_PRIMITIVE_TRIANGLE_STRIP)

<!--
_syntax: cylinder(radius, height, radiusSegments = 12, heightSegments = 6, numCapSegments = 2, bCapped = true, mode = OF_PRIMITIVE_TRIANGLE_STRIP)_
_name: cylinder_
_returns: ofMesh_
_returns_description: _
_parameters: float radius, float height, int radiusSegments=12, int heightSegments=6, int numCapSegments=2, bool bCapped=true, ofPrimitiveMode mode=OF_PRIMITIVE_TRIANGLE_STRIP_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

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
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void disableTextures()

<!--
_syntax: disableTextures()_
_name: disableTextures_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void draw()

<!--
_syntax: draw()_
_name: draw_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This draws the mesh using its primitive type, meaning that if you set them up to be triangles, this will draw the triangles.







<!----------------------------------------------------------------------------->

###void draw(renderType)

<!--
_syntax: draw(renderType)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: ofPolyRenderMode renderType_
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

###void drawFaces()

<!--
_syntax: drawFaces()_
_name: drawFaces_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This draws the mesh as faces, meaning that you'll have a collection of faces.







<!----------------------------------------------------------------------------->

###void drawVertices()

<!--
_syntax: drawVertices()_
_name: drawVertices_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This allows you draw just the vertices, meaning that you'll have a point cloud.







<!----------------------------------------------------------------------------->

###void drawWireframe()

<!--
_syntax: drawWireframe()_
_name: drawWireframe_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This draws the mesh as GL_LINES, meaning that you'll have a wireframe.







<!----------------------------------------------------------------------------->

###void enableColors()

<!--
_syntax: enableColors()_
_name: enableColors_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void enableTextures()

<!--
_syntax: enableTextures()_
_name: enableTextures_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f getCentroid()

<!--
_syntax: getCentroid()_
_name: getCentroid_
_returns: ofVec3f_
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

###ofFloatColor getColor(i)

<!--
_syntax: getColor(i)_
_name: getColor_
_returns: ofFloatColor_
_returns_description: _
_parameters: int i_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Get the color at the index in the colors vector.







<!----------------------------------------------------------------------------->

###ofFloatColor getColor(i)

<!--
_syntax: getColor(i)_
_name: getColor_
_returns: ofFloatColor_
_returns_description: _
_parameters: ofIndexType i_
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

###ofFloatColor getColors()

<!--
_syntax: getColors()_
_name: getColors_
_returns: ofFloatColor_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get the vector that contains all of the colors of the mesh, if it has any.







<!----------------------------------------------------------------------------->

###ofFloatColor getColorsPointer()

<!--
_syntax: getColorsPointer()_
_name: getColorsPointer_
_returns: ofFloatColor_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get a pointer to the colors that the mesh contains.
Get a pointer to the colors that the mesh contains.







<!----------------------------------------------------------------------------->

###vector< int > & getFace(faceId)

<!--
_syntax: getFace(faceId)_
_name: getFace_
_returns: vector< int > &_
_returns_description: _
_parameters: int faceId_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get the vector that contains all of the faces of the mesh. This isn't currently implemented.







<!----------------------------------------------------------------------------->

###ofVec3f getFaceNormals(perVetex = false)

<!--
_syntax: getFaceNormals(perVetex = false)_
_name: getFaceNormals_
_returns: ofVec3f_
_returns_description: _
_parameters: bool perVetex=false_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofIndexType getIndex(i)

<!--
_syntax: getIndex(i)_
_name: getIndex_
_returns: ofIndexType_
_returns_description: _
_parameters: int i_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Get the index from the index vector. Each index represents the index of the vertex in the vertices vector. This determines the way that the vertices are connected into the polgoynon type set in the primitiveMode.







<!----------------------------------------------------------------------------->

###ofIndexType getIndex(i)

<!--
_syntax: getIndex(i)_
_name: getIndex_
_returns: ofIndexType_
_returns_description: _
_parameters: ofIndexType i_
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

###ofIndexType getIndexPointer()

<!--
_syntax: getIndexPointer()_
_name: getIndexPointer_
_returns: ofIndexType_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get a pointer to the indices that the mesh contains.
Get a pointer to the indices that the mesh contains.







<!----------------------------------------------------------------------------->

###ofIndexType getIndices()

<!--
_syntax: getIndices()_
_name: getIndices_
_returns: ofIndexType_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get the vector that contains all of the indices of the mesh, if it has any.







<!----------------------------------------------------------------------------->

###ofMesh getMeshForIndices(startIndex, endIndex)

<!--
_syntax: getMeshForIndices(startIndex, endIndex)_
_name: getMeshForIndices_
_returns: ofMesh_
_returns_description: _
_parameters: int startIndex, int endIndex_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofMesh getMeshForIndices(startIndex, endIndex, startVertIndex, endVertIndex)

<!--
_syntax: getMeshForIndices(startIndex, endIndex, startVertIndex, endVertIndex)_
_name: getMeshForIndices_
_returns: ofMesh_
_returns_description: _
_parameters: int startIndex, int endIndex, int startVertIndex, int endVertIndex_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofPrimitiveMode getMode()

<!--
_syntax: getMode()_
_name: getMode_
_returns: ofPrimitiveMode_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This returns the primitive mode that the mesh is using.







<!----------------------------------------------------------------------------->

###ofVec3f getNormal(i)

<!--
_syntax: getNormal(i)_
_name: getNormal_
_returns: ofVec3f_
_returns_description: _
_parameters: int i_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Get the normal at the index in the normals vector.







<!----------------------------------------------------------------------------->

###ofVec3f getNormal(i)

<!--
_syntax: getNormal(i)_
_name: getNormal_
_returns: ofVec3f_
_returns_description: _
_parameters: ofIndexType i_
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

###ofVec3f getNormals()

<!--
_syntax: getNormals()_
_name: getNormals_
_returns: ofVec3f_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get the vector that contains all of the normals of the mesh, if it has any.







<!----------------------------------------------------------------------------->

###ofVec3f getNormalsPointer()

<!--
_syntax: getNormalsPointer()_
_name: getNormalsPointer_
_returns: ofVec3f_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get a pointer to the normals that the mesh contains.
Get a pointer to the normals that the mesh contains.







<!----------------------------------------------------------------------------->

###int getNumColors()

<!--
_syntax: getNumColors()_
_name: getNumColors_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


How many colors that the mesh contains.







<!----------------------------------------------------------------------------->

###int getNumIndices()

<!--
_syntax: getNumIndices()_
_name: getNumIndices_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


How many indices that the mesh contains.







<!----------------------------------------------------------------------------->

###int getNumNormals()

<!--
_syntax: getNumNormals()_
_name: getNumNormals_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


How many normals that the mesh contains.







<!----------------------------------------------------------------------------->

###int getNumTexCoords()

<!--
_syntax: getNumTexCoords()_
_name: getNumTexCoords_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


How many texture coordinates that the mesh contains.







<!----------------------------------------------------------------------------->

###int getNumVertices()

<!--
_syntax: getNumVertices()_
_name: getNumVertices_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


How many vertices that the mesh contains.







<!----------------------------------------------------------------------------->

###ofVec2f getTexCoord(i)

<!--
_syntax: getTexCoord(i)_
_name: getTexCoord_
_returns: ofVec2f_
_returns_description: _
_parameters: int i_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Get the Vec2f representing the texture coordinate. Because OF uses ARB textures these are in pixels rather than 0-1 normalized coordinates.







<!----------------------------------------------------------------------------->

###ofVec2f getTexCoord(i)

<!--
_syntax: getTexCoord(i)_
_name: getTexCoord_
_returns: ofVec2f_
_returns_description: _
_parameters: ofIndexType i_
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

###ofVec2f getTexCoords()

<!--
_syntax: getTexCoords()_
_name: getTexCoords_
_returns: ofVec2f_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get the vector that contains all of the vertices of the tex coords, if it has any.







<!----------------------------------------------------------------------------->

###ofVec2f getTexCoordsPointer()

<!--
_syntax: getTexCoordsPointer()_
_name: getTexCoordsPointer_
_returns: ofVec2f_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get a pointer to the texture coords that the mesh contains.
Get a pointer to the ofVec2f texture coordinates that the mesh contains.







<!----------------------------------------------------------------------------->

###ofMeshFace getUniqueFaces()

<!--
_syntax: getUniqueFaces()_
_name: getUniqueFaces_
_returns: ofMeshFace_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofVec3f getVertex(i)

<!--
_syntax: getVertex(i)_
_name: getVertex_
_returns: ofVec3f_
_returns_description: _
_parameters: int i_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Gets the vertex at the index.







<!----------------------------------------------------------------------------->

###ofVec3f getVertex(i)

<!--
_syntax: getVertex(i)_
_name: getVertex_
_returns: ofVec3f_
_returns_description: _
_parameters: ofIndexType i_
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

###ofVec3f getVertices()

<!--
_syntax: getVertices()_
_name: getVertices_
_returns: ofVec3f_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get the vector that contains all of the vertices of the mesh.







<!----------------------------------------------------------------------------->

###ofVec3f getVerticesPointer()

<!--
_syntax: getVerticesPointer()_
_name: getVerticesPointer_
_returns: ofVec3f_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get a pointer to the vertices that the mesh contains.
Get a pointer to the vertices that the mesh contains.







<!----------------------------------------------------------------------------->

###bool hasColors()

<!--
_syntax: hasColors()_
_name: hasColors_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Whether the mesh has any colors.







<!----------------------------------------------------------------------------->

###bool hasIndices()

<!--
_syntax: hasIndices()_
_name: hasIndices_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Whether the mesh has any indices assigned to it.







<!----------------------------------------------------------------------------->

###bool hasNormals()

<!--
_syntax: hasNormals()_
_name: hasNormals_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Whether the mesh has any normals.







<!----------------------------------------------------------------------------->

###bool hasTexCoords()

<!--
_syntax: hasTexCoords()_
_name: hasTexCoords_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Whether the mesh has any textures assigned to it.







<!----------------------------------------------------------------------------->

###bool hasVertices()

<!--
_syntax: hasVertices()_
_name: hasVertices_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Whether the mesh has any vertices.







<!----------------------------------------------------------------------------->

###bool haveColorsChanged()

<!--
_syntax: haveColorsChanged()_
_name: haveColorsChanged_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


If the colors of the mesh have changed, been added or removed.







<!----------------------------------------------------------------------------->

###bool haveIndicesChanged()

<!--
_syntax: haveIndicesChanged()_
_name: haveIndicesChanged_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


If the indices of the mesh have changed, been added or removed.







<!----------------------------------------------------------------------------->

###bool haveNormalsChanged()

<!--
_syntax: haveNormalsChanged()_
_name: haveNormalsChanged_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


If the normals of the mesh have changed, been added or removed.







<!----------------------------------------------------------------------------->

###bool haveTexCoordsChanged()

<!--
_syntax: haveTexCoordsChanged()_
_name: haveTexCoordsChanged_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


If the texture coords of the mesh have changed, been added or removed.







<!----------------------------------------------------------------------------->

###bool haveVertsChanged()

<!--
_syntax: haveVertsChanged()_
_name: haveVertsChanged_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


If the vertices of the mesh have changed, been added or removed.







<!----------------------------------------------------------------------------->

###ofMesh icosahedron(radius)

<!--
_syntax: icosahedron(radius)_
_name: icosahedron_
_returns: ofMesh_
_returns_description: _
_parameters: float radius_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofMesh icosphere(radius, iterations = 2)

<!--
_syntax: icosphere(radius, iterations = 2)_
_name: icosphere_
_returns: ofMesh_
_returns_description: _
_parameters: float radius, int iterations=2_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void load(path)

<!--
_syntax: load(path)_
_name: load_
_returns: void_
_returns_description: _
_parameters: string path_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void mergeDuplicateVertices()

<!--
_syntax: mergeDuplicateVertices()_
_name: mergeDuplicateVertices_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofMesh()

<!--
_syntax: ofMesh()_
_name: ofMesh_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This creates the mesh, using OF_PRIMITIVE_TRIANGLES and without any initial vertices.







<!----------------------------------------------------------------------------->

### ofMesh(mode, verts)

<!--
_syntax: ofMesh(mode, verts)_
_name: ofMesh_
_returns: _
_returns_description: _
_parameters: ofPrimitiveMode mode, const vector&lt;ofVec3f&gt;& verts_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


This allows to you to use one of the other ofPrimitiveModes: OF_PRIMITIVE_TRIANGLES, OF_PRIMITIVE_TRIANGLE_STRIP, OF_PRIMITIVE_TRIANGLE_FAN, OF_PRIMITIVE_LINES, OF_PRIMITIVE_LINE_STRIP, OF_PRIMITIVE_LINE_LOOP, OF_PRIMITIVE_POINTS. See [ofGLUtils](../gl/ofGLUtils.htm) for more information on these types.







<!----------------------------------------------------------------------------->

### ofMesh(mode, &verts)

<!--
_syntax: ofMesh(mode, &verts)_
_name: ofMesh_
_returns: _
_returns_description: _
_parameters: ofPrimitiveMode mode, const vector< ofVec3f > &verts_
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

###ofMesh plane(width, height, columns = 2, rows = 2, mode = OF_PRIMITIVE_TRIANGLE_STRIP)

<!--
_syntax: plane(width, height, columns = 2, rows = 2, mode = OF_PRIMITIVE_TRIANGLE_STRIP)_
_name: plane_
_returns: ofMesh_
_returns_description: _
_parameters: float width, float height, int columns=2, int rows=2, ofPrimitiveMode mode=OF_PRIMITIVE_TRIANGLE_STRIP_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void removeColor(index)

<!--
_syntax: removeColor(index)_
_name: removeColor_
_returns: void_
_returns_description: _
_parameters: int index_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Remove a color at the index in the colors vector.







<!----------------------------------------------------------------------------->

###void removeColor(index)

<!--
_syntax: removeColor(index)_
_name: removeColor_
_returns: void_
_returns_description: _
_parameters: ofIndexType index_
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

###void removeIndex(i)

<!--
_syntax: removeIndex(i)_
_name: removeIndex_
_returns: void_
_returns_description: _
_parameters: int i_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Removes an index.







<!----------------------------------------------------------------------------->

###void removeIndex(index)

<!--
_syntax: removeIndex(index)_
_name: removeIndex_
_returns: void_
_returns_description: _
_parameters: ofIndexType index_
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

###void removeNormal(index)

<!--
_syntax: removeNormal(index)_
_name: removeNormal_
_returns: void_
_returns_description: _
_parameters: int index_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Remove a normal.







<!----------------------------------------------------------------------------->

###void removeNormal(index)

<!--
_syntax: removeNormal(index)_
_name: removeNormal_
_returns: void_
_returns_description: _
_parameters: ofIndexType index_
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

###void removeTexCoord(index)

<!--
_syntax: removeTexCoord(index)_
_name: removeTexCoord_
_returns: void_
_returns_description: _
_parameters: int index_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Remove a Vec2f representing the texture coordinate.







<!----------------------------------------------------------------------------->

###void removeTexCoord(index)

<!--
_syntax: removeTexCoord(index)_
_name: removeTexCoord_
_returns: void_
_returns_description: _
_parameters: ofIndexType index_
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

###void removeVertex(index)

<!--
_syntax: removeVertex(index)_
_name: removeVertex_
_returns: void_
_returns_description: _
_parameters: int index_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Removes the vertex at the index in the vector.







<!----------------------------------------------------------------------------->

###void removeVertex(index)

<!--
_syntax: removeVertex(index)_
_name: removeVertex_
_returns: void_
_returns_description: _
_parameters: ofIndexType index_
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

###void save(path, useBinary = false)

<!--
_syntax: save(path, useBinary = false)_
_name: save_
_returns: void_
_returns_description: _
_parameters: string path, bool useBinary=false_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setColor(index, c)

<!--
_syntax: setColor(index, c)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int index, const ofFloatColor& c_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Set the color at the index in the colors vector.







<!----------------------------------------------------------------------------->

###void setColor(index, &c)

<!--
_syntax: setColor(index, &c)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int index, const ofFloatColor &c_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setColor(index, &c)

<!--
_syntax: setColor(index, &c)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: ofIndexType index, const ofFloatColor &c_
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

###void setColorForIndices(startIndex, endIndex, color)

<!--
_syntax: setColorForIndices(startIndex, endIndex, color)_
_name: setColorForIndices_
_returns: void_
_returns_description: _
_parameters: int startIndex, int endIndex, ofColor color_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setFromTriangles(&tris, bUseFaceNormal = false)

<!--
_syntax: setFromTriangles(&tris, bUseFaceNormal = false)_
_name: setFromTriangles_
_returns: void_
_returns_description: _
_parameters: const vector< ofMeshFace > &tris, bool bUseFaceNormal=false_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setIndex(i, val)

<!--
_syntax: setIndex(i, val)_
_name: setIndex_
_returns: void_
_returns_description: _
_parameters: int i, ofIndexType val_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


This sets the index at i.







<!----------------------------------------------------------------------------->

###void setIndex(index, val)

<!--
_syntax: setIndex(index, val)_
_name: setIndex_
_returns: void_
_returns_description: _
_parameters: ofIndexType index, ofIndexType val_
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

###void setMode(mode)

<!--
_syntax: setMode(mode)_
_name: setMode_
_returns: void_
_returns_description: _
_parameters: ofPrimitiveMode mode_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Allows you to set the ofPrimitiveMode. The available modes are OF_PRIMITIVE_TRIANGLES, OF_PRIMITIVE_TRIANGLE_STRIP, OF_PRIMITIVE_TRIANGLE_FAN, OF_PRIMITIVE_LINES, OF_PRIMITIVE_LINE_STRIP, OF_PRIMITIVE_LINE_LOOP, OF_PRIMITIVE_POINTS 







<!----------------------------------------------------------------------------->

###void setName(name_)

<!--
_syntax: setName(name_)_
_name: setName_
_returns: void_
_returns_description: _
_parameters: string name__
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Each mesh can have a name, here's where you set it.







<!----------------------------------------------------------------------------->

###void setNormal(index, n)

<!--
_syntax: setNormal(index, n)_
_name: setNormal_
_returns: void_
_returns_description: _
_parameters: int index, const ofVec3f& n_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Set the normal at the index.







<!----------------------------------------------------------------------------->

###void setNormal(index, &n)

<!--
_syntax: setNormal(index, &n)_
_name: setNormal_
_returns: void_
_returns_description: _
_parameters: int index, const ofVec3f &n_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setNormal(index, &n)

<!--
_syntax: setNormal(index, &n)_
_name: setNormal_
_returns: void_
_returns_description: _
_parameters: ofIndexType index, const ofVec3f &n_
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

###void setTexCoord(index, t)

<!--
_syntax: setTexCoord(index, t)_
_name: setTexCoord_
_returns: void_
_returns_description: _
_parameters: int index, const ofVec2f& t_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Set a Vec2f representing the texture coordinate. Because OF uses ARB textures these are in pixels rather than 0-1 normalized coordinates.







<!----------------------------------------------------------------------------->

###void setTexCoord(index, &t)

<!--
_syntax: setTexCoord(index, &t)_
_name: setTexCoord_
_returns: void_
_returns_description: _
_parameters: int index, const ofVec2f &t_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setTexCoord(index, &t)

<!--
_syntax: setTexCoord(index, &t)_
_name: setTexCoord_
_returns: void_
_returns_description: _
_parameters: ofIndexType index, const ofVec2f &t_
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

###void setVertex(index, v)

<!--
_syntax: setVertex(index, v)_
_name: setVertex_
_returns: void_
_returns_description: _
_parameters: int index, const ofVec3f& v_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Updates the vertex at the index in the vector.







<!----------------------------------------------------------------------------->

###void setVertex(index, &v)

<!--
_syntax: setVertex(index, &v)_
_name: setVertex_
_returns: void_
_returns_description: _
_parameters: int index, const ofVec3f &v_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setVertex(index, &v)

<!--
_syntax: setVertex(index, &v)_
_name: setVertex_
_returns: void_
_returns_description: _
_parameters: ofIndexType index, const ofVec3f &v_
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

###void setupIndicesAuto()

<!--
_syntax: setupIndicesAuto()_
_name: setupIndicesAuto_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Allow you to set up the indices automatically when you add a vertex.







<!----------------------------------------------------------------------------->

###void smoothNormals(angle)

<!--
_syntax: smoothNormals(angle)_
_name: smoothNormals_
_returns: void_
_returns_description: _
_parameters: float angle_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofMesh sphere(radius, res = 12, mode = OF_PRIMITIVE_TRIANGLE_STRIP)

<!--
_syntax: sphere(radius, res = 12, mode = OF_PRIMITIVE_TRIANGLE_STRIP)_
_name: sphere_
_returns: ofMesh_
_returns_description: _
_parameters: float radius, int res=12, ofPrimitiveMode mode=OF_PRIMITIVE_TRIANGLE_STRIP_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###friend std std

<!--
_syntax: std_
_name: std_
_returns: friend std_
_returns_description: _
_parameters: std_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool usingColors()

<!--
_syntax: usingColors()_
_name: usingColors_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool usingIndices()

<!--
_syntax: usingIndices()_
_name: usingIndices_
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

###bool usingNormals()

<!--
_syntax: usingNormals()_
_name: usingNormals_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool usingTextures()

<!--
_syntax: usingTextures()_
_name: usingTextures_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

### ~ofMesh()

<!--
_syntax: ~ofMesh()_
_name: ~ofMesh_
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








<!----------------------------------------------------------------------------->

##Variables



###bool bColorsChanged

<!--
_name: bColorsChanged_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bFacesDirty

<!--
_name: bFacesDirty_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool bIndicesChanged

<!--
_name: bIndicesChanged_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bNormalsChanged

<!--
_name: bNormalsChanged_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bTexCoordsChanged

<!--
_name: bTexCoordsChanged_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bVertsChanged

<!--
_name: bVertsChanged_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofFloatColor colors

<!--
_name: colors_
_type: ofFloatColor_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMeshFace faces

<!--
_name: faces_
_type: ofMeshFace_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofIndexType indices

<!--
_name: indices_
_type: ofIndexType_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPrimitiveMode mode

<!--
_name: mode_
_type: ofPrimitiveMode_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###string name

<!--
_name: name_
_type: string_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f normals

<!--
_name: normals_
_type: ofVec3f_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec2f texCoords

<!--
_name: texCoords_
_type: ofVec2f_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool useColors

<!--
_name: useColors_
_type: bool_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool useIndices

<!--
_name: useIndices_
_type: bool_
_access: private_
_version_started: 0072_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool useNormals

<!--
_name: useNormals_
_type: bool_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool useTextures

<!--
_name: useTextures_
_type: bool_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f vertices

<!--
_name: vertices_
_type: ofVec3f_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

