---
.. title: Take a screenshot
.. summary: How to take a screenshot of your work
.. type: howto
---

Creating a screenshot of your work is very simple. You simply initialize an ofImage, draw something, and then use ```img.grabScreen();``` to capture what you drew. 

### in the header file (.h)

Initialize an ofImage labeled "img".


	ofImage 	img;


### in the implementation file (.cpp)


Draw something! For the sake of example, draw a circle in the  ```draw()``` function. 


	void ofApp::draw(){
		ofDrawCircle(ofGetWidth()/2, ofGetHeight()/2, 200);
	}

Next, trigger grabbing and saving the screen. Here, when "x" is pressed, a rectangle starting at point (0,0) with a width and height of ```ofGetWidth()``` and ```ofGetHeight()``` is grabbed and saved.  

	void ofApp::keyPressed(int key){
		if(key == 'x'){
			img.grabScreen(0, 0 , ofGetWidth(), ofGetHeight());
			img.save("screenshot.png");
		}
	}



After adding this to any of your apps, press "x" and a screenshot of your work will save to the bin >> data folder within your specific app folder.

![Screenshot of Example)](useCodeToScreenshot.png)
![Screenshot of Example)](screenShot.png)
