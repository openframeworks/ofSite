---
date: 2013/11/20 4:00:00
title: Generating Meshes
summary: Basics of Generating Meshes from an Image
author: [Michael Hadley](www.mikewesthad.wordpress.com/me)
---

##Basics of Generating Meshes from an Image

This tutorial is *hopefully* aimed at anyone who feels comfortable with the basic tutorials (setting up openFrameworks, using variables, creating loops, etc.) and is itching to start playing with 3D shapes.  It may be pedantic at times, but it will take you through the logic and code for taking this image (from the [Hubble star gallery](http://hubblesite.org/gallery/album/star/)):

![IMG](003_images/stars.png)

and making something like this:

INSERT IMAGE.

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

A mesh is a collection of vertices - points in 3D space - that can be connected up in different ways.  You can choose to not connect any of your vertices (OF_PRIMITIVE_POINTS).  You can choose to draw lines between pairs of vertices (OF_PRIMITIVE_LINES, OF_PRIMITIVE_LINE_STRIP, OF_PRIMITIVE_LOOP).  You can draw triangles between triplets of vertices or quads between sets of four vertices.

You send your vertices and rule for how to connect them (along with some other stuff) off to the graphics card, and the graphics card handles the drawing.

For this tutorial, we’ll focus on drawing points and lines.  Let’s get something drawn on our screen for this to start making some more sense:

Add a mesh variable to your header file (testApp.h):

~~~~{.h}
ofMesh mesh;
~~~~

Add a mesh variable to your source file (testApp.cpp):
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