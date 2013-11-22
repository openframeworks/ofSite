---
date: 2013/11/20 4:00:00
title: Generating Meshes
summary: Basics of Generating Meshes from an Image
author: [Michael Hadley](www.mikewesthad.wordpress.com/me)
---

##Basics of Generating Meshes from an Image

This tutorial is *hopefully* aimed at anyone who feels comfortable with the basic tutorials (setting up openFrameworks, using variables, creating loops, etc.) and is itching to start playing with 3D shapes.  It may be pedantic at times, but it will take you through the logic and code for taking this image (from the [Hubble star gallery](http://hubblesite.org/gallery/album/star/)):

![Original hubble image](003_images/stars_small.png) 

and making something like this:

![Generative hubble mesh](003_images/mesh_small.png)

The tutorial is broken into three sections:

1. [Basics: Working with ofMesh](#basics)
	* Points
	* Colors
	* Lines
    * Indices
2. [Generative Mesh: Using an image to drive the creation of an mesh](#generative)
	* Loading an image
    * Creating a mesh from the pixels
    * Using ofEasyCam to navigate the mesh
3. [Manipulations: Adding some effects that modify the mesh](#manipulations)
	* Making the vertices orbit 
    * Creating an interactive magnifying effect

<a name="Basics"></a>
##Basics: Working with ofMesh


A mesh is a collection of **vertices** - points in 3D space - that can be connected up in different ways.  The shapes that are formed by connecting these vertices are called **primitives**.  The primitives are our smallest building blocks that we can put together to form a mesh.
* You can choose to not connect any of your vertices and just draw points as the primitives.
* You can choose to connect pairs of vertices and draw lines as the primitives.
* You can connect three or four (or more) vertices and draw triangles or quads  (or polygons) as the primitives.

To make this a little more concrete, check out the below mesh.  The vertices are orange dots.  The vertices are connected up in sets of three points to form triangle primitives which were then colored in gray.  For some more depth on what a mesh is and why they are useful, have a look at the [opengl tutorial](http://www.openframeworks.cc/tutorials/graphics/opengl.html).

![Keenan Crane's public domain cow shown in wireframe](003_images/Keenan_Crane_Public_Domain_Cow_Small.png) 

In this tutorial, we'll focus on using points and lines as our primitives.  Let's get something drawn on our screen.  When creating a mesh you should:

1. Define an [ofMesh](http://www.openframeworks.cc/documentation/3d/ofMesh.html) variable.  Let's call it mesh.
2. Specify what primitive mode (points, lines, etc.) that the mesh should use to connect its vertices using mesh.[setMode()](http://www.openframeworks.cc/documentation/3d/ofMesh.html#!show_setMode).  We'll be using points as our primitive, so that means we should use **OF_PRIMITIVE_POINTS** mode.
3. Add some vertices using mesh.[addVertex()](http://www.openframeworks.cc/documentation/3d/ofMesh.html#show_addVertex).  A vertex is an [ofVec3f](http://www.openframeworks.cc/documentation/math/ofVec3f.html), so if you haven't used that class before, check out the example on the documentation page.
4. Draw your mesh using mesh.[draw()](http://www.openframeworks.cc/documentation/3d/ofMesh.html#show_draw).

And onto the code!

Add a mesh variable to your header file (testApp.h):
~~~~{.h}
  ofMesh mesh;
~~~~
Append these lines to your *setup()* and *draw()* functions in your source file (testApp.cpp):
~~~~{.cpp}
void testApp::setup() {
  mesh.setMode(OF_PRIMITIVE_POINTS);

  ofVec3f top(100.0, 50.0, 0.0);    
  ofVec3f left(50.0, 150.0, 0.0);    
  ofVec3f right(150.0, 150.0, 0.0);

  mesh.addVertex(top);
  mesh.addVertex(left);
  mesh.addVertex(right);
}
void testApp::draw() {
  ofBackground(0);
  mesh.draw();
}
~~~~
If you build and run your project, you should see three white dots that are placed in a triangular arrangement on top of a black background:

![Triangle Points](003_images/TrianglePoints.png) 

White is boring?  Well, you can add some color by modifying setup:

~~~~{.cpp}
void testApp::setup() {
  mesh.setMode(OF_PRIMITIVE_POINTS);
  mesh.enableColors();

  ofVec3f top(100.0, 50.0, 0.0);    
  ofVec3f left(50.0, 150.0, 0.0);    
  ofVec3f right(150.0, 150.0, 0.0);

  mesh.addVertex(top);
  mesh.addColor(ofFloatColor(1.0, 0.0, 0.0));

  mesh.addVertex(left);
  mesh.addColor(ofFloatColor(0.0, 1.0, 0.0));

  mesh.addVertex(right);
  mesh.addColor(ofFloatColor(1.0, 1.0, 0.0));
}
~~~~

We first enable colors using mesh.[enableColors()](http://www.openframeworks.cc/documentation/3d/ofMesh.html#show_enableColors).  Colors are enabled by default, but it is good practice to include this line.  Then we can add colors using mesh.[addColor()](http://www.openframeworks.cc/documentation/3d/ofMesh.html#show_addColor).  Colors are specified using ofFloatColor which is like [ofColor](http://www.openframeworks.cc/documentation/types/ofColor.html) except that the red, blue, green and alpha channels are specified with a float between 0.0 and 1.0.  (You *can* use an ofColor if you really want to do so, but you should use ofFloatColor.)   The first color we add applies to the first vertex, the second color to the second vertex, etc.

You find our point boring?  Time for some some lines.  Try each of these three modes for yourself:

~~~~{.cpp}
mesh.setMode(OF_PRIMITIVE_LINES);
mesh.setMode(OF_PRIMITIVE_LINE_STRIP);
mesh.setMode(OF_PRIMITIVE_LINE_LOOP);
~~~~

![Triangle Points](003_images/TriangleLineMode.png) 

Each mode uses lines as the graphical primitives, but they each have a different way that they generate lines from the vertices.
* **OF_PRIMITIVE_LINE** creates an *independent* line out of each pair of vertices.  If you have a set of vertices - V<sub>1</sub>, V<sub>2</sub>, V<sub>3</sub>, V<sub>4</sub>, ... - then V<sub>1</sub> will connect to V<sub>2</sub> and V<sub>3</sub> will connect to V<sub>4</sub>.
* **OF_PRIMITIVE_LINE_STRIP** will create a set of *connected* lines out of each pair of vertices.  V<sub>1</sub> will connect with V<sub>2</sub>.   V<sub>2</sub> will connect with  V<sub>3</sub>. Etc.
* **OF_PRIMITIVE_LINE_LOOP** will create a set of connected lines, and it will connect the first and last vertices.  

Only OF_PRIMITIVE_LINE_LOOP outlined the whole triangle. If you wanted to create that same triangle using OF_PRIMITIVE_LINE, you might try adding some more vertices like this:

~~~~{.cpp}
mesh.addVertex(top);
mesh.addVertex(left);
mesh.addVertex(left);
mesh.addVertex(right);
mesh.addVertex(right);
mesh.addVertex(top);
~~~~

You would be right to think that this feels excessive to add duplicate vertices.  Let’s try something else:

~~~~{.cpp}
void testApp::setup() {
  mesh.setMode(OF_PRIMITIVE_LINES);
  mesh.enableColors();
  mesh.enableIndices();

  ofVec3f top(100.0, 50.0, 0.0);    
  ofVec3f left(50.0, 150.0, 0.0);    
  ofVec3f right(150.0, 150.0, 0.0);

  mesh.addVertex(top);
  mesh.addColor(ofFloatColor(1.0, 0.0, 0.0));

  mesh.addVertex(left);
  mesh.addColor(ofFloatColor(0.0, 1.0, 0.0));

  mesh.addVertex(right);
  mesh.addColor(ofFloatColor(1.0, 1.0, 0.0));

  mesh.addIndex(0);
  mesh.addIndex(1);
  mesh.addIndex(1);
  mesh.addIndex(2);
  mesh.addIndex(2);
  mesh.addIndex(0);
}
~~~
 
Indices add a layer of abstraction.  Each vertex that you add to a mesh is tacked on to the end of a big old array, so each vertex has a number that uniquely identifies its position (or index) in that array.  There’s the zero-th vertex in the list, the first vertex in the list, the second, etc.  So now you can point to an existing vertex using an index.

When you call mesh.[enableIndices()](http://www.openframeworks.cc/documentation/3d/ofMesh.html#!show_enableIndices), openFrameworks creates an empty array of indices.  When you use [addIndex()](http://www.openframeworks.cc/documentation/3d/ofMesh.html#show_addIndex), you are adding values to the end of this array.  When the mesh is about to be drawn to the screen, instead of looking through the vertices array to create primitives, openFrameworks will look through your array of indices to determine how to create the primitives.

So when our mode is OF_PRIMITIVE_LINE and our array of indices is {0, 1, 1, 2, 2, 0}, then the 0th vertex and the 1st vertex are connected, the 1st vertex and the 2nd vertex are connected, and 2nd vertex and the 0th vertex are connected.  Whew, that’s a lot of work in order to create a single triangle?  Definitely.  But, the concept of indices is powerful and useful.

One more thing you might have noticed - the color of the lines.  You can check out the [opengl tutorial](http://www.openframeworks.cc/tutorials/graphics/opengl.html) for a more in-depth explanation, but this is some of the magic that is occurring on your graphics card.  You can tell it that point A is red, point B is blue and that point A and B are connected with a line.  Then, the graphics card will (linearly) interpolate between those colors as it draws the pixels that constitute that line.

As a reward for reading the whole section: 

![Line Mode Smile](003_images/LineModeFace.png) 

I know.  It's not a great reward.  But it does show off something you can do with OF_PRIMITIVE_LINES that you can't do with the two other line primitive modes - you can create separate lines.  We will take advantage of this in the next section.

~~~.cpp
  mesh.setMode(OF_PRIMITIVE_LINES);
  mesh.enableColors();
  mesh.enableIndices();

  ofVec3f eyeLeftTop(50.0, 25.0, 0.0);
  ofVec3f eyeLeftBottom(50.0, 50.0, 0.0);
  ofVec3f eyeRightTop(100.0, 25.0, 0.0);
  ofVec3f eyeRightBottom(100.0, 50.0, 0.0);
  ofVec3f mouthLeft(50.0, 75.0, 0.0);
  ofVec3f mouthMiddle(75.0, 100.0, 0.0);
  ofVec3f mouthRight(100.0, 75.0, 0.0);

  mesh.addVertex(eyeLeftTop);
  mesh.addVertex(eyeLeftBottom);
  mesh.addIndex(0);
  mesh.addIndex(1);
  mesh.addColor(ofFloatColor(0.0, 1.0, 1.0));
  mesh.addColor(ofFloatColor(0.0, 1.0, 1.0));

  mesh.addVertex(eyeRightTop);
  mesh.addVertex(eyeRightBottom);
  mesh.addIndex(2);
  mesh.addIndex(3);
  mesh.addColor(ofFloatColor(0.0, 1.0, 1.0));
  mesh.addColor(ofFloatColor(0.0, 1.0, 1.0));

  mesh.addVertex(mouthLeft);
  mesh.addVertex(mouthMiddle);
  mesh.addVertex(mouthRight);
  mesh.addIndex(4);
  mesh.addIndex(5);
  mesh.addIndex(5);
  mesh.addIndex(6);
  mesh.addColor(ofFloatColor(0.0, 1.0, 0.0));
  mesh.addColor(ofFloatColor(0.0, 1.0, 0.0));
  mesh.addColor(ofFloatColor(0.0, 1.0, 0.0));
~~~
