#class ofTrueTypeFont


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

The ofTrueTypeFont class provides an interface to load fonts into openFrameworks. The fonts are converted to textures, and can be drawn on screen. There are some options when you load the font - what size the font is rendered at, wether or not it is anti-aliased, and whether the font object will be the full character set or a subset (i.e., extended ASCII, which can include diacritics like umlauts, or ASCII). The default is anti-aliased, non-full character set. The library uses freetype, which has certain patent problems in regards to true type hinting, especially at small sizes, so non-anti-aliased type doesn't always render beautifully. But we find it quite adequate, and at larger sizes it seems to works well.





##Methods



###void bind()

<!--
_syntax: bind()_
_name: bind_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This function, which is internal to the font object, binds the texture for the font drawing.  







<!----------------------------------------------------------------------------->

###void createStringMesh(s, x, y)

<!--
_syntax: createStringMesh(s, x, y)_
_name: createStringMesh_
_returns: void_
_returns_description: _
_parameters: string s, float x, float y_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This function, which is used internally, builds a mesh representation of the font.  This function is used by ofTrueTypeFont::getStringMesh().







<!----------------------------------------------------------------------------->

###void drawChar(c, x, y)

<!--
_syntax: drawChar(c, x, y)_
_name: drawChar_
_returns: void_
_returns_description: _
_parameters: int c, float x, float y_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This function draws a character at position x,y.  It uses the texture representation of the font. 







<!----------------------------------------------------------------------------->

###void drawCharAsShape(c, x, y)

<!--
_syntax: drawCharAsShape(c, x, y)_
_name: drawCharAsShape_
_returns: void_
_returns_description: _
_parameters: int c, float x, float y_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This function draws a character at position x,y.  It uses the path of the font, which involves 







<!----------------------------------------------------------------------------->

###void drawString(s, x, y)

<!--
_syntax: drawString(s, x, y)_
_name: drawString_
_returns: void_
_returns_description: _
_parameters: string s, float x, float y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw a string s at position x,y. 











_description: _


Draws a string with that typeface, on screen, at point(x,y). For example, you can write some text on screen like this:
~~~~{.cpp}

// in the h file:
ofTrueTypeFont myfont;
.....

// in setup:
myfont.loadFont("arial.ttf", 32);

// in draw:
myfont.drawString("hi!!", 100,100);
~~~~

Your strings can even be multiline:
~~~~{.cpp}

myfont.drawString("a test of multiline text", 300,300);
~~~~

you can also using dynamically gengerated strings. For example, to print the frame rate:
~~~~{.cpp}

char fpsStr[255]; // an array of chars
sprintf(fpsStr, "frame rate: %f", ofGetFrameRate());
myfont.drawString(fpsStr, 100,100);
~~~~







<!----------------------------------------------------------------------------->

###void drawStringAsShapes(s, x, y)

<!--
_syntax: drawStringAsShapes(s, x, y)_
_name: drawStringAsShapes_
_returns: void_
_returns_description: _
_parameters: string s, float x, float y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws the string as if it was geometrical shapes. 


Uses the information contained in ofTTFContour and ofTTFCharacter.










_description: _


drawStringAsShapes function draws the s string as if it was a geometrical shapes using the information contained in ofTTFContour and ofTTFCharacter. Parameters x and y sets the position of the shape.







<!----------------------------------------------------------------------------->

###void finishLibraries()

<!--
_syntax: finishLibraries()_
_name: finishLibraries_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###ofTTFCharacter getCharacterAsPoints(character, vflip = ofIsVFlipped())

<!--
_syntax: getCharacterAsPoints(character, vflip = ofIsVFlipped())_
_name: getCharacterAsPoints_
_returns: ofTTFCharacter_
_returns_description: _
_parameters: int character, bool vflip=ofIsVFlipped()_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###ofTextEncoding getEncoding()

<!--
_syntax: getEncoding()_
_name: getEncoding_
_returns: ofTextEncoding_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the current font endcoding. 


This is set by ofTrueTypeFont::setEncoding() to either OF_ENCODING_UTF8 or OF_ENCODING_ISO_8859_15. OF_ENCODING_ISO_8859_15 is for an 8-bit single-byte coded graphic character sets, like ASCII while OF_ENCODING_UTF8 is a variable-width encoding that can represent every character in the Unicode character set.

***return:*** 
	encoding used by the font object. 










_description: _


Returns the encoding used by the font object.  This is set by ofTrueTypeFont::setEncoding() to either OF_ENCODING_UTF8 or OF_ENCODING_ISO_8859_15. OF_ENCODING_ISO_8859_15 is for an 8-bit single-byte coded graphic character sets, like ASCII while 
 OF_ENCODING_UTF8 is a variable-width encoding that can represent every character in the Unicode character set.







<!----------------------------------------------------------------------------->

###ofTexture & getFontTexture()

<!--
_syntax: getFontTexture()_
_name: getFontTexture_
_returns: ofTexture &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns the texture (as a reference) that ofTrueTypeFont uses internally.  When you load in a font, it parses the ttf (or .otf) file and rasterizes it to a texture for fast drawing.  This gives you low level access to that texture. 







<!----------------------------------------------------------------------------->

###float getLetterSpacing()

<!--
_syntax: getLetterSpacing()_
_name: getLetterSpacing_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns letter spacing of font object. 


You can control this by the ofTrueTypeFont::setLetterSpacing() function. 1.0 = default spacing, less then 1.0 would be tighter spacing, greater then 1.0 would be wider spacing.

***return:*** 
	Returns letter spacing of font object. 










_description: _


Returns the letter spacing of the font object.  You can control this by the ofTrueTypeFont::setLetterSpacing() function.  1.0 = default spacing, less then 1.0 would be tighter spacing, greater then 1.0 would be wider spacing. 







<!----------------------------------------------------------------------------->

###float getLineHeight()

<!--
_syntax: getLineHeight()_
_name: getLineHeight_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Computes line height based on font size. 


***return:*** 
	Returns current line height. 










_description: _


The line height is computed, based on the font size, and can be adjusted. Useful if you are print multi-line text.  This function returns the current line height. 







<!----------------------------------------------------------------------------->

###int getNumCharacters()

<!--
_syntax: getNumCharacters()_
_name: getNumCharacters_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the num chars in the loaded character set. 


If you allocate the font using different paramters, you can load in partial and full character sets, this helps you know how many characters it can represent.

***return:*** 
	Number of characters in loaded character set. 










_description: _


Returns the number of characters this font represents.  If you allocate the font using different paramters, you can load in partial and full character sets, this helps you know how many characters it can represent. 







<!----------------------------------------------------------------------------->

###int getSize()

<!--
_syntax: getSize()_
_name: getSize_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the size of the font. 


***return:*** 
	Size of font, set when font was loaded. 










_description: _


Returns the size of the font.  This is set when you load in the font. 







<!----------------------------------------------------------------------------->

###float getSpaceSize()

<!--
_syntax: getSpaceSize()_
_name: getSpaceSize_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a variable that represents how wide spaces are. 


It's a scalar for the width of the letter 'p', so 1.0 means that a space will be the size of the lower case 'p' of that font. 2.0 means that it's 2 times the size of the lower case 'p', etc.

***return:*** 
	Returns a variable that represents how wide spaces are. 










_description: _


This is a variable to represent how wide spaces are sized.   It's a scalar for the width of the letter 'p', so 1.0 means that a space will be the size of the lower case 'p' of that font.  2.0 means that it's 2 times the size of the lower case 'p', etc. 







<!----------------------------------------------------------------------------->

###vector< ofTTFCharacter > getStringAsPoints(str, vflip = ofIsVFlipped())

<!--
_syntax: getStringAsPoints(str, vflip = ofIsVFlipped())_
_name: getStringAsPoints_
_returns: vector< ofTTFCharacter >_
_returns_description: _
_parameters: string str, bool vflip=ofIsVFlipped()_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This returns a vector of ofTTFCharacters (which is actually an ofPath) for a given string.  This means you can get access to the point data / outlines of the letter forms. 

~~~~{.cpp}

//--------------------------------------------------------------
void testApp::setup(){

    ofBackground(0);
    font.loadFont("vag.ttf", 100, false, false, true);
    
}

//--------------------------------------------------------------
void testApp::update(){

}

//--------------------------------------------------------------
void testApp::draw(){

    
    // get the string as paths
    vector < ofTTFCharacter > paths = font.getStringAsPoints("hello!");

    
    ofPushMatrix();
    ofTranslate(ofGetWidth()/2, ofGetHeight()/2);
    
    
    for (int i = 0; i < paths.size(); i++){
        
        // for every character break it out to polylines
        
        vector <ofPolyline> polylines = paths[i].getOutline();
        
        // for every polyline, draw every fifth point
        
        for (int j = 0; j < polylines.size(); j++){
            for (int k = 0; k < polylines[j].size(); k+=5){         // draw every "fifth" point
                ofCircle( polylines[j][k], 3);
            }
        }
    }
    
    ofPopMatrix();
}
~~~~







<!----------------------------------------------------------------------------->

###ofRectangle getStringBoundingBox(s, x, y)

<!--
_syntax: getStringBoundingBox(s, x, y)_
_name: getStringBoundingBox_
_returns: ofRectangle_
_returns_description: _
_parameters: string s, float x, float y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the bounding box of a string as a rectangle. 



***return:*** 
	Returns the bounding box of a string as a rectangle. 










_description: _


Returns the bounding box of a string as a retangle, useful if you want to position the type or calculate the size of graphics that relate to the font. 

e.g:
~~~~{.cpp}

//in setup() 

franklinBook.loadFont("frabk.ttf", 32);

//in update()

char tempString[255];
ofRectangle rect = franklinBook.getStringBoundingBox(tempString, 0,0);

//in draw

ofSetColor(0xcccccc);
ofRect(rect.x, rect.y, rect.width, rect.height);
~~~~







<!----------------------------------------------------------------------------->

###ofMesh & getStringMesh(s, x, y)

<!--
_syntax: getStringMesh(s, x, y)_
_name: getStringMesh_
_returns: ofMesh &_
_returns_description: _
_parameters: string s, float x, float y_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns the string as an ofMesh.   Note: this is a mesh that contains vertices and texture coordinates for the textured font, not the points of the font that are returned via any of the get points functions.







<!----------------------------------------------------------------------------->

###bool hasFullCharacterSet()

<!--
_syntax: hasFullCharacterSet()_
_name: hasFullCharacterSet_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Does the font have a full character set? 


***return:*** 
	true if the font was allocated with a full character set. 










_description: _


Returns true or false if this font was allocated with a full character set. 







<!----------------------------------------------------------------------------->

###bool initLibraries()

<!--
_syntax: initLibraries()_
_name: initLibraries_
_returns: bool_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###bool isAntiAliased()

<!--
_syntax: isAntiAliased()_
_name: isAntiAliased_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Is the font anit-aliased? 


***return:*** 
	true if the font was set to be anti-aliased. 










_description: _


Returns true of false if the font is set to be anti-aliased.  This is set when you load. 







<!----------------------------------------------------------------------------->

###bool isLoaded()

<!--
_syntax: isLoaded()_
_name: isLoaded_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Has the font been loaded successfully? 


***return:*** 
	true if the font was loaded. 










_description: _


Returns true or false if the font is loaded properly. 







<!----------------------------------------------------------------------------->

###bool loadFont(filename, fontsize, _bAntiAliased = true, _bFullCharacterSet = false, makeContours = false, simplifyAmt = 0.3, dpi = 0)

<!--
_syntax: loadFont(filename, fontsize, _bAntiAliased = true, _bFullCharacterSet = false, makeContours = false, simplifyAmt = 0.3, dpi = 0)_
_name: loadFont_
_returns: bool_
_returns_description: _
_parameters: string filename, int fontsize, bool _bAntiAliased=true, bool _bFullCharacterSet=false, bool makeContours=false, float simplifyAmt=0.3, int dpi=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Loads the font specified by filename, allows you to control size, aliasing, and other parameters. 


loads a font, and allows you to set the following parameters: the filename, the size, if the font is anti-aliased, if it has a full character set, if you need it to have contours (for getStringPoints) and paramters that control the simplification amount for those contours and the dpi of the font.

default (without dpi), non-full char set, anti aliased, 96 dpi


***return:*** 
	true if the font was loaded correctly. 










_description: _


loads a font, and allows you to set the following parameters: the filename, the size, if the font is anti-aliased, if it has a full character set, if you need it to have contrours (for getStringPoints) and paramters that control the simplification amount for those contours and the dpi of the font. 







<!----------------------------------------------------------------------------->

### ofTrueTypeFont()

<!--
_syntax: ofTrueTypeFont()_
_name: ofTrueTypeFont_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void reloadTextures()

<!--
_syntax: reloadTextures()_
_name: reloadTextures_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setEncoding(encoding)

<!--
_syntax: setEncoding(encoding)_
_name: setEncoding_
_returns: void_
_returns_description: _
_parameters: ofTextEncoding encoding_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets the current font encoding. 


Can be set to either OF_ENCODING_UTF8 or OF_ENCODING_ISO_8859_15. OF_ENCODING_ISO_8859_15 is for an 8-bit single-byte coded graphic character sets, like ASCII while OF_ENCODING_UTF8 is a variable-width encoding that can represent every character in the Unicode character set. This function is useful if you are trying to draw unicode strings.










_description: _


Sets the encoding used by the font object. Can be set to either OF_ENCODING_UTF8 or OF_ENCODING_ISO_8859_15. OF_ENCODING_ISO_8859_15 is for an 8-bit single-byte coded graphic character sets, like ASCII while OF_ENCODING_UTF8 is a variable-width encoding that can represent every character in the Unicode character set.  This function is useful if you are trying to draw unicode strings.







<!----------------------------------------------------------------------------->

###void setGlobalDpi(newDpi)

<!--
_syntax: setGlobalDpi(newDpi)_
_name: setGlobalDpi_
_returns: void_
_returns_description: _
_parameters: int newDpi_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setLetterSpacing(spacing)

<!--
_syntax: setLetterSpacing(spacing)_
_name: setLetterSpacing_
_returns: void_
_returns_description: _
_parameters: float spacing_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets the letter spacing of the font object. 


1.0 = default spacing, less then 1.0 would be tighter spacing, greater then 1.0 would be wider spacing. 








_description: _


Sets the letter spacing of the font object.  1.0 = default spacing, less then 1.0 would be tighter spacing, greater then 1.0 would be wider spacing. 







<!----------------------------------------------------------------------------->

###void setLineHeight(height)

<!--
_syntax: setLineHeight(height)_
_name: setLineHeight_
_returns: void_
_returns_description: _
_parameters: float height_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets line height for text drawn on screen. 


Note the line height is automatically computed based on the font size, when you load in the font.










_description: _


Sets the line height for text that is drawn on screen.   Note the line height is automatically computed based on the font size, when you load in the font. 







<!----------------------------------------------------------------------------->

###void setSpaceSize(size)

<!--
_syntax: setSpaceSize(size)_
_name: setSpaceSize_
_returns: void_
_returns_description: _
_parameters: float size_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets the size of the space ' ' character. 


This number, which defaults to 1.0, scales the width of the letter 'p' for the space.










_description: _


Sets the size of the space ' ' character.  This number, which defaults to 1.0, scales the width of the letter 'p' for the space. 







<!----------------------------------------------------------------------------->

###float stringHeight(s)

<!--
_syntax: stringHeight(s)_
_name: stringHeight_
_returns: float_
_returns_description: _
_parameters: string s_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the string height. 


This is essentially the height component of the ofTrueTypeFont::getStringBoundingBox() rectangle.


***return:*** 
	Returns the string height. 










_description: _


Returns the string height.  This is essentially the height component of the ofTrueTypeFont::getStringBoundingBox() rectangle. 







<!----------------------------------------------------------------------------->

###float stringWidth(s)

<!--
_syntax: stringWidth(s)_
_name: stringWidth_
_returns: float_
_returns_description: _
_parameters: string s_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the string width. 


This is essentially the width component of the ofTrueTypeFont::getStringBoundingBox() rectangle.


***return:*** 
	Returns the string width. 










_description: _


Returns the string height.  This is essentially the width component of the ofTrueTypeFont::getStringBoundingBox() rectangle. 

 







<!----------------------------------------------------------------------------->

###void unbind()

<!--
_syntax: unbind()_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This internal function unbinds the texture associated with this font.







<!----------------------------------------------------------------------------->

###void unloadTextures()

<!--
_syntax: unloadTextures()_
_name: unloadTextures_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

### ~ofTrueTypeFont()

<!--
_syntax: ~ofTrueTypeFont()_
_name: ~ofTrueTypeFont_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _








_description: _


The destructor for the font object will clear the resources, such as textures, that have been allocated. 







<!----------------------------------------------------------------------------->

##Variables



###bool bAntiAliased

<!--
_name: bAntiAliased_
_type: bool_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


A variable which tells you if the font is antiAliased.







<!----------------------------------------------------------------------------->

###bool bFullCharacterSet

<!--
_name: bFullCharacterSet_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


A variable which tells you if the font contains the full character set, or a subset.







<!----------------------------------------------------------------------------->

###bool bLoadedOk

<!--
_name: bLoadedOk_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


bLoadedOk is a boolean variable containing true if the font was successfully loaded.   







<!----------------------------------------------------------------------------->

###bool bMakeContours

<!--
_name: bMakeContours_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool binded

<!--
_name: binded_
_type: bool_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLint blend_dst

<!--
_name: blend_dst_
_type: GLint_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLboolean blend_enabled

<!--
_name: blend_enabled_
_type: GLboolean_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLint blend_src

<!--
_name: blend_src_
_type: GLint_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int border

<!--
_name: border_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###vector< ofTTFCharacter > charOutlines

<!--
_name: charOutlines_
_type: vector< ofTTFCharacter >_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofTTFCharacter charOutlinesNonVFlipped

<!--
_name: charOutlinesNonVFlipped_
_type: ofTTFCharacter_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###charProps * cps

<!--
_name: cps_
_type: charProps *_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int dpi

<!--
_name: dpi_
_type: int_
_access: protected_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofTextEncoding encoding

<!--
_name: encoding_
_type: ofTextEncoding_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###string filename

<!--
_name: filename_
_type: string_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int fontSize

<!--
_name: fontSize_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float letterSpacing

<!--
_name: letterSpacing_
_type: float_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float lineHeight

<!--
_name: lineHeight_
_type: float_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int nCharacters

<!--
_name: nCharacters_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


nCharacters contains the number of characters that our font has.







<!----------------------------------------------------------------------------->

###float simplifyAmt

<!--
_name: simplifyAmt_
_type: float_
_access: protected_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float spaceSize

<!--
_name: spaceSize_
_type: float_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMesh stringQuads

<!--
_name: stringQuads_
_type: ofMesh_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofTexture texAtlas

<!--
_name: texAtlas_
_type: ofTexture_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLboolean texture_2d_enabled

<!--
_name: texture_2d_enabled_
_type: GLboolean_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

