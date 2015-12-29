#class ofTrueTypeFont


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description

The ofTrueTypeFont class provides an interface to load fonts into openFrameworks. The fonts are converted to textures, and can be drawn on screen. There are some options when you load the font - what size the font is rendered at, wether or not it is anti-aliased, and whether the font object will be the full character set or a subset (i.e., extended ASCII, which can include diacritics like umlauts, or ASCII). The default is anti-aliased, non-full character set. The library uses freetype, which has certain patent problems in regards to true type hinting, especially at small sizes, so non-anti-aliased type doesn't always render beautifully. But we find it quite adequate, and at larger sizes it seems to works well.





##Methods



###void createStringMesh(&s, x, y, vFlipped)

<!--
_syntax: createStringMesh(&s, x, y, vFlipped)_
_name: createStringMesh_
_returns: void_
_returns_description: _
_parameters: const string &s, float x, float y, bool vFlipped_
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

###void drawChar(c, x, y, vFlipped)

<!--
_syntax: drawChar(c, x, y, vFlipped)_
_name: drawChar_
_returns: void_
_returns_description: _
_parameters: int c, float x, float y, bool vFlipped_
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

###void drawCharAsShape(c, x, y, vFlipped, filled)

<!--
_syntax: drawCharAsShape(c, x, y, vFlipped, filled)_
_name: drawCharAsShape_
_returns: void_
_returns_description: _
_parameters: int c, float x, float y, bool vFlipped, bool filled_
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

###void drawString(&s, x, y)

<!--
_syntax: drawString(&s, x, y)_
_name: drawString_
_returns: void_
_returns_description: _
_parameters: const string &s, float x, float y_
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

Draw a string s at position x,y

Parameters:
s String to draw
x X position of string
y Y position of string





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

###void drawStringAsShapes(&s, x, y)

<!--
_syntax: drawStringAsShapes(&s, x, y)_
_name: drawStringAsShapes_
_returns: void_
_returns_description: _
_parameters: const string &s, float x, float y_
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


Parameters:
x X position of shapes
y Y position of shapes





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

###float getAscenderHeight()

<!--
_syntax: getAscenderHeight()_
_name: getAscenderHeight_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the ascender distance for this font.

The ascender is the vertical distance from the baseline to the highest "character" coordinate.
The meaning of "character" coordinate depends on the font. Some fonts take accents into account,
others do not, and still others define it simply to be the highest coordinate over all glyphs.


Returns: the font ascender height in pixels.





_description: _







<!----------------------------------------------------------------------------->

###ofTTFCharacter getCharacterAsPoints(character, vflip = true, filled = true)

<!--
_syntax: getCharacterAsPoints(character, vflip = true, filled = true)_
_name: getCharacterAsPoints_
_returns: ofTTFCharacter_
_returns_description: _
_parameters: int character, bool vflip=true, bool filled=true_
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

\todo Documentation.





_description: _







<!----------------------------------------------------------------------------->

###float getDescenderHeight()

<!--
_syntax: getDescenderHeight()_
_name: getDescenderHeight_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the descender distance for this font.

The descender is the vertical distance from the baseline to the lowest "character" coordinate.
The meaning of "character" coordinate depends on the font. Some fonts take accents into account,
others do not, and still others define it simply to be the lowest coordinate over all glyphs.
This value will be negative for descenders below the baseline (which is typical).


Returns: the font descender height in pixels.





_description: _







<!----------------------------------------------------------------------------->

###const ofTexture & getFontTexture()

<!--
_syntax: getFontTexture()_
_name: getFontTexture_
_returns: const ofTexture &_
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

###const ofRectangle & getGlyphBBox()

<!--
_syntax: getGlyphBBox()_
_name: getGlyphBBox_
_returns: const ofRectangle &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the global bounding box for this font.

The global bounding box is the rectangle inside of which all glyphs in the font can fit.
Glyphs are drawn starting from (0,0) in the returned box (though note that the box can
extend in any direction out from the origin).


Returns: the font descender height in pixels.





_description: _







<!----------------------------------------------------------------------------->

###int getKerning(c, prevC)

<!--
_syntax: getKerning(c, prevC)_
_name: getKerning_
_returns: int_
_returns_description: _
_parameters: int c, int prevC_
_access: protected_
_version_started: 0.9.0_
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

You can control this by the ofTrueTypeFont::setLetterSpacing() function. 1.0 = default spacing,
less then 1.0 would be tighter spacing, greater then 1.0 would be wider spacing.


Returns: the letter spacing of font object.





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

Returns: the current line height.





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

Get the number of characters in the loaded character set.

If you allocate the font using different parameters, you can load in partial
and full character sets, this helps you know how many characters it can represent.


Returns: Number of characters in loaded character set.





_description: _

Returns the number of characters this font represents.  If you allocate the font using different parameters, you can load in partial and full character sets, this helps you know how many characters it can represent.





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

Returns: Size of font, set when font was loaded.





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

It's a scalar for the width of the letter 'p', so 1.0 means that a space will be the size of the lower
case 'p' of that font. 2.0 means that it's 2 times the size of the lower case 'p', etc.


Returns: the width of the space.





_description: _

This is a variable to represent how wide spaces are sized.   It's a scalar for the width of the letter 'p', so 1.0 means that a space will be the size of the lower case 'p' of that font.  2.0 means that it's 2 times the size of the lower case 'p', etc.





<!----------------------------------------------------------------------------->

###vector< ofTTFCharacter > getStringAsPoints(&str, vflip = true, filled = true)

<!--
_syntax: getStringAsPoints(&str, vflip = true, filled = true)_
_name: getStringAsPoints_
_returns: vector< ofTTFCharacter >_
_returns_description: _
_parameters: const string &str, bool vflip=true, bool filled=true_
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
                ofDrawCircle( polylines[j][k], 3);
            }
        }
    }

    ofPopMatrix();
}
~~~~





<!----------------------------------------------------------------------------->

###ofRectangle getStringBoundingBox(&s, x, y, vflip = true)

<!--
_syntax: getStringBoundingBox(&s, x, y, vflip = true)_
_name: getStringBoundingBox_
_returns: ofRectangle_
_returns_description: _
_parameters: const string &s, float x, float y, bool vflip=true_
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

Parameters:
s The string to get bounding box of.
x X position of returned rectangle.
y Y position of returned rectangle.

Returns: the bounding box of a string as a rectangle.





_description: _

Returns the bounding box of a string as a rectangle, useful if you want to position the type or calculate the size of graphics that relate to the font.

e.g:
~~~~{.cpp}

//in setup()

franklinBook.loadFont("frabk.ttf", 32);

//in update()

char tempString[255];
ofRectangle rect = franklinBook.getStringBoundingBox(tempString, 0,0);

//in draw

ofSetColor(0xcccccc);
ofDrawRectangle(rect.x, rect.y, rect.width, rect.height);
~~~~





<!----------------------------------------------------------------------------->

###const ofMesh & getStringMesh(&s, x, y, vflip = true)

<!--
_syntax: getStringMesh(&s, x, y, vflip = true)_
_name: getStringMesh_
_returns: const ofMesh &_
_returns_description: _
_parameters: const string &s, float x, float y, bool vflip=true_
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

Returns: true if the font was allocated with a full character set.





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

Is the font anti-aliased?

Returns: true if the font was set to be anti-aliased.





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

Returns: true if the font was loaded.





_description: _

Returns true or false if the font is loaded properly.





<!----------------------------------------------------------------------------->

###bool load(&filename, fontsize, _bAntiAliased = true, _bFullCharacterSet = true, makeContours = false, simplifyAmt = 0.3f, dpi = 0)

<!--
_syntax: load(&filename, fontsize, _bAntiAliased = true, _bFullCharacterSet = true, makeContours = false, simplifyAmt = 0.3f, dpi = 0)_
_name: load_
_returns: bool_
_returns_description: _
_parameters: const string &filename, int fontsize, bool _bAntiAliased=true, bool _bFullCharacterSet=true, bool makeContours=false, float simplifyAmt=0.3f, int dpi=0_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Loads the font specified by filename, allows you to control size, aliasing, and other parameters.

loads a font, and allows you to set the following parameters: the filename, the size, if the font is anti-aliased,
if it has a full character set, if you need it to have contours (for getStringPoints) and parameters that control
the simplification amount for those contours and the dpi of the font.

default (without dpi), non-full char set, anti aliased, 96 dpi


Parameters:
filename The name of the font file to load.
fontsize The size in pixels to load the font.
_bAntiAliased true if the font should be anti-aliased.
_bFullCharacterSet true if the full character set should be cached.
makeContours true if the vector contours should be cached.
simplifyAmt the amount to simplify the vector contours.  Larger number means more simplified.
dpi the dots per inch used to specify rendering size.

Returns: true if the font was loaded correctly.





_description: _







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

Construct a default ofTrueTypeFont.





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

Set the default dpi for all typefaces.





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

Parameters:
spacing Spacing of font object.





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


Parameters:
height Line height for text drawn on screen.





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


Parameters:
size Scales the width of the letter 'p' for the space.





_description: _

Sets the size of the space ' ' character.  This number, which defaults to 1.0, scales the width of the letter 'p' for the space.





<!----------------------------------------------------------------------------->

###float stringHeight(&s)

<!--
_syntax: stringHeight(&s)_
_name: stringHeight_
_returns: float_
_returns_description: _
_parameters: const string &s_
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


Parameters:
s The string to get the height of.

Returns: the string height.





_description: _

Returns the string height.  This is essentially the height component of the ofTrueTypeFont::getStringBoundingBox() rectangle.





<!----------------------------------------------------------------------------->

###float stringWidth(&s)

<!--
_syntax: stringWidth(&s)_
_name: stringWidth_
_returns: float_
_returns_description: _
_parameters: const string &s_
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


Parameters:
s The string to get the width of.

Returns: the string width.





_description: _

Returns the string height.  This is essentially the width component of the ofTrueTypeFont::getStringBoundingBox() rectangle.





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

Destroy the ofTrueTypeFont.





_description: _

The destructor for the font object will clear the resources, such as textures, that have been allocated.





<!----------------------------------------------------------------------------->

##Variables



###float ascenderHeight

<!--
_name: ascenderHeight_
_type: float_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _

\cond INTERNAL





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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###vector< ofTTFCharacter > charOutlinesContour

<!--
_name: charOutlinesContour_
_type: vector< ofTTFCharacter >_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###vector< ofTTFCharacter > charOutlinesNonVFlippedContour

<!--
_name: charOutlinesNonVFlippedContour_
_type: vector< ofTTFCharacter >_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###float descenderHeight

<!--
_name: descenderHeight_
_type: float_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###FT_Face face

<!--
_name: face_
_type: FT_Face_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofRectangle glyphBBox

<!--
_name: glyphBBox_
_type: ofRectangle_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool useKerning

<!--
_name: useKerning_
_type: bool_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->
