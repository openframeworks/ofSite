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


A mesh is a collection of vertices - points in 3D space - that can be connected up in different ways:  
* You can choose to not connect any of your vertices (points mode).  
* You can choose to draw lines between pairs of vertices (lines mode).   
* You can draw triangles between sets of three of vertices or quads between sets of four vertices (triangle and quad modes respectively).

To make this a little more concrete, check out the below mesh.  The vertices are orange dots.  The vertices are connected up in sets of three points to form triangles which were then colored-in with gray.  

![Keenan Crane's public domain cow shown in wireframe](003_images/Keenan_Crane_Public_Domain_Cow_Small.png) 

For some more depth on what a mesh is and why they are useful, have a look at the [opengl tutorial](http://www.openframeworks.cc/tutorials/graphics/opengl.html).  For this tutorial, we'll focus on two different ways of connecting vertices - points mode and lines mode.  Let's get something drawn on our screen for this to start making some more sense:

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
IMAGE
We first had to define an [ofMesh](http://www.openframeworks.cc/documentation/3d/ofMesh.html) variable called ‘mesh.’  Then, we needed to specify what mode the ofMesh should use to connect its vertices.  For now we aren't going to connect the vertices (points mode), so we pass in the constant OF_PRIMITIVE_POINTS. Finally, we can finish building our mesh by adding three vertices to it - one for each corner of the triangle.  Drawing our finished mesh is just a matter of calling the mesh's *draw()* function.
