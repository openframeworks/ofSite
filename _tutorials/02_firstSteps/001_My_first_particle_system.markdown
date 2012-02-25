---
date: 2012/02/24 10:00:00
title: You first particle system
summary: Is there something more fun that a particle system for making your first steps?
author: Patricio Gonzalez Vivo
author_site: http://patriciogonzalezvivo.com
---

Well, you probably (and if not you should) read and learn how to install openFrameworks, setup you IDE and compile some project examples.
So the right next step probably could be jump into the nice stuff and start making things.

## 1. Drawing Something
Let's start by drawing something. As you know, if we want to draw something we have to put it on `void testApp::draw()` on you ```testApp.cpp```.
 
Let's a graphic version of a "Hello World". Drawing a blue circle.

~~~~{.cpp}
	void testApp::draw(){
		ofBackground(0);
		ofSetColor(0,0,255);
		ofFill();
		ofCircle(100, 100, 30);
	}
~~~~

For those that know a little about Processing this probable looks familiar, but probably with a "of" at the beginning. 

In the first line we are cleaning the background turning this into a black with `ofBackground(0);`. It's also possible to use RGB Channel by typing `ofBackground(76,63,72);` or something more intuitive like `ofBackground(ofColor::black);`. 
After drawing the background we are setting up the color that's going to use for drawing from that moment to the very end, unless it's changed. That's  `ofSetColor(int r, int g, int b)` do. This way's of dealing with stuff it's herded from openGL. There everything it's defined and that's applied from that point until it's changed again. Maybe at the beginning seams strange but soon you'll see that's a pretty good and efficient way of dealing with properties. 
So as we saw with ofBackground you can try doing something like `ofSetColor(ofColor:blue);` and it will work. 
The next line says `ofFill();` witch defines the drawing type to color filled images. Opposite of that it's `ofNoFill();` witch only draw the contour line. If you are thinking on using just the contour lines you probably want to try `ofSetLineWidth( 4 );`
So, after setting up our background and drawing color we draw a little circle of 30 pixels of radio at the `100,100` position.

![Image: coordinates.jpg](001_images/coordinates.png)

As you notice, `x` and `y` coordinates are setup in one way that the `0,0` position it's the right top corner. 

So if we have a `1024,768` windows and we want to draw something on the middle we can do something like: `ofCircle(1024/2,768/2,30);`. But what happen if the windows it's resized? The circle it's not more in the middle? It's not going to be centered any more, isn't it?

Where it's where some oF methods becomes very handy. Let me, introduce `ofGetWindowWidth()` and `ofGetWindowHeight()`. This methods return the values of the width and height of the windows, witch it's very very handy from drawing. There are two similar functions call `ofGetScreenWidth()` and `ofGetScreenHeight()` that instead of returning the windows parameters the return the screen ones.
Let's use some of this new stuff we have learn:

~~~~{.cpp}
	void testApp::draw(){
		ofBackground(30,10,30);
		ofSetColor(ofColor::blue);
		ofFill();
		ofCircle( ofGetWindowWidth()*0.5, ofGetWindowHeight()*0.5, 30);
	}
~~~~
So, now If you try to resize the windows this little blue world it's going to be at the center of the screen. Congratulations!!

A good next step it could be to take a look at the "Graphics" section on  [www.openframeworks.cc/documentation/](http://www.openframeworks.cc/documentation/) . There you will find lot's of other methods to draw stuff like `ofLine()`, `ofRect()`. 

On the documentation of oF you will notice that all the functions and classes on openFrameworks have a consistent way of working. The more you try things and play with them sooner you will get this "oF Style" and things will become pretty intuitive. 

CHALLENGE: Width the things we learn and those you can explore on [www.openframeworks.cc/documentation/](http://www.openframeworks.cc/documentation/) . Try to make your a digital Kandinsky-style art work. A little tip for super awesome results will be the use of: `ofEnableSmoothing();` for making smooth edge on the drawings and something like `ofBackgroundGradient(ofColor::white,ofColor(255,255,200), OF_GRADIENT_CIRCULAR);` for a nice gradient background

![Image:kandisky.jpg](001_images/kandinsky.jpg)
 

## 2. Moving things around

So far, so good. It's it. but everything seems a little static and the complete absence of interactivity probably it's getting you anxious. So let's start moving things around.   

There are to oF native variables on every testApp class. The are call `mouseX` and `mouseY`. It's not hard to guess what are those for. So let's go back to our previous example. On `draw()` on the `testApp.cpp` and use this variables.

~~~~{.cpp}
	void testApp::draw(){
		ofBackground(30,10,30);
		ofSetColor(ofColor::blue);
		ofFill();
		ofCircle( mouseX, mouseY, 30);
	}
~~~~

If you try to do the same with a rectangle ( `ofRect(mouseX,mouseY, 30, 30);`) you will notice that the center of the rectangle it just don't fit with the mouse position. That's because rectangles are draw from the top right corner. What's consistent with the way things are draw on the screen isn't? 
So, if we want to change this and draw the rectangles from the center we will use `ofSetRectMode(OF_RECTMODE_CENTER);`. 
Probably every time you see something that starts with "OF_" and it's all on capital letters means that you are probably dealing with modes and pre-defined types. This things are every where and we use them for lot's of things. Exploring the auto-completion list of your IDE or use the IDE functions of "Jump to definition".

By know we are only working on the `draw()` methods, and if we want some oF magic to happen we have to start using `update()` and `setup()`. So let's create two variables that are going to store an `x` and `y` variables for the circle in order to make some simple interactions. The thing here it's that if we create them on the `draw()` o `update()` method the will be created and destroyed every time a loop it's completed. In order to have some sort of "memory" of this variables that survive each loop we need to define them on the owl testApp class. In order to do that we have to jump to the the `testApp.h` , and there add them like this:


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

We are going to use this two variables to store the last position of the ball and in each itineration progressively move this parameters where the mouse is.

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

Nice, isn't?
Other very typical way of interaction it's the the keyboard. OpenFrameworks have some default methods for dealing with mouse and keyboard events. Take a look at the bottom of the `testApp.cpp`. You will see `keyPress()`, `keyRelease()`, `mouseMove()`, `mouseDragged()`, `mousePressed()` and `mouseReleased()` events.
We can use them to make some other interactions. In this point we can add some randomness interaction using `ofRandom()` and `ofNoise()`. I highly recommend you take a look to the documentation ( [www.openframeworks.cc/documentation/](http://www.openframeworks.cc/documentation/) ) and also taking a look to Golan's ofNoise example at `openFrameworks/examples/math` directory.
So let's add something really simple, here every time you press the mouse the ball get a random new position on the windows.

~~~~{.cpp}
	void testApp::mousePressed(int x, int y, int button){
		xPos = ofRandom( ofGetWindowWidth() );
		yPos = ofRandom( ofGetWindowHeight() );
	}
~~~~

CHALLENGE: Ok, now that we learn how to make variables that can be access from every method on the class we can start thinking on how store information and re use it. The next challenge could be to catch your Kandinsky-style project and make it in some way every time you click the windows all the peaces jump to a new position. Like a Kyndinsky-picture-maker. Also if you feel comfortable with it, you can add some basic animations to them.


## 3. Thanks God we have classes

If you are have doing the challenges you probably with end up with lot's of lines of code that actually look very similar repited several times. The main idea of computers it's to make our job easier, specially the repetitive one. 
Actually [Alan Kay](http://en.wikipedia.org/wiki/Alan_Kay) comes with this idea of object-oriented-programing ( witch is the main thing about C++ ) in order to make this little abstract object in order to re-use them and makes things easier and flexible.

So in order to make and use this "object" we have to make what it's call a class. Let's imagine a ball.
It's an round object that have some properties like the position and the color, also do things like move around. All this abstract items can be imagined as:

Ball:

- position (property)

- color (property)

- move (function or method)

This exactly what a `.h` it's a list of things that makes an object. So let's add two new files to our project ( this depends on the IDE you are using ), one it's going to be a `.h` file call `ball.h` (here we are going to define the elements of our ball) and the other one a `.cpp` call `ball.cpp` ( here we are going to write how this things are going to work together ).

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

Some couple of things are going around here. First note that's follows the `#...` you probably want to leave things that they are. A super simple explanation of it it could be: "Hey compiler, don't compile this stuff two times, and for compiling you will need ofMain.h header file.". The `ofMain.h` have all the methods and objects of openFrameworks. It's what makes your code oF-based and not just C++ code. It's where the magic came from.

For making a object you need to call the class function and give it a constructor. The constructor it's the method that it will run when you create it. It's like when you write 'int i' and 'i' automatically it's setup to zero. The int constructor did that. 
Then the rest of the things are the ones we describe before. I add a `draw()` function in order to draw the ball on our "world".

IMPORTANT: Take a look to the `};` at the end of the class. That's super important! Without that you probably get some impossible errors to track down.  

On the `ball.cpp` side let's preparing everything for work writing:

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

So, as you see here we are going to put the implementation of the methods defined on `ball.h`. Note also that we have to said to the compiler two things:

- `#include "ball.h"` this stuff responds to "ball.h" file

- `Ball::` this says to the compiler that this method it's from `Ball` class. You can picture it like a last name. And it's use exactly for the same reason. To know where one becomes and not mess up names.

The last step for adding a class on a C++ project it's to add it to the `testApp.h` with a `#include "ball.h"` 

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
    
    		Ball theBall;	// Now let´s try it by replacing the previous variables 
							// for a object with that information
	};
~~~~

So on the `testApp.cpp` we can change things to look like this:

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

Ok, so now we have a general object that´s automatically is created with some random values, but if we want we can access to the information inside it by using `object.property` or `object.method()`. 
This means that every time we want a new ball we have just to create it and draw it! It´s not awesome?

One last thing, it's to talk about how you can pass some parameters to a object method. If we look to the `testApp::update()` code we are accessing to `x` and `y` information by calling them using the `.`. That's not bad, but it to make things more logical and intuitive if we said something like `myBall.moveTo(mouseX,mouseY)` isn´t it?
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


## 4. Let's go physicaly

Before we continue on our way a to proper particle system. I have good news, You don´t have to deal with heavy maths and lot's of variables for making some nice physics calculations. There some really cool native classes that will help your on that and make's your life really easy. Also you can get very deep in to crazy awesome things taking a look to on Keith´s tutorials at [Math Tutorials](http::/openframeworks.cc/tutorials/maths/)
Our new things it´s going to be a object call `ofVec2f()` for dealing with two dimensional math vector. This will let us work with forces very easily, and because at the very end it´s a class we are going to use them as object. Just like we do with our bright class call `Ball`.
Each `ofVec2f` have a `x` and `y` value, and you can access to them in the same way we just do with `ball.x` and `ball.y`. The thing with `ofVec2f` it´s that also have really handy methods like `.dot()` and also operator `+`, `+`, `*` and `/` that get in chard of the maths calculations.

 
 


