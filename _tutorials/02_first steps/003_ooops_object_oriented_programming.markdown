---
date: 2008/03/20 20:18:00
title: Ooops! = Object Oriented Programming + Classes
summary: This tutorial is an quick introduction to Object Oriented Programming in OpenFrameworks and a how-to guide to build and use your own classes.
author: Rux
author_site: 
---

## Contents

*   [1 Overview][2]
*   [2 What is OOP][3]
*   [3 How to build your own Classes][4]
*   [4 make objects from your own Classes][5]
*   [5 make objects from your own Classes - part 2][6]
*   [6 make objects from your own Classes - part 2.1][7]
*   [7 make objects from your own Classes - part 3][8]
*   [8 make objects from your own Classes - part 4][9]
    

<h2 id="overview">Overview</h2>

This tutorial is an quick introduction to Object Oriented Programming in OpenFrameworks and a how-to guide to build and use your own classes.  

Examples used are based on Mikkel Koser's ofBall class. [See forum thread here][11]   

<h2 id="oop">What is OOP</h2>

Object Oriented Programming is a programming paradigm based on the use of objects and their interactions.
some definitions:

-a Class defines the characteristics of a thing - the object - and its behaviors; it defines not only its properties and attributes but also what it can do.

-an Object is an instance of a class.

-the Methods are the objects abilities and how we can call them.

A recurring analogy is to see a Class as a the cookie cutter and the cookies as the Objects.

<h2 id="classes">How to build your own Classes</h2> 

Classes and objects are similar to the concepts of movie clips and instances in Flash and are also a fundamental part of Java programming.
If you have a background in Java and/or Processing this other tutorial will be useful. [OF\_for\_P5\_users][14]

This is how you declare a Class -\> in the header file (\*.h), otherwise known as the declarations file. In this case, the file name should be ofBall.h
[![Image:ex1-ball_h.jpg](003_images/Ex1-ball_h.jpg)][15]
    
~~~~{.cpp}
    #ifndef _OF_BALL // if this class hasn't been defined, the program can define it
    #define _OF_BALL // by using this if statement you prevent the class to be called more 
                     // than once which would confuse the compiler
    
    #include "ofMain.h"
      
    class ofBall {
    
        public: // place public functions or variables declarations here
      
            // methods, equivalent to specific functions of your class objects
            void update();  // update method, used to refresh your objects properties
            void draw();    // draw method, this where you'll do the object's drawing 
      
            // variables
            float x;      // position
            float y;
            float speedY; // speed and direction
            float speedX;
            int dim;      // size
        
      
      
                            
            ofBall(); // constructor - used to initialize an object, if no properties are passed
                      //               the program sets them to the default value
      
          
        private: // place private functions or variables declarations here
       
    }; // dont't forget the semicolon!!
    
    #endif 
~~~~
    
    

We have declared the Ball class header filer (the list of ingredients) and now lets get to the cooking part -\> what to do with the ingredients!
Please notice the '\#include' tag, this is a way to tell the compiler which file to include for each implementation file. When the program is compiled these '\#include' tags will be replaced by the original file they're referring to.
The 'if statement' (\#ifndef) is a way to prevent the repetition of header files which could easily occur. Here's an example of how easily this could happen due to the recursive structure of the program:
Lets say we're building a Pool game, we'll have the ofApp class, dependent on this there will be the pool table class and also the pool stick class and as both of these will be needed for our balls colision detection function both will refer to the ball class individually. If we didn't use the '\#ifndef' 'if' statement the compiler would try to compile the ball class repeatedly and would find some conflicts.

[![Image:ex-ifndef.jpg](003_images/Ex-ifndef.jpg)][16]

Here's how you can write the class \*.cpp file, the implementation file:

~~~~{.cpp}
    #include "ofBall.h"
    
    ofBall::ofBall()
    {
        x = ofRandom(0, ofGetWidth());      // give some random positioning
        y = ofRandom(0, ofGetHeight());

        speedX = ofRandom(-1, 1);           // and random speed and direction
        speedY = ofRandom(-1, 1);

        dim = 20;
    }
    
    void ofBall::update(){
        if(x < 0 ){
            x = 0;
            speedX *= -1;
        } else if(x > ofGetWidth()){
            x = ofGetWidth();
            speedX *= -1;
        }
    	
        if(y < 0 ){
            y = 0;
            speedY *= -1;
        } else if(y > ofGetHeight()){
            y = ofGetHeight();
            speedY *= -1;
        } 
    	
        x+=speedX;
        y+=speedY;
    }
    
    void ofBall::draw(){
        // values for R, G, B
        ofSetColor(120,120,120);
        ofCircle(x, y, dim);
    } 
~~~~   

[![Image:ex1-ball_cpp.jpg](003_images/Ex1-ball_cpp.jpg)][17]

<h2 id="objects-part-1">make objects from your own Classes</h2>

now that we've created a class let's make the real object!
in your testapp.h (header file) we'll have to add declare a new object and get some free memory for it. this is how we do it:

[![Image:ex1-h.jpg](003_images/Ex1-h.jpg)][19]
  
~~~~{.cpp} 
    	ofBall myBall;
~~~~
  
and finally let's get that ball bouncing on screen!
go to your project testapp.cpp (implementation) file. now that we've created the object we just need to draw it and update its values by calling its methods.
in the update() function add:

[![Image:ex1-cpp.jpg](003_images/Ex1-cpp.jpg)][20]

~~~~{.cpp}    
      myBall.update();  // calling the object's update method
~~~~    
    
and in the draw() function lets add:

~~~~{.cpp}    
      myBall.draw();  // call the draw method to draw the object
~~~~    

compile and run!
by now you must be seeing a bouncing ball on the screen! great!

[source code download here][21]

<h2 id="objects-part-2">make objects from your own Classes - part 2</h2>

you're probably asking yourself now why did you have so much trouble just to create a bouncing ball. You could have done this (and you've probably done it!) without using classes. In fact one of the advantages of using classes is to be able to create multiple individual objects with the same characteristics. 
So, lets do that now!
going back to your ofApp.h file we'll just need to create a couple of new objects:

~~~~{.cpp}   
    	 ofBall myBall1;
    	 ofBall myBall2;
    	 ofBall myBall3;
~~~~    

[![Image:ex2-h.jpg](003_images/Ex2-h.jpg)][23]

And in the implementation file (\*.cpp) just call the corresponding methods for each of the objects.

in the ofApp's update() function:

~~~~{.cpp}
    	myBall1.update();
    	myBall2.update();
    	myBall3.update();
~~~~    

and also in the draw() function:

~~~~{.cpp}
    	myBall1.draw();
    	myBall2.draw();
    	myBall3.draw();
~~~~    

[![Image:ex2-cpp.jpg](003_images/Ex2-cpp.jpg)][24]

[![Image:ex2Ball.jpg](003_images/Ex2Ball.jpg)][25]

[source code download here][26]

<h2 id="objects-part-2_1">make objects from your own Classes - part 2.1</h2>

We've just created 3 objects but what if we wanted to created 10, 100 or may be 1000's of them?! hardcoding one by one would be a painful and long process that can be easily solved by automating the object creation and function calls. Just by using a couple for loops we'll be making this process way simpler and cleaner.
Instead of declaring a list of objects one by one we'll just create an array of objects of type 'ofBall'. We'll also introduce another new element: a constant. Constants are defined after the \#includes as \#define CONSTANT\_NAME value. This is a way of defining a constant value that won't be ever changed in the program:

~~~~{.cpp}
    	#define NBALLS 5
~~~~    

we'll now use the CONSTANT value to define the size of our array of objects:

~~~~{.cpp}
    	ofBall myBall[NBALLS];
~~~~

[![Image:ex21h.jpg](003_images/Ex21h.jpg)][28]

back to our implementation file we'll just need to create an array of objects and call their methods through 'for' loops.

in the update() function:

~~~~{.cpp}
    	for(int i=0; i<NBALLS; i++)
    	{
          myBall[i].update();
    	}
~~~~
    
in the draw() function:

~~~~{.cpp}
    	for(int i=0; i<NBALLS; i++)
    	{
          myBall[i].draw();
    	}
~~~~    	
    
[![Image:ex21cpp.jpg](003_images/Ex21cpp.jpg)][29]

[![Image:ex21Ball.jpg](003_images/Ex21Ball.jpg)][30]

[source code download here][31]

<h2 id="objects-part-3">make objects from your own Classes - part 3</h2>

As we've seen each of the objects has a set of properties defined by its variables (position, speed and direction and dimension).
Another advantage of object oriented programming is that the objects created can have different values on each of its properties.
For us to be able to have better control of each object we can have a constructor which defines these characteristics and lets us access them.
In the ofBall definitions file (\*.h) we can change the constructor to include some of the objects properties (lets say position and dimension):

~~~~{.cpp}
    	ofBall(float x, float y, int dim);
~~~~
    
As we've changed the constructor we'll need to update the ofBall implementation (\*.cpp) file to reflect these.

~~~~{.cpp}
    ofBall::ofBall(float _x, float _y, int _dim)
    {
        x = _x;
        y = _y;
        dim = _dim;
        
        speedX = ofRandom(-1, 1);
        speedY = ofRandom(-1, 1);
    }
~~~~    
    
By implementing these changes we'll also need to create space in memory for these objects. We'll do this by creating a pointer (a reference in memory) for each object.
Back to the ofApp.h (definitions) file we'll declare a new object like this:

~~~~{.cpp}  
    	ofBall *myBall;  
~~~~  

[![Image:ex3-h.jpg](003_images/Ex3-h.jpg)][33]

The star means it will be created in a reserved part of memory just for it.

Now in the TestApp.cpp file we will need to create the object in the setup and we'll call the objects methods on the draw() and update() functions in a different way than we've been doing before.
in the setup() :

~~~~{.cpp}
                            // x-position,        y-position,           size
    myBall = new ofBall(ofRandom(300,400), ofRandom(200,300), ofRandom(10,40));
~~~~
    
As you see it is now possible to directly control the objects properties on its creation.
and now we'll just need to update and draw it.

~~~~{.cpp}
    myBall->update();

    myBall->draw();
~~~~ 

[![Image:ex3-cpp.jpg](003_images/Ex3-cpp.jpg)][34]

[![Image:ex3Ball.jpg](003_images/Ex3Ball.jpg)][35]

[source code download here][36]

<h2 id="objects-part-4">make objects from your own Classes - part 4</h2>

we're now at the last part of this how-to tutorial on classes and objects. this part will now demonstrate an automation process to create objects from our previously built class. We'll be creating objects through arrays as we did in part 2.1 with some minor changes:

~~~~{.cpp}
    	ofBall** myBall;   // an array of pointers of type ofBall
    	int nBalls;        //variable for the number of balls 
~~~~
    
[![Image:ex4-h.jpg](003_images/Ex4-h.jpg)][38]

As we're creating an array of objects, instead of creating one pointer only we'll also have to create an array of pointers. 
That's why we have two 'stars' and not one in the declarations(\*.h) file. We have created a pointer to an array of pointers.
Let's see how we'll create and call these objects in the implementation (\*.cpp) file:

~~~~{.cpp}
      nBalls = 5; // the number of ball objects we want to create
    
    	myBall = new ofBall*[nBalls]; // an array of pointers for the objects
    	
      for (int i = 0; i < nBalls; i++){
          float x = 20+(100*i); // using the value of the counter variable(i) to differentiate them
          float y = 20+(100*i);
          int dim = 10+(i*10);
    
          myBall[i] = new ofBall(x,y,dim);  // create each object from the array
      }
~~~~  

similarly when we want to draw and update the objects we've created we'll need 'for' loops to run through the array.

~~~~{.cpp}    
      for (int i = 0; i < nBalls; i++){
          myBall[i]->update();
      }
    
      for (int i = 0; i < nBalls; i++){
          myBall[i]->draw();
      }
~~~~    
    
[![Image:ex4-cpp.jpg](003_images/Ex4-cpp.jpg)][39]

[![Image:ex4Ball.jpg](003_images/Ex4Ball.jpg)][40]

[source code download here][41]

[2]: #overview "Overview"
[3]: #oop "What is OOP"
[4]: #classes "How to build your own Classes"
[5]: #objects-part-1 "Make objects from your own Classes - Part 1"
[6]: #objects-part-2 "Make objects from your own Classes - Part 2"
[7]: #objects-part-2_1 "Make objects from your own Classes - Part 2.1"
[8]: #objects-part-3 "Make objects from your own Classes - Part 3"
[9]: #objects-part-4 "Make objects from your own Classes - Part 4"

[11]: http://openframeworks.cc/forum/viewtopic.php?t=428 "http://openframeworks.cc/forum/viewtopic.php?t=428"

[14]: http://wiki.openframeworks.cc/index.php?title=OF_for_Processing_users "http://wiki.openframeworks.cc/index.php?title=OF_for_Processing_users"

[15]: 003_images/Ex1-ball_h.jpg "Image:ex1-ball_h.jpg"
[16]: 003_images/Ex-ifndef.jpg "Image:ex-ifndef.jpg"
[17]: 003_images/Ex1-ball_cpp.jpg "Image:ex1-ball_cpp.jpg"

[19]: 003_images/Ex1-h.jpg "Image:ex1-h.jpg"
[20]: 003_images/Ex1-cpp.jpg "Image:ex1-cpp.jpg"

[21]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example1.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example1.zip"

[23]: 003_images/Ex2-h.jpg "Image:ex2-h.jpg"
[24]: 003_images/Ex2-cpp.jpg "Image:ex2-cpp.jpg"
[25]: 003_images/Ex2Ball.jpg "Image:ex2Ball.jpg"

[26]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example2.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example2.zip"

[28]: 003_images/Ex21h.jpg "Image:ex21h.jpg"
[29]: 003_images/Ex21cpp.jpg "Image:ex21cpp.jpg"
[30]: 003_images/Ex21Ball.jpg "Image:ex21Ball.jpg"

[31]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example2-1.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example2-1.zip"

[33]: 003_images/Ex3-h.jpg "Image:ex3-h.jpg"
[34]: 003_images/Ex3-cpp.jpg "Image:ex3-cpp.jpg"
[35]: 003_images/Ex3Ball.jpg "Image:ex3Ball.jpg"

[36]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example3.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example3.zip"

[38]: 003_images/Ex4-h.jpg "Image:ex4-h.jpg"
[39]: 003_images/Ex4-cpp.jpg "Image:ex4-cpp.jpg"
[40]: 003_images/Ex4Ball.jpg "Image:ex4Ball.jpg"

[41]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example4.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example4.zip"
