---
date: 2012/02/24 10:00:00
title: Steps to your first particle system
summary: Is there something more fun than a particle system for making your first steps?
author: Patricio Gonzalez Vivo
author_site: http://patriciogonzalezvivo.com
---

At this point, you should have read how to download openFrameworks, setup your IDE and compile some project examples.
Now you can jump into the fun stuff and start making things!

## 1. Draw Something
Let's start by drawing something. If we want to draw something we have to put it inside the function `void testApp::draw()` in the file ```testApp.cpp```.
 
Let's start with a graphic version of "Hello World". This draws a blue circle:

~~~~{.cpp}
	void testApp::draw(){
		ofBackground(0);
		ofSetColor(0,0,255);
		ofFill();
		ofCircle(100, 100, 30);
	}
~~~~

For those that know a little about Processing this may look familiar, the biggest difference being the "of" prefix. 

In the first line we are filling the background with black with `ofBackground(0);`. It's also possible to use RGB values by typing `ofBackground(76,63,72);` or something more intuitive like `ofBackground(ofColor::black);`. 
After drawing the background we are setting up the color with `ofSetColor(int r, int g, int b)` that will remain from until it is changed. openFramework's origins are based in OpenGL and like OpenGL once a state is applied it will remain in the state from that point until it's changed again. It may seem strange in the beginning but soon you will see that it is a pretty good and efficient way of dealing with properties. 
So like with ofBackground, you can use options like `ofSetColor(ofColor:blue);` and it will change the color of the circle. 
The next line, `ofFill();` , defines the fill style of the shape (filling the shape with color). The opposite is `ofNoFill();` that will only draw the outline. You can change the size of the outline with `ofSetLineWidth( 4 );`
Once we set up our background and drawing color we draw a small circle with a radius of 30 pixels at the `100,100` position.

![Image: coordinates.jpg](001_images/coordinates.png)

As you may notice, `x` and `y` coordinates are setup in a way that the `0,0` position it's the top left corner. 

So if we have a `1024,768` window and we want to draw something on the middle we can do something like: `ofCircle(1024/2, 768/2, 30);`. What happens if the windows is resized? The circle is no longer centered because we used "hardcoded" values.

This is where some the oF methods `ofGetWindowWidth()` and `ofGetWindowHeight()` become very handy. These methods return the current values of the width and height of the windows. There are two similar functions named `ofGetScreenWidth()` and `ofGetScreenHeight()` that instead of returning the windows parameters the return the width and height of the entire screen.
Let's use some of this new stuff we just learned about:

~~~~{.cpp}
	void testApp::draw(){
		ofBackground(30,10,30);
		ofSetColor(ofColor::blue);
		ofFill();
		ofCircle( ofGetWindowWidth()*0.5, ofGetWindowHeight()*0.5, 30);
	}
~~~~
So, now when you resize the window this little blue world remains centered. Congratulations!!

Now let's take a look at the "Graphics" section on  [www.openframeworks.cc/documentation/](http://www.openframeworks.cc/documentation/) . There you will find lots of other methods like `ofLine()`, `ofRect()` that are related to drawing. 

In the documentation of openFrameworks you will notice that all the functions and classes have a consistent way of working. The more you try things and play with them sooner you will get this "oF Style" and things will become pretty intuitive. 

CHALLENGE: Referring to the documention, try and make your a digital Kandinsky-style artwork. [www.openframeworks.cc/documentation/](http://www.openframeworks.cc/documentation/) . A little tip for super awesome results will be the use of: `ofEnableSmoothing();` for making smooth edges and something like `ofBackgroundGradient(ofColor::white,ofColor(255,255,200), OF_GRADIENT_CIRCULAR);` for a nice gradient background.

![Image:kandisky.jpg](001_images/kandinsky.jpg)
 

## 2. Moving things around

So far, so good. Right now everything is a little static and the complete absence of interactivity is probably getting you anxious. Let's start moving things around.   

Two variables available to every openFrameworks application are `mouseX` and `mouseY`. Let's go back to our previous example and use these variables inside `testApp::draw()`.

~~~~{.cpp}
	void testApp::draw(){
		ofBackground(30,10,30);
		ofSetColor(ofColor::blue);
		ofFill();
		ofCircle( mouseX, mouseY, 30);
	}
~~~~

If you try to do the same with a rectangle ( `ofRect(mouseX,mouseY, 30, 30);`) you will notice that the center of the rectangle it just don't fit with the mouse position. This is because by default, rectangles are draw from the top left corner.  
Fortunately we have options and can use `ofSetRectMode(OF_RECTMODE_CENTER);` to set the anchor point to the center of the shape. 
Probably every time you see something that starts with "OF_" and in all-caps it means that you are dealing with modes and pre-defined types. Feeling adventerous, explore using the auto-completion list of your IDE or options like  "Jump to definition".

Right now we are only working on the `draw()` methods and if we want some oF magic to happen we have to start using `update()` and `setup()`. So let's create two variables that are going to store the `x` and `y` properties for the circle. If we create them inside the `draw()` or `update()` methods the values will be created and destroyed every time a loop is completed. In order to allow the variables to survive each loop we need to define them at the top of testApp. The best place to do this is inside the file `testApp.h` like this:


~~~~{.cpp}
	class testApp : public ofBaseApp{
	public:
		void setup();
		void update();
		void draw();

		void keyPressed  (int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);

		float xPos;
		float yPos;
	};
~~~~

We are going to use these two variables to store the last position of the ball and progressively move the ball towards the mouse.

~~~~{.cpp}
	void testApp::setup(){
		// Smooth edges
		ofEnableSmoothing();

	    // Fixed framerate
		ofSetFrameRate(30);

		// Initial x position of the ball
		xPos = ofGetWindowWidth()*0.5;

		// Initial y position of the ball
		yPos = ofGetWindowHeight()*0.5; 
	}

	void testApp::update(){
		xPos += ( mouseX - xPos )*0.1;
		yPos += ( mouseY - yPos )*0.1;
		// We calculate the x and y distance 
		// of the ball to the mouse position and 
		// add a little portion of it to the x and y 
		// variables
	}

	void testApp::draw(){
		ofBackgroundGradient(ofColor::gray,ofColor(30,10,30), OF_GRADIENT_CIRCULAR);
		ofSetColor(200,200,124);
		ofFill();
		ofCircle( xPos, yPos, 30);
	}
~~~~

Nice, isn't it?
Other very typical interaction is using the the keyboard. openFrameworks has some default methods for capturing mouse and keyboard events. Take a look at the bottom of the `testApp.cpp`. You will see `keyPress()`, `keyRelease()`, `mouseMove()`, `mouseDragged()`, `mousePressed()` and `mouseReleased()` events.

At this point we can add some randomness interaction using `ofRandom()` and `ofNoise()`. I highly recommend you take a look at the documentation ( [www.openframeworks.cc/documentation/](http://www.openframeworks.cc/documentation/) ) and also taking a look to Golan's ofNoise example at `openFrameworks/examples/math` directory.
So let's add something really simple. Here every time you press the mouse the ball will go to a random position.

~~~~{.cpp}
	void testApp::mousePressed(int x, int y, int button){
		xPos = ofRandom( ofGetWindowWidth() );
		yPos = ofRandom( ofGetWindowHeight() );
	}
~~~~

CHALLENGE: Now that we have learned how to make variables that you can access from anywhere in the class we can start thinking what possiblities this opens up. For instance, you could take your Kandinsky-style project and make your shapes jump to a new position every time you press the mouse button. Maybe try adding some basic animations to them.


## 3. Thank God we have classes

If you are have doing the Challenges you have may have ended up with a lot of repeated code. Forutunately computers make repetition easy. 
Here we will scratch the surface of Object Oriented Programing (a primary feature of C++) in order to make things easier, more readable and less repetitive.

Let's imagine a ball.
It's an round object that have some properties like the position and the color, also do things like move around. All this abstract items can be imagined as:

Ball:

- position (property)

- color (property)

- move (function or method)

This exactly what a `.h` it's a list of things that makes an object. So let's add two new files to our project ( this depends on the IDE you are using ), one it's going to be a `.h` file call `ball.h` (here we are going to define the elements of our ball) and the other one a `.cpp` call `ball.cpp` ( here we are going to write how these things work together ).

![Image:kandisky.jpg](001_images/newFile.png)

The `ball.h` file should look like: 

~~~~{.cpp}
	#ifndef ball_h
	#define ball_h

	#include "ofMain.h"

	class Ball {
	public:
    		// Constructor
    		Ball();     
    
    		// Methods
    		void moveTo();
    		void draw();
    
    		// Properties
    		int x;
    		int y;
    		ofColor color;
	};
	#endif
~~~~

Congratulations, you just created your own Class! There are couple of new things are going on here. The first 2 lines (`#ifndef..` prevent the compiler from using copying the file multiple times. This is a standard practice in C++ and you probably want to leave things the way they are. You are basically saying, "Hey compiler, don't compile this stuff two times, and for compiling you will need ofMain.h header file.". Including `ofMain.h` will give you access to all the methods and objects of openFrameworks. This is what makes your code oF-based and not just C++ code and where the magic happens.

To create a object you need to call the Class's constructor. The constructor `Ball()` is the first thing that will execute and create the Ball. It's like when you write `int i;` and 'i' automatically is initially set to zero. int's constructor took care of that for you. 
The properties should look familiar at this point but a new method is the `draw()` function.

IMPORTANT: Take a look to the `};` at the end of the class. That's super important! Without it you will get annoying errors that are difficult track down.  

Inside the file `ball.cpp` let's prepare everything:

~~~~{.cpp}
	#include "ball.h"

	Ball::Ball(){
		// Set the initial color
		color.set( ofRandom(255), ofRandom(255), ofRandom(255));
    
		// Initial x position of the ball
		x = ofRandom( ofGetWindowWidth() ); 
    
		// Initial y position of the ball
		y = ofRandom( ofGetWindowHeight() ); 
	}

	void Ball::moveTo(){
    
	}

	void Ball::draw(){
		ofSetColor(color);
		ofFill();
		ofCircle( x, y, 30);
	}
~~~~

As you see here we are going to implement of the methods defined on `ball.h`.
We have to said to the compiler two things:

- `#include "ball.h"` this stuff responds to "ball.h" file

- `Ball::` tells the compiler that this method is from `Ball` class. You can picture it like a first part of a full name. 

The last step for adding a Class is to add it to `testApp.h` with a `#include "ball.h"` 

~~~~{.cpp}
	#pragma once

	#include "ofMain.h"

	#include "ball.h" // Add this

	class testApp : public ofBaseApp{
  	public:
    		void setup();
    		void update();
    		void draw();

    		void keyPressed  (int key);
    		void keyReleased(int key);
    		void mouseMoved(int x, int y );
    		void mouseDragged(int x, int y, int button);
    		void mousePressed(int x, int y, int button);
    		void mouseReleased(int x, int y, int button);
    		void windowResized(int w, int h);
    		void dragEvent(ofDragInfo dragInfo);
    		void gotMessage(ofMessage msg);
    
    		Ball theBall;	// Replaces the previous variables 
							// with a new object that contains 
							// the previous information
	};
~~~~

In `testApp.cpp` we can change things to look like this:

~~~~{.cpp}
	void testApp::setup(){
		// Smooth edges
		ofEnableSmoothing();

		// Fixed framerate
		ofSetFrameRate(30);

		// Not need to define the initial position of the ball
		// because the Ball constructor does it for you     
	}

	void testApp::update(){
		theBall.x += ( mouseX - theBall.x )*0.1;    
		theBall.y += ( mouseY - theBall.y )*0.1;
	}

	void testApp::draw(){
		ofBackgroundGradient(ofColor::gray,ofColor(30,10,30), OF_GRADIENT_CIRCULAR);
    		
		// Now we have a method that does the drawing stuff
		theBall.draw();
	}
~~~~

So now we have a general object that´s automatically is created with some random values, but if we want we can access to the information inside it by using `object.property` or `object.method()`. 
This means that every time we want a new Ball we just to create it and draw it! Is it not awesome?

One last thing to talk about how you can pass some parameters to a object method. If we look to the `testApp::update()` code we are changing the `x` and `y` properties by using the dot-syntax `.`. That's not bad, but it to make things more readable and intuitive if it looked like `myBall.moveTo(mouseX,mouseY)`?
So let´s change `ball.h` and  `ball.cpp`.

~~~~{.cpp}
	void Ball::moveTo(int _xDestiny, int _yDestiny){
		x += ( _xDestiny - x )*0.1;
		y += ( _yDestiny - y )*0.1;
	}
~~~~

And use it like like this on the testApp project

~~~~{.cpp}
	void testApp::update(){
    		theBall.moveTo(mouseX,mouseY);
	}
~~~~


## 4. Let's get physical

Before we continue on our way a to proper particle system. I have good news, You don´t have to deal with heavy maths in order to create some nice physics based effects. openFrameworks provides some very nice functionality that makes this much easier. However if you want to dive into the details, take a look at Keith´s tutorials at [Math Tutorials](http://openframeworks.cc/tutorials/maths/) that can lead you to crazy awesome new things.

Some of the most helpful classes are contained in ofVectorMath that allow us to work with forces very easily. Just like have in our `Ball` class, `ofVec2f` has `x` and `y` values, and you can access to them in the same way we just do with `ball.x` and `ball.y`. `ofVec2f` also have really handy methods like `.dot()` and also operator `+`, `+`, `*` and `/` that do the math for you.

 
 


