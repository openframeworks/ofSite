#class ofTrueTypeFont


##Description


The ofTrueTypeFont class provides an interface to load fonts into openframeworks. The fonts are converted to textures, and can be drawn on screen. There are some options when you load the font - what size the font is rendered at, wether or not it is anti-aliased, and wether the font object will be the full character set or a subset (ie, extended ascii, which can include accents, umlauts, or normal ascii). The default is anti-aliased, non-full character set. The library uses freetype, which has certain patent problems in regards to true type hinting, especially at small sizes, so non-anti-aliased type doesn't always render beautifully. But we find it quite adequate, and at larger sizes it seems to works well.





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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

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

you can also using dynamically generated strings. For example, to print the frame rate:
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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


drawStringAsShapes function draws the s string as if it was a geometrical shapes using the information contained in ofTTFContour and ofTTFCharacter. Parameters x and y sets the position of the shape.







<!----------------------------------------------------------------------------->

###ofTTFCharacter getCharacterAsPoints(character)

<!--
_syntax: getCharacterAsPoints(character)_
_name: getCharacterAsPoints_
_returns: ofTTFCharacter_
_returns_description: _
_parameters: int character_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: True_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


The line height is computed, based on the font size, and can be adjusted. Useful if you are print multi-line text.







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofTTFCharacter getStringAsPoints(str)

<!--
_syntax: getStringAsPoints(str)_
_name: getStringAsPoints_
_returns: ofTTFCharacter_
_returns_description: _
_parameters: string str_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void loadFont(filename, fontsize)

<!--
_syntax: loadFont(filename, fontsize)_
_name: loadFont_
_returns: void_
_returns_description: _
_parameters: string filename, int fontsize_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Loads a fonts of a given filename in, and renders it to a texture at a given size (fontsize). It will look for the font file in the data/ folder. For example, to load the font arial at type size 32:

~~~~{.cpp}

// int the h file:

ofTrueTypeFont myFont;
...

myFont.loadFont("arial.ttf", 32);
~~~~







<!----------------------------------------------------------------------------->

###void loadFont(filename, fontsize, _bAntiAliased, _bFullCharacterSet, makeContours)

<!--
_syntax: loadFont(filename, fontsize, _bAntiAliased, _bFullCharacterSet, makeContours)_
_name: loadFont_
_returns: void_
_returns_description: _
_parameters: string filename, int fontsize, bool _bAntiAliased, bool _bFullCharacterSet, bool makeContours_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


This loads a font, but in addition to setting the font name and size, you can also pass in two flags: is this font antiAliased, and does it include the full character set?







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int ofNextPow2(a)

<!--
_syntax: ofNextPow2(a)_
_name: ofNextPow2_
_returns: int_
_returns_description: _
_parameters: int a_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: False_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: yes_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Sets the line height for text that is drawn on screen.







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


 







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _








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








<!----------------------------------------------------------------------------->

###bool bAntiAlised

<!--
_name: bAntiAlised_
_type: bool_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


A variable which tells you if the font is antiAliased.







<!----------------------------------------------------------------------------->

###bool bFullCharacterSet

<!--
_name: bFullCharacterSet_
_type: bool_
_access: public_
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
_access: public_
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
_access: public_
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

###GLuint * texNames

<!--
_name: texNames_
_type: GLuint *_
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

###int visibleBorder

<!--
_name: visibleBorder_
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

