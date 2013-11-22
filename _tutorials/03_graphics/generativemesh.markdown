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
3. [Manipulations: Adding effects that modify the mesh](#manipulations)
    * Adding jitter
    * Making the vertices orbit 
    * Creating an interactive magnifying effect

<a name="basics"></a>
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

<a name="generative"></a>
##Generative Mesh: Using an image to drive the creation of a mesh

Meshes! You now have the basic ingredients to start creating a ‘generative’ mesh.  This is just a type of mesh that is created from a set of *rules* that are applied to some *data*.  

So we need some data and some rules.  Let's grab some 'data' from the Hubble Telescope:

![Original hubble image](003_images/stars.png) 

Create a [new openFrameworks project](http://www.openframeworks.cc/tutorials/introduction/002_projectGenerator.html) called HubbleMesh and save that image as 'stars.png' in your HubbleMesh/bin/data directory.

Now we have some colorful, pixely goodness, but what rules should we use to transform those pixels into a mesh?  We can start with points and work our way back to lines.  Our image has a ton of stars, why don't we create some vertices where those stars are located?  Once we do that, we can connect up nearby vertices with lines in order to create a spindly web our of our stars.

First things first, let's load that image.  Go into the main.cpp file and change the dimensions to match the dimensions of the image you just downloaded:
~~~.cpp
    ofSetupOpenGL(800,800,OF_WINDOW);
~~~
Then go into your HubbleMesh.h file and add:
~~~.h
    ofImage image;
~~~
And lastly, into your HubbleMesh.cpp file:
~~~.cpp
void HubbleMesh::setup(){
    image.loadImage("stars.png");
}
void HubbleMesh::draw(){
    image.draw(0,0);
}
~~~

There is no dedicated [ofImage](http://www.openframeworks.cc/documentation/graphics/ofImage.html) tutorial at the moment, so you will have to poke around the [openFrameworks for Processing users](http://www.openframeworks.cc/tutorials/first%20steps/002_openFrameworks_for_processing_users.html) tutorial or [004 presentation](http://www.openframeworks.cc/tutorials/first%20steps/004_presentations.html) if you want to know more about what you can do with images.

We just need to load in our image using [loadImage()](http://www.openframeworks.cc/documentation/graphics/ofImage.html#!show_loadImage) and draw it at the top left corner of the screen with [draw(0,0)](http://www.openframeworks.cc/documentation/graphics/ofImage.html#show_draw).

Great! Image loaded.  Now, we want to create a mesh with some vertices. If we only want to create vertices at the location of stars, then we will need to get access to the color information of the pixels using image.[getColor(x, y)](http://www.openframeworks.cc/documentation/graphics/ofImage.html#show_getColor).  We want to loop through the pixels in the image and apply a [threshold](http://en.wikipedia.org/wiki/Thresholding_(image_processing)) such that we only create a vertex at the pixel locations where the intensity of the color is greater than some value. 

Add a mesh to HubbleMesh.h:
~~~.h
		ofMesh mesh;
~~~

And add this to HubbleMesh.cpp:
~~~.cpp
void HubbleMesh::setup(){
    image.loadImage("stars.png");

    mesh.setMode(OF_PRIMITIVE_POINTS);

    float intensityThreshold = 150.0;
    int w = image.getWidth();
    int h = image.getHeight();
    for (int x=0; x<w; ++x) {
        for (int y=0; y<h; ++y) {
            ofColor c = image.getColor(x, y);
            float intensity = c.getLightness();
            if (intensity >= intensityThreshold) {
                ofVec3f pos(x, y, 0.0);
                mesh.addVertex(pos);
                mesh.addColor(c);
            }
        }
    }
}
void HubbleMesh::draw(){
    ofBackground(0,0,255);
    mesh.draw();
}
~~~

![Thresholded Stars Point Mesh](003_images/ThresholdedStarsSmall.png) 

We created a mesh with points for primitives.  Then we looped through each pixel in the image (using [getWidth()](http://www.openframeworks.cc/documentation/graphics/ofImage.html#show_getWidth) and [getHeight()](http://www.openframeworks.cc/documentation/graphics/ofImage.html#show_getHeight)) and checked the intensity of each pixel's color using [getLightness()](http://www.openframeworks.cc/documentation/types/ofColor.html#!show_getLightness).  If the intensity exceeded our threshold, we created a vertex at the location of the pixel and colored it with the pixel's color.  When we draw our mesh on a blue background, we can see which pixels from the image were used to generate vertices.

Let's make that background into something more fitting (using [ofBackgroundGradient](http://www.openframeworks.cc/documentation/graphics/ofGraphics.html#!show_ofBackgroundGradient)...

~~~.cpp
void HubbleMesh::draw(){
    ofColor centerColor = ofColor(85, 78, 68); 
    ofColor edgeColor(0, 0, 0);
    ofBackgroundGradient(centerColor, edgeColor, OF_GRADIENT_CIRCULAR);
    mesh.draw();
}
~~~

Almost time for lines, lines, lines!  

We have a lot of vertices in our mesh.  You can check the number using [getNumVertices()](http://www.openframeworks.cc/documentation/3d/ofMesh.html#show_getNumVertices) if you like: 

~~~.cpp
    cout << mesh.getNumVertices() << endl;  // It should be ~64,000
~~~

If we were to start looping through those each of those 64,000 vertices to connect them up to the other vertices that are close-by, we would spend a lot of time in that loop.  To give our computers a break, we are going to resize our image:

~~~.cpp
    image.loadImage("stars.png");
    image.resize(200, 200);
~~~

And then because our image pixel are no longer one-to-one with our openFrameworks window pixels, we need to adjust the the *pos* variable inside our loop:

~~~.cpp
            if (c.getLightness() > intensityThreshold) {
                // We shrunk our image by a factor of 4, so we need to multiply our pixel 
                // locations by 4 in order to have our mesh cover the openFrameworks window
                ofVec3f pos(4*x, 4*y, 0.0);
                mesh.addVertex(pos);
                mesh.addColor(c);
            }
~~~

Now that we have a reasonable number of vertices (around 2000), we can connecting up vertices to form lines.  If we want to only connect vertices that are nearby to each other, then we need to loop through all possible pairs of vertices, check if the distance between them is less than a particular value, and if so, connect them.

~~~.cpp
    // Don't forget to change to lines mode!
    mesh.setMode(OF_PRIMITIVE_LINES);

    // Code for finding vertices is the same as above

    // Let's add some lines!
    float connectionDistance = 30;
    int numVerts = mesh.getNumVertices();
    for (int a=0; a<numVerts; ++a) {
        ofVec3f verta = mesh.getVertex(a);
        for (int b=a+1; b<numVerts; ++b) {
            ofVec3f vertb = mesh.getVertex(b);
            float distance = verta.distance(vertb);
            if (distance <= connectionDistance) {
                mesh.addIndex(a);
                mesh.addIndex(b);
            }
        }
    }
~~~

You should end up with something link this (if the code is taking too long to run on your machine, try increasing the *intensityThreshold* variable to reduce the number of vertices):

![First Line Mesh](003_images/StarLinesFirstMeshSmall.png) 

Let's look at that code again:
1. We need to get all unique pairs of vertices.  We can get the position of the *i*th vertex in our mesh using mesh.[getVertex()](http://www.openframeworks.cc/documentation/3d/ofMesh.html#show_getVertex).  Then we can use two for loops to get every pair of vertices.  You might be wondering why the second loop starts *b=a+1*.  Without going into the details - the order of the vertices does not matter when connecting them to form a line, so we can exclude a bunch of values for *b*.
2. Then, we need to find the distance between those vertices.  ofVec3f has a function to do just that [distance()](http://www.openframeworks.cc/documentation/math/ofVec3f.html#show_distance)).
3. If they are closer than a value set by *connectionDistance*, then we need to add a line between them.  Adding a line is just a matter of adding the indices *a* and *b* to the mesh.

Boom! Generative mesh.  Let’s add two more tweaks to make this into proper 3D.  Firstly, we can use the saturation of the color to change the z-coordinate.

~~~.cpp
            if (intensity >= intensityThreshold) {
                float saturation = c.getSaturation();
                float z = ofMap(saturation, 0, 255, -100, 100);
                ofVec3f pos(4*x, 4*y, z);
                mesh.addVertex(pos);
                mesh.addColor(c);
            }
~~~

This code will push brighter colors in the positive z-direction and whiter colors in the negative-z direction using [ofMap()](http://www.openframeworks.cc/documentation/math/ofMath.html#!show_ofMap).  ofMap allows us to take a value that is within one range (0 to 255) and map it to a new range of values (-100 to 100).

Hm? That didn't change your mesh very much?  Well, now it's time for the last tweak in this section: adding a camera.

Add this to your header:
~~~.h
		ofEasyCam easyCam;
~~~
And then modify your draw function:
~~~.cpp
void HubbleMesh::draw(){
    ofColor centerColor = ofColor(85, 78, 68);
    ofColor edgeColor(0, 0, 0);
    ofBackgroundGradient(centerColor, edgeColor, OF_GRADIENT_CIRCULAR);

    easyCam.begin();
        ofPushMatrix();
            ofTranslate(-ofGetWidth()/2, -ofGetHeight()/2);
            mesh.draw();
        ofPopMatrix();
    easyCam.end();
}
~~~

[ofEasyCam](http://www.openframeworks.cc/documentation/3d/ofEasyCam.html) is a quick way to get a feel for that elusive 3rd dimension in your generative mesh.  That [opengl tutorial](http://www.openframeworks.cc/tutorials/graphics/opengl.html) goes into cameras, [ofPushMatrix()](http://www.openframeworks.cc/documentation/graphics/ofGraphics.html#!show_ofPushMatrix), [ofPopMatrix()](http://www.openframeworks.cc/documentation/graphics/ofGraphics.html#!show_ofPopMatrix) and [ofTranslate()](http://www.openframeworks.cc/documentation/graphics/ofGraphics.html#!show_ofTranslate).  This code will center you mesh in the camera's view.  Now you can left click and drag to rotate! And right click and drag to zoom!


![Line Mesh with Camera](003_images/LineMeshCameraSmall.png) 



<a name="manipulations"></a>
##Manipulations: Adding effects that modify the mesh


Jitter
Hmm...gif framerate is no bueno...
![Jitter](003_images/MeshJitterEndlessSmall.png) 


Orbit
![Orbit1](003_images/Orbit1.png) 
![Orbit2](003_images/Orbit2.png) 


Magnifying
![Magnified1](003_images/Magnified1.png) 
![Magnified2](003_images/Magnified2.png) 
