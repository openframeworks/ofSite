#class ofTrueTypeFont

Example



Reference



Methods



//----------------------

##void ofTrueTypeFont()

_syntax: ofTrueTypeFont()_

_name: ofTrueTypeFont_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void drawChar(c, x, y)

_syntax: drawChar(c, x, y)_

_name: drawChar_

_returns: void_

_returns_description: _

_parameters: int c, float x, float y_



_description: _

















//----------------------

##void ~ofTrueTypeFont()

_syntax: ~ofTrueTypeFont()_

_name: ~ofTrueTypeFont_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void drawCharAsShape(c, x, y)

_syntax: drawCharAsShape(c, x, y)_

_name: drawCharAsShape_

_returns: void_

_returns_description: _

_parameters: int c, float x, float y_



_description: _

















//----------------------

##void loadFont(filename, fontsize)

_syntax: loadFont(filename, fontsize)_

_name: loadFont_

_returns: void_

_returns_description: _

_parameters: string filename, int fontsize_



_description: _

Loads a fonts of a given filename in, and renders it to a texture at a given size (fontsize). It will look for the font file in the data/ folder. For example, to load the font arial at type size 32:


$$code(lang=c++)

// int the h file:

ofFont myFont;
...

myFont.loadFont("arial.ttf", 32);

$$/code
















//----------------------

##int ofNextPow2(a)

_syntax: ofNextPow2(a)_

_name: ofNextPow2_

_returns: int_

_returns_description: _

_parameters: int a_



_description: _

















//----------------------

##void loadFont(filename, fontsize, _bAntiAliased, _bFullCharacterSet, makeContours)

_syntax: loadFont(filename, fontsize, _bAntiAliased, _bFullCharacterSet, makeContours)_

_name: loadFont_

_returns: void_

_returns_description: _

_parameters: string filename, int fontsize, bool _bAntiAliased, bool _bFullCharacterSet, bool makeContours_



_description: _

This loads a font, but in addition to setting the font name and size, you can also pass in two flags: is this font antiAliased, and does it include the full character set?















//----------------------

##float getLineHeight()

_syntax: getLineHeight()_

_name: getLineHeight_

_returns: float_

_returns_description: Returns a float, which is the line height for the type face._

_parameters: _



_description: _

The line height is computed, based on the font size, and can be adjusted. Useful if you are print multi-line text.















//----------------------

##void setLineHeight(height)

_syntax: setLineHeight(height)_

_name: setLineHeight_

_returns: void_

_returns_description: _

_parameters: float height_



_description: _

Sets the line height for text that is drawn on screen.















//----------------------

##float stringWidth(s)

_syntax: stringWidth(s)_

_name: stringWidth_

_returns: float_

_returns_description: Returns this width, in pixels, for a given string drawn with that typeface._

_parameters: string s_



_description: _

 















//----------------------

##float stringHeight(s)

_syntax: stringHeight(s)_

_name: stringHeight_

_returns: float_

_returns_description: Returns the height, in pixels, for a given string drawn with that typeface._

_parameters: string s_



_description: _

















//----------------------

##ofRectangle getStringBoundingBox(s, x, y)

_syntax: getStringBoundingBox(s, x, y)_

_name: getStringBoundingBox_

_returns: ofRectangle_

_returns_description: Returns an ofRectangle wich is the Bounding Box containing our TrueTypeFont This rectangle depends on the TruTypeFont size._

_parameters: string s, float x, float y_



_description: _

e.g:

$$code(lang=c++)

//in setup() 

franklinBook.loadFont("frabk.ttf", 32);

//in update()

char tempString[255];
ofRectangle rect = franklinBook.getStringBoundingBox(tempString, 0,0);

//in draw

ofSetColor(0xcccccc);
ofRect(rect.x, rect.y, rect.width, rect.height);

$$/code
















//----------------------

##void drawString(s, x, y)

_syntax: drawString(s, x, y)_

_name: drawString_

_returns: void_

_returns_description: _

_parameters: string s, float x, float y_



_description: _

Draws a string with that typeface, on screen, at point(x,y). For example, you can write some text on screen like this:

$$code(lang=c++)

// in the h file:
ofFont myfont;
.....

// in setup:
myfont.loadFont("arial.ttf", 32);

// in draw:
myfont.drawString("hi!!", 100,100);

$$/code

Your strings can even be multiline:

$$code(lang=c++)

myfont.drawString("a test of multiline text", 300,300);

$$/code

you can also using dynamically generated strings. For example, to print the frame rate:

$$code(lang=c++)

char fpsStr[255]; // an array of chars
sprintf(fpsStr, "frame rate: %f", ofGetFrameRate());
myfont.drawString(fpsStr, 100,100);

$$/code
















//----------------------

##void drawStringAsShapes(s, x, y)

_syntax: drawStringAsShapes(s, x, y)_

_name: drawStringAsShapes_

_returns: void_

_returns_description: _

_parameters: string s, float x, float y_



_description: _

drawStringAsShapes function draws the s string as if it was a geometrical shapes using the information contained in ofTTFContour and ofTTFCharacter. Parameters x and y sets the position of the shape.















//----------------------

##ofTTFCharacter getCharacterAsPoints(character)

_syntax: getCharacterAsPoints(character)_

_name: getCharacterAsPoints_

_returns: ofTTFCharacter_

_returns_description: Returns ofTTFCharacter object used by ofTrueTypeFont. Basically contains geometrical information of ofPoints that define diferent ofTrueTypeFont content (strings with a certain format). _

_parameters: int character_



_description: _

















