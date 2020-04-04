---
.. title: Save/export files
.. type: howto
---

openFrameworks will save to your bin/data folder unless you specify another filepath. 

![File location bin/data](How_to_save_a_file_output_whereTo.png)

If you want to save many files, each file will need to have its own unique file name. A quick way of doing this is to use the current timestamp because it is never the same. So instead of naming it ```"myFile.xml" ```, which will write over itself everytime you save, you can do ```"myFile_" + ofGetTimestampString() + ".xml"``` to give each file its own name. 

![using timeStamps versus not](How_to_save_a_file_usingTimeStamps.png)


You can save a file anywhere in your application, but you may want to trigger it at a specific moment. You might want to your file to save everytime you press a specific key.

	void ofApp::keyPressed  (int key){
		if(key == 's'){
		// save your file in here!!
		}
	}

Or you might want to call it everytime you exit your application.

	void ofApp::exit (){
		// save your file in here!!
	}

Note: that exit() will fire automatically when you close or esc your app, but not if you stop the app from the IDE. 


##A Text File 

###in the header file (.h)
```ofFile myTextFile;```
###in the implementation file (.cpp)
To create the file in setup. 

```myTextFile.open("text.txt",ofFile::WriteOnly);```

or  if you want to append to an existing txt file.

```myTextFile.open("text.txt",ofFile::Append);```

To add text.

```myTextFile << "some text"```

This will automatically save, so there is no need to call a save function. 

##XML Settings 

###in the header file (.h)
	
Include the XML addon at the top:

```#include "ofxXmlSettings.h"```

Initialize your variable:

```ofxXmlSettings XML;```
	
###in the implementation file (.cpp)
	
add something to your XML:

```XML.setValue("settings:number", 11);```

save it!

```XML.saveFile("mySettings.xml");```

For more info refer to the examples/utils/xmlExample.

##An Image 
###in the header file (.h)
```ofImage img;```
###in the implementation file (.cpp)
Make an image. There are many ways of creating an image! Including grabbing from a camera, creating it pixel by pixel, grabbing from an FBO. I am only showing one option, which is to draw to the screen and then grab that as an image. 

	//in draw
	ofSetColor(255,130,0);
    ofFill();
    ofDrawCircle(100,100,50);   
    // in keyPressed
    img.grabScreen(0,0,300,300);

Then trigger a save in your location of choice.  Perhaps in the keyPressed or exit functions. You can save as either a .png or a .jpg.

```img.save("myPic.jpg");```

Optionally you can specify the quality at which you wish to save by adding an additional parameter. 

```img.save("myPic.jpg",OF_IMAGE_QUALITY_LOW);```

the default is ```OF_IMAGE_QUALITY_BEST``` and all the options are: ```OF_IMAGE_QUALITY_BEST, OF_IMAGE_QUALITY_HIGH, OF_IMAGE_QUALITY_MEDIUM, OF_IMAGE_QUALITY_LOW, OF_IMAGE_QUALITY_WORST```

Here is what the output should look like in this case. 

![image of outpu](How_to_save_a_file_output.jpg)

For more info refer to the examples/input_output/imageSaverExample.

