---
.. title: Load and display an image
.. type: howto
---

Select images to load and display. Images can be of .gif, .jpg, or .png file format. 

Create a new folder in the bin/data folder of your OF project, name it "images" and drop your images in it. 

####In the ```ofApp.h``` file: 

Add an instance variable of type ```ofImage``` for each image you wish to load.

 	ofImage bikers;
 	ofImage bikeIcon;

####In the ```ofApp.cpp``` file:

Load the images by calling the ```load()``` method of ```ofImage```, with the relative path to the image:

	imageName.load("INSERT FILE PATH HERE")

example:

	void ofApp::setup(){
		bikers.load("images/bikers.jpg");
		bikeIcon.load("images/bike_icon.png");
	}
	

Display the images by calling the ```draw()``` method of ```ofImage```, positionning them on the stage by specifying their horizontal and vertical coordinate positions. The coordinate positions reference by default the top left corner of the image.

	
	imageName.draw(xPosition, yPosition)

example:

	void ofApp::draw(){
		bikers.draw(0, 0);
		bikeIcon.draw(190, 490);
	}
	
Additionally, you can resize images by specifying the new *width* and *height* of the displayed image.


	imageName.draw(xPosition, yPosition, width, height)
	
example:
	
	void ofApp::draw(){
		bikeIcon.draw(190, 490, 20, 20);
	}
	
###For more information:

take a look at: ```examples/graphics/imageLoaderExample```

