## Base classes and primitive types like, color, rectangle and others

This module contains several classes with varied functionalities.

There's several classes here which name start with ofBase... those classes don't do anything or contain any data by themselves and instead are just a way for openFrameworks to define some basic interfaces so different parts of the code can work with others without knowing the exact implementation.

The rest of the clases are mostly data containers that represent different elements, mostly: [ofColor](ofColors.html) for colors, [ofRectangle](ofRectangle.html) for rectangles!, [ofPoint](ofPoint.html) which is an alias for [ofVec3f](../math/ofVec3f.html), [ofStyle](ofStyle.html) which can hold the whole state of the graphics system and is used internally by OF to keep track of it.

[ofParameter](ofParameter.html) is a special class that can wrap any data type and allows other parts of the code to be notified whenever the contained data changes, it also allows to serialize and deserialize (convert to some text or binary representation) any type which allows it to be saved to disk for example using [ofXml](../utils/ofXml.html) or be sent over the network to other computer using [ofxOsc](../addons/ofxOsc/introduction.html)

[ofParameterGroup](ofParameterGroup.html) allows to group several parameters including other parameter groups which allows to create a tree hierarchy of parameters that can also be serialized and deserialized. An ofParameterGroup can also notify when any of it's children changes.
