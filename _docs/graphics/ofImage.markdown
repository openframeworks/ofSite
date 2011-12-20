#class ofImage


##Description




















The ofImage class wraps a library called "freeImage", and is a useful object for loading, saving and drawing images in OF projects.




























##Methods



### ofImage()

<!--
_syntax: ofImage()_
_name: ofImage_
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







The constructor. Called when you create the ofImage object. Internal values are initialized here. 





















































<!----------------------------------------------------------------------------->

###bool loadImageIntoPixels(fileName, pix)

<!--
_syntax: loadImageIntoPixels(fileName, pix)_
_name: loadImageIntoPixels_
_returns: bool_
_returns_description: _
_parameters: string fileName, ofPixels & pix_
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

### ~ofImage()

<!--
_syntax: ~ofImage()_
_name: ~ofImage_
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







The destructor. Calls clear() which cleans up memory and texture data. 





















































<!----------------------------------------------------------------------------->

###void saveImageFromPixels(fileName, pix)

<!--
_syntax: saveImageFromPixels(fileName, pix)_
_name: saveImageFromPixels_
_returns: void_
_returns_description: _
_parameters: string fileName, ofPixels & pix_
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

###void allocate(w,h,type)

<!--
_syntax: allocate(w,h,type)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int w, int h, int type_
_access: public_
_version_started: 0.01_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







This function allocates an image of width (w) and height (h). The type can be of three types: OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA. You don't need to call this before loading an image, but for when you want to allocate space ahead of when you are going to use the image. 





















































<!----------------------------------------------------------------------------->

###void changeTypeOfPixels(pix, newType)

<!--
_syntax: changeTypeOfPixels(pix, newType)_
_name: changeTypeOfPixels_
_returns: void_
_returns_description: _
_parameters: ofPixels & pix, int newType_
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

###void clear()

<!--
_syntax: clear()_
_name: clear_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.01_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







Frees pixel data from memory, resets internal variables to default values and clears internal texture if it exists. This function is also called by the destructor. 





















































<!----------------------------------------------------------------------------->

###void resizePixels(pix, newWidth, newHeight)

<!--
_syntax: resizePixels(pix, newWidth, newHeight)_
_name: resizePixels_
_returns: void_
_returns_description: _
_parameters: ofPixels & pix, int newWidth, int newHeight_
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

###void ofImage(mom)

<!--
_syntax: ofImage(mom)_
_name: ofImage_
_returns: void_
_returns_description: _
_parameters: const ofImage & mom_
_access: public_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _







The copy constructor. Pass in another image and it copies it. 


$$code(lang=c++)
image1.loadImage("face.jpg");
ofImage image2(image1);
$$/code


image1 and image2 are now identical. 























































<!----------------------------------------------------------------------------->

###FIBITMAP * getBmpFromPixels(pix)

<!--
_syntax: getBmpFromPixels(pix)_
_name: getBmpFromPixels_
_returns: FIBITMAP *_
_returns_description: _
_parameters: ofPixels & pix_
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

###ofImage & operator=(mom)

<!--
_syntax: operator=(mom)_
_name: operator=_
_returns: ofImage &_
_returns_description: _
_parameters: const ofImage & mom_
_access: public_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







Makes the current ofImage a copy of another ofImage. Same as clone(). 


$$code(lang=c++)

image2.loadImage("face.jpg");
image1 = image2;
$$/code


image1 and image2 are now identical. 





















































<!----------------------------------------------------------------------------->

###void putBmpIntoPixels(bmp, pix)

<!--
_syntax: putBmpIntoPixels(bmp, pix)_
_name: putBmpIntoPixels_
_returns: void_
_returns_description: _
_parameters: FIBITMAP * bmp, ofPixels & pix_
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

###void clone(mom)

<!--
_syntax: clone(mom)_
_name: clone_
_returns: void_
_returns_description: _
_parameters: const ofImage & mom_
_access: public_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







Makes the current ofImage a copy of another ofImage. 


$$code(lang=c++)

image2.loadImage("face.jpg");
image1.clone(image2);
$$/code


image1 and image2 are now identical. 





















































<!----------------------------------------------------------------------------->

###void allocatePixels(pix, width, height, bpp)

<!--
_syntax: allocatePixels(pix, width, height, bpp)_
_name: allocatePixels_
_returns: void_
_returns_description: _
_parameters: ofPixels & pix, int width, int height, int bpp_
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

###void setUseTexture(bUse)

<!--
_syntax: setUseTexture(bUse)_
_name: setUseTexture_
_returns: void_
_returns_description: _
_parameters: bool bUse_
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







This turns on or off the allocation and use of a texture. any time you change the image (loading, resizing, converting the type), ofImage will uplaod data to an opengl texture. It may not be necessary, though, and it could be that you need to save memory on the graphics card, or that you don't need to draw this image on the screen. You can call this even before you load an image in to OF:


$$code(lang=c++)
myImage.setUseTexture(false);
myImage.loadImage("blah.gif");
$$/code


Since in the majority of cases, ofImages will be loaded in and drawn onscreen, the default is set to use a texture.





















































<!----------------------------------------------------------------------------->

###void swapRgb(pix)

<!--
_syntax: swapRgb(pix)_
_name: swapRgb_
_returns: void_
_returns_description: _
_parameters: ofPixels & pix_
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

###ofTexture getTextureReference()

<!--
_syntax: getTextureReference()_
_name: getTextureReference_
_returns: ofTexture_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







Returns a reference to the internal ofTexture.





















































<!----------------------------------------------------------------------------->

###bool loadImage(fileName)

<!--
_syntax: loadImage(fileName)_
_name: loadImage_
_returns: bool_
_returns_description: _
_parameters: string fileName_
_access: public_
_version_started: 0.01_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







Loads in an image given by fileName. It will try it's best to guess the filetype based on the name. The program will look for the file relative to the data/ folder. 

For example, to load an image "icon.gif" that is in the data folder you can call:

$$code(lang=c++)
myImage.load("icon.gif");
$$/code


you can also supply folder paths for subfolders within the data folder:

$$code(lang=c++)
myImage.load("images/icon.gif");
$$/code






















































<!----------------------------------------------------------------------------->

###void saveImage(fileName)

<!--
_syntax: saveImage(fileName)_
_name: saveImage_
_returns: void_
_returns_description: _
_parameters: string fileName_
_access: public_
_version_started: 0.01_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







Saves an image to a file named fileName. It will guess, based on the name, what filetype to save as. This file will be relative to the data folder. 

You can use this, combined with grabSceen, in order to save an image:

$$code(lang=c++)
myImage.grabScreen(0,0,500,500);
myImage.saveImage("partOfTheScreen.png");
$$/code


You can also use dynamically generated names:

$$code(lang=c++)
myImage.grabScreen(0,0,500,500);
myImage.saveImage("partOfTheScreen-"+ofToString(snapCounter)+".png");
snapCounter++;
$$/code






















































<!----------------------------------------------------------------------------->

###unsigned char * getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: unsigned char *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.01_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







This function will give you access to a continuous block of pixels. you can grab the data and do what you like with it. If you have a grayscale image, you will have (width*height) number of pixels. Color images will have (width*height*3) number of pixels (interlaced R,G,B), and coloralpha images will have (width*height*4) number of pixels (interlaced R,G,B,A).





















































<!----------------------------------------------------------------------------->

###void setFromPixels(pixels, w, h, newType, bOrderIsRGB)

<!--
_syntax: setFromPixels(pixels, w, h, newType, bOrderIsRGB)_
_name: setFromPixels_
_returns: void_
_returns_description: _
_parameters: unsigned char * pixels, int w, int h, int newType, bool bOrderIsRGB_
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







Copies in the pixel data from  the 'pixels' array. Specify the corresponding width and height of the image you are passing in with 'w' and 'h'. The image type can be OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, or OF_IMAGE_COLORALPHA. 

Note: that your array has to be at least as big as [ width * height * bytes per pixel ]. 

If you have a grayscale image, you will have (width*height) number of pixels. Color images will have (width*height*3) number of pixels (interlaced R,G,B), and coloralpha images will have (width*height*4) number of pixels (interlaced R,G,B,A).

Note: You do not need to call allocate() before calling setFromPixels() as setFromPixels() re-allocates itself if needed. 





















































<!----------------------------------------------------------------------------->

###void setImageType(type)

<!--
_syntax: setImageType(type)_
_name: setImageType_
_returns: void_
_returns_description: _
_parameters: int type_
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







Converts the image into a different type. 

For example, you can load in a color image, and convert it to grayscale:

$$code(lang=c++)
myImage.loadImage("somethingColor.jpg");
myImage.setImageType(OF_IMAGE_GRAYSCALE); 	// now I am grayscale;
$$/code






















































<!----------------------------------------------------------------------------->

###void resize(newWidth, newHeight)

<!--
_syntax: resize(newWidth, newHeight)_
_name: resize_
_returns: void_
_returns_description: _
_parameters: int newWidth, int newHeight_
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







Resizes the image to a new size (w, h); Can be used to scale up or down an image.





















































<!----------------------------------------------------------------------------->

###void grabScreen(x, y, w, h)

<!--
_syntax: grabScreen(x, y, w, h)_
_name: grabScreen_
_returns: void_
_returns_description: _
_parameters: int x, int y, int w, int h_
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







Grabs pixels from the opengl window specified by the region (x, y, w, h) and turns them into an image. It resizes or allocates the ofImage if it's necessary.























































<!----------------------------------------------------------------------------->

###void update()

<!--
_syntax: update()_
_name: update_
_returns: void_
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







Updates the image from its internal pixels. Call this if you have changed the values of the pixels using getPixels().
























































<!----------------------------------------------------------------------------->

###void setAnchorPercent(xPct, yPct)

<!--
_syntax: setAnchorPercent(xPct, yPct)_
_name: setAnchorPercent_
_returns: void_
_returns_description: _
_parameters: float xPct, float yPct_
_access: public_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: True_
-->

_description: _







Changes the drawing position specified by draw() from the normal top-left corner of the image to a position specified by xPct and yPct in relation to the dimensions of the image. This can be useful for aligning and centering images as well as rotating an image around its center. 

Note: range of xPct and yPct is 0.0 to 1.0. For xPct, 1.0 represents the width of the image. For yPct, 1.0 represents the height of the image. These values are not capped. 

For example to draw an image so that its center is at 100, 100:

$$code(lang=c++)
myImage.setAnchorPercent(0.5, 0.5); 
myImage.draw(100, 100);
$$/code


To rotate an image around its center at 100, 100:

$$code(lang=c++)
ofPushMatrix();
  ofTranslate(100, 100, 0);
  ofRotate(45);
  myImage.setAnchorPercent(0.5, 0.5); 
  myImage.draw(0, 0); 
ofPopMatrix();
$$/code


To align the right side of an image with the right edge of the window:

$$code(lang=c++)
myImage.setAnchorPercent(1.0, 0.0);
myImage.draw(ofGetWidth(), 0);
$$/code






















































<!----------------------------------------------------------------------------->

###void setAnchorPoint(x, y)

<!--
_syntax: setAnchorPoint(x, y)_
_name: setAnchorPoint_
_returns: void_
_returns_description: _
_parameters: int x, int y_
_access: public_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _







Changes the drawing position specified by draw() from the normal top-left corner of the image to a position specified by x and y, measured in pixels. This can be useful for aligning and centering images as well as rotating an image around its center. 

Note: see also setAnchorPercent() if you want to specify the anchor as a percentage of the image size. 

For example to draw an image so that its center is at 100, 100:

$$code(lang=c++)
myImage.setAnchorPoint(myImage.getWidth()/2, myImage.getHeight()/2); 
myImage.draw(100, 100);
$$/code


To rotate an image around its center at 100, 100:

$$code(lang=c++)
ofPushMatrix();
  ofTranslate(100, 100, 0);
  ofRotate(45);
  myImage.setAnchorPercent(myImage.getWidth()/2, myImage.getHeight()/2); 
  myImage.draw(0, 0); 
ofPopMatrix();
$$/code


To align the right side of an image with the right edge of the window:

$$code(lang=c++)
myImage.setAnchorPercent(myImage.getWidth(), 0.0);
myImage.draw(ofGetWidth(), 0);
$$/code






















































<!----------------------------------------------------------------------------->

###void resetAnchor()

<!--
_syntax: resetAnchor()_
_name: resetAnchor_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: True_
-->

_description: _







Resets the image's anchor to its default position at the top left corner. 





















































<!----------------------------------------------------------------------------->

###void draw(x, y, w, h)

<!--
_syntax: draw(x, y, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h_
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







Draws the image (via the internal texture) from point (x,y) with a given width (w) and height (h).

Note: x,y typically reefers to the top left corner of the image.  You can change where on the image the x,y point refers to by using setAnchorPoint() or setAnchorPercent(). 





















































<!----------------------------------------------------------------------------->

###void draw(x, y)

<!--
_syntax: draw(x, y)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y_
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







Draws the image (via the internal texture) from point (x,y) with the image's own width and height.

Note: x,y typically reefers to the top left corner of the image.  You can change where on the image the x,y point refers to by using setAnchorPoint() or setAnchorPercent(). 





















































<!----------------------------------------------------------------------------->

###float getWidth()

<!--
_syntax: getWidth()_
_name: getWidth_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







Returns the width of the image.





















































<!----------------------------------------------------------------------------->

###float getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







Returns the height of the image.





















































<!----------------------------------------------------------------------------->

###void allocate(w, h, type)

<!--
_syntax: allocate(w, h, type)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int w, int h, ofImageType type_
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

### ofImage(&mom)

<!--
_syntax: ofImage(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage &mom_
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

###ofImage operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofImage_
_returns_description: _
_parameters: const ofImage &mom_
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

###void clone(&mom)

<!--
_syntax: clone(&mom)_
_name: clone_
_returns: void_
_returns_description: _
_parameters: const ofImage &mom_
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

###bool isUsingTexture()

<!--
_syntax: isUsingTexture()_
_name: isUsingTexture_
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

###bool loadImage(&buffer)

<!--
_syntax: loadImage(&buffer)_
_name: loadImage_
_returns: bool_
_returns_description: _
_parameters: const ofBuffer &buffer_
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

###void saveImage(fileName, compressionLevel = OF_IMAGE_QUALITY_BEST)

<!--
_syntax: saveImage(fileName, compressionLevel = OF_IMAGE_QUALITY_BEST)_
_name: saveImage_
_returns: void_
_returns_description: _
_parameters: string fileName, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST_
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

###void saveImage(&buffer, compressionLevel = OF_IMAGE_QUALITY_BEST)

<!--
_syntax: saveImage(&buffer, compressionLevel = OF_IMAGE_QUALITY_BEST)_
_name: saveImage_
_returns: void_
_returns_description: _
_parameters: ofBuffer &buffer, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST_
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

###void setCompression(compression)

<!--
_syntax: setCompression(compression)_
_name: setCompression_
_returns: void_
_returns_description: _
_parameters: ofTexCompression compression_
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

###ofPixelsRef getPixelsRef()

<!--
_syntax: getPixelsRef()_
_name: getPixelsRef_
_returns: ofPixelsRef_
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

###ofColor getColor(x, y)

<!--
_syntax: getColor(x, y)_
_name: getColor_
_returns: ofColor_
_returns_description: _
_parameters: int x, int y_
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

###void setColor(x, y, color)

<!--
_syntax: setColor(x, y, color)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int x, int y, ofColor color_
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

###void setFromPixels(*pixels, w, h, type, bOrderIsRGB = true)

<!--
_syntax: setFromPixels(*pixels, w, h, type, bOrderIsRGB = true)_
_name: setFromPixels_
_returns: void_
_returns_description: _
_parameters: unsigned char *pixels, int w, int h, ofImageType type, bool bOrderIsRGB=true_
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

###void setImageType(type)

<!--
_syntax: setImageType(type)_
_name: setImageType_
_returns: void_
_returns_description: _
_parameters: ofImageType type_
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

###void crop(x, y, w, h)

<!--
_syntax: crop(x, y, w, h)_
_name: crop_
_returns: void_
_returns_description: _
_parameters: int x, int y, int w, int h_
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

###void cropFrom(&otherImage, x, y, w, h)

<!--
_syntax: cropFrom(&otherImage, x, y, w, h)_
_name: cropFrom_
_returns: void_
_returns_description: _
_parameters: ofImage &otherImage, int x, int y, int w, int h_
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

###void rotate90(rotation)

<!--
_syntax: rotate90(rotation)_
_name: rotate90_
_returns: void_
_returns_description: _
_parameters: int rotation_
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

###void mirror(vertical, horizontal)

<!--
_syntax: mirror(vertical, horizontal)_
_name: mirror_
_returns: void_
_returns_description: _
_parameters: bool vertical, bool horizontal_
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

###void setAnchorPoint(x, y)

<!--
_syntax: setAnchorPoint(x, y)_
_name: setAnchorPoint_
_returns: void_
_returns_description: _
_parameters: float x, float y_
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

###void draw(&r)

<!--
_syntax: draw(&r)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &r_
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

###void draw(&p, w, h)

<!--
_syntax: draw(&p, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float w, float h_
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

###void draw(x, y, z, w, h)

<!--
_syntax: draw(x, y, z, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h_
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

###void draw(&p)

<!--
_syntax: draw(&p)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p_
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

###void draw(x, y, z)

<!--
_syntax: draw(x, y, z)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
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

###bool bAllocated()

<!--
_syntax: bAllocated()_
_name: bAllocated_
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

###void reloadTexture()

<!--
_syntax: reloadTexture()_
_name: reloadTexture_
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

###void changeTypeOfPixels(&pix, type)

<!--
_syntax: changeTypeOfPixels(&pix, type)_
_name: changeTypeOfPixels_
_returns: void_
_returns_description: _
_parameters: ofPixels &pix, ofImageType type_
_access: protected_
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

###void resizePixels(&pix, newWidth, newHeight)

<!--
_syntax: resizePixels(&pix, newWidth, newHeight)_
_name: resizePixels_
_returns: void_
_returns_description: _
_parameters: ofPixels &pix, int newWidth, int newHeight_
_access: protected_
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

##Variables



###int width

<!--
_name: width_
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







width variable contains the width of our ofImage.





































<!----------------------------------------------------------------------------->







<!----------------------------------------------------------------------------->







<!----------------------------------------------------------------------------->

###ofPixels myPixels

<!--
_name: myPixels_
_type: ofPixels_
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







<!----------------------------------------------------------------------------->







<!----------------------------------------------------------------------------->

###int height

<!--
_name: height_
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







height variable contains the height of our ofImage.





































<!----------------------------------------------------------------------------->







<!----------------------------------------------------------------------------->







<!----------------------------------------------------------------------------->

###int type

<!--
_name: type_
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







type variable contains information about the kind of image we are using. Possible types are: OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA.





































<!----------------------------------------------------------------------------->







<!----------------------------------------------------------------------------->







<!----------------------------------------------------------------------------->

###bool bUseTexture

<!--
_name: bUseTexture_
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







<!----------------------------------------------------------------------------->







<!----------------------------------------------------------------------------->

###int bpp

<!--
_name: bpp_
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







bpp contain the number of bits we need to use for every pixel. It will be 8 for a grayscale image (OF_IMAGE_GRAYSCALE), 24 for a color image (OF_IMAGE_COLOR) and 32 for a color image with alpha channel (OF_IMAGE_COLOR_ALPHA).





































<!----------------------------------------------------------------------------->







<!----------------------------------------------------------------------------->







<!----------------------------------------------------------------------------->

###ofTexture tex

<!--
_name: tex_
_type: ofTexture_
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







<!----------------------------------------------------------------------------->







<!----------------------------------------------------------------------------->

###ofPixels pixels

<!--
_name: pixels_
_type: ofPixels_
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







<!----------------------------------------------------------------------------->







<!----------------------------------------------------------------------------->

