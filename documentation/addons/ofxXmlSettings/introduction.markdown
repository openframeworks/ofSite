## Simple XML loader and saver

ofxXmlSettings allows you to save data to an xml file and to read data from it.
It can be useful, for example, if your OF application is collecting data and you want to
export them at the end of the process, or if you want to initialize your
application reading values from an xml configuration.

In order to use it, include it in your `ofApp.h`

```cpp
#include "ofxXmlSettings.h"
class ofApp : public ofBaseApp{
    // ...
    ofxXmlSettings XML;
    // ...
}
```

To load a file, in your `ofApp.cpp` class
```cpp
XML.loadFile("mySettings.xml");
```

In the example folder `example/addons/xmlSettingsExample` you can see how to
read field from the xml, add new ones, or change the value of existing ones
