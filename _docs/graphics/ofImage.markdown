#class ofImage

Example



Reference



Methods



//----------------------

##void resizePixels(ofPixels &pix, int newWidth, int newHeight)

_syntax: resizePixels(ofPixels &pix, int newWidth, int newHeight)_

_name: resizePixels_

_returns: void_

_parameters: int, int_



_description: _















//----------------------

##void allocate(int w, int h, ofImageType type)

_syntax: allocate(int w, int h, ofImageType type)_

_name: allocate_

_returns: void_

_parameters: int, int, _



_description: _















//----------------------

##None ofImage(const ofImage &mom)

_syntax: ofImage(const ofImage &mom)_

_name: ofImage_

_returns: None_

_parameters: const _



_description: _















//----------------------

##ofImage operator=(const ofImage &mom)

_syntax: operator=(const ofImage &mom)_

_name: operator=_

_returns: ofImage_

_parameters: const _



_description: _















//----------------------

##void clone(const ofImage &mom)

_syntax: clone(const ofImage &mom)_

_name: clone_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void setUseTexture(bool bUse)

_syntax: setUseTexture(bool bUse)_

_name: setUseTexture_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##bool isUsingTexture()

_syntax: isUsingTexture()_

_name: isUsingTexture_

_returns: bool_

_parameters: _



_description: _















//----------------------

##void bind()

_syntax: bind()_

_name: bind_

_returns: void_

_parameters: _



_description: _















//----------------------

##void unbind()

_syntax: unbind()_

_name: unbind_

_returns: void_

_parameters: _



_description: _















//----------------------

##bool loadImage(string fileName)

_syntax: loadImage(string fileName)_

_name: loadImage_

_returns: bool_

_parameters: string_



_description: _















//----------------------

##bool loadImage(const ofBuffer &buffer)

_syntax: loadImage(const ofBuffer &buffer)_

_name: loadImage_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##void saveImage(string fileName, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST)

_syntax: saveImage(string fileName, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST)_

_name: saveImage_

_returns: void_

_parameters: string,  = OF_IMAGE_QUALITY_BEST_



_description: _















//----------------------

##void saveImage(ofBuffer &buffer, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST)

_syntax: saveImage(ofBuffer &buffer, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST)_

_name: saveImage_

_returns: void_

_parameters:  = OF_IMAGE_QUALITY_BEST_



_description: _















//----------------------

##void setCompression(ofTexCompression compression)

_syntax: setCompression(ofTexCompression compression)_

_name: setCompression_

_returns: void_

_parameters: _



_description: _















//----------------------

##ofPixelsRef getPixelsRef()

_syntax: getPixelsRef()_

_name: getPixelsRef_

_returns: ofPixelsRef_

_parameters: _



_description: _















//----------------------

##ofColor getColor(int x, int y) const 

_syntax: getColor(int x, int y) const _

_name: getColor_

_returns: ofColor_

_parameters: int, int_



_description: _















//----------------------

##void setColor(int x, int y, ofColor color)

_syntax: setColor(int x, int y, ofColor color)_

_name: setColor_

_returns: void_

_parameters: int, int, _



_description: _















//----------------------

##void setFromPixels(unsigned char *pixels, int w, int h, ofImageType type, bool bOrderIsRGB=true)

_syntax: setFromPixels(unsigned char *pixels, int w, int h, ofImageType type, bool bOrderIsRGB=true)_

_name: setFromPixels_

_returns: void_

_parameters: unsigned char *, int, int, , bool = True_



_description: _















//----------------------

##void setImageType(ofImageType type)

_syntax: setImageType(ofImageType type)_

_name: setImageType_

_returns: void_

_parameters: _



_description: _















//----------------------

##void resize(int newWidth, int newHeight)

_syntax: resize(int newWidth, int newHeight)_

_name: resize_

_returns: void_

_parameters: int, int_



_description: _















//----------------------

##void grabScreen(int x, int y, int w, int h)

_syntax: grabScreen(int x, int y, int w, int h)_

_name: grabScreen_

_returns: void_

_parameters: int, int, int, int_



_description: _















//----------------------

##void crop(int x, int y, int w, int h)

_syntax: crop(int x, int y, int w, int h)_

_name: crop_

_returns: void_

_parameters: int, int, int, int_



_description: _















//----------------------

##void cropFrom(ofImage &otherImage, int x, int y, int w, int h)

_syntax: cropFrom(ofImage &otherImage, int x, int y, int w, int h)_

_name: cropFrom_

_returns: void_

_parameters: int, int, int, int_



_description: _















//----------------------

##void rotate90(int rotation)

_syntax: rotate90(int rotation)_

_name: rotate90_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void mirror(bool vertical, bool horizontal)

_syntax: mirror(bool vertical, bool horizontal)_

_name: mirror_

_returns: void_

_parameters: bool, bool_



_description: _















//----------------------

##void setAnchorPercent(float xPct, float yPct)

_syntax: setAnchorPercent(float xPct, float yPct)_

_name: setAnchorPercent_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void setAnchorPoint(float x, float y)

_syntax: setAnchorPoint(float x, float y)_

_name: setAnchorPoint_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void draw(const ofRectangle &r)

_syntax: draw(const ofRectangle &r)_

_name: draw_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void draw(const ofPoint &p, float w, float h)

_syntax: draw(const ofPoint &p, float w, float h)_

_name: draw_

_returns: void_

_parameters: const , float, float_



_description: _















//----------------------

##void draw(float x, float y, float w, float h)

_syntax: draw(float x, float y, float w, float h)_

_name: draw_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void draw(float x, float y, float z, float w, float h)

_syntax: draw(float x, float y, float z, float w, float h)_

_name: draw_

_returns: void_

_parameters: float, float, float, float, float_



_description: _















//----------------------

##void draw(float x, float y)

_syntax: draw(float x, float y)_

_name: draw_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void draw(float x, float y, float z)

_syntax: draw(float x, float y, float z)_

_name: draw_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##bool bAllocated()

_syntax: bAllocated()_

_name: bAllocated_

_returns: bool_

_parameters: _



_description: _















//----------------------

##void reloadTexture()

_syntax: reloadTexture()_

_name: reloadTexture_

_returns: void_

_parameters: _



_description: _















//----------------------

##void changeTypeOfPixels(ofPixels &pix, ofImageType type)

_syntax: changeTypeOfPixels(ofPixels &pix, ofImageType type)_

_name: changeTypeOfPixels_

_returns: void_

_parameters: _



_description: _















//----------------------

##void loadImageIntoPixels(fileName, pix)

_syntax: loadImageIntoPixels(fileName, pix)_

_name: loadImageIntoPixels_

_returns: void_

_parameters: string fileName, ofPixels & pix_



_description: _















//----------------------

##void saveImageFromPixels(fileName, pix)

_syntax: saveImageFromPixels(fileName, pix)_

_name: saveImageFromPixels_

_returns: void_

_parameters: string fileName, ofPixels & pix_



_description: _















//----------------------

##void allocate(w,h,type)

_syntax: allocate(w,h,type)_

_name: allocate_

_returns: void_

_parameters: int w, int h, int type_



_description: _

This function allocates an image of width (w) and height (h). The type can be of three types: OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA. You don't need to call this before loading an image, but for when you want to allocate space ahead of when you are going to use the image. 













//----------------------

##void changeTypeOfPixels(pix, newType)

_syntax: changeTypeOfPixels(pix, newType)_

_name: changeTypeOfPixels_

_returns: void_

_parameters: ofPixels & pix, int newType_



_description: _















//----------------------

##void clear()

_syntax: clear()_

_name: clear_

_returns: void_

_parameters: _



_description: _

Frees pixel data from memory, resets internal variables to default values and clears internal texture if it exists. This function is also called by the destructor. 

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void resizePixels(pix, newWidth, newHeight)

_syntax: resizePixels(pix, newWidth, newHeight)_

_name: resizePixels_

_returns: void_

_parameters: ofPixels & pix, int newWidth, int newHeight_



_description: _















//----------------------

##void getBmpFromPixels(pix)

_syntax: getBmpFromPixels(pix)_

_name: getBmpFromPixels_

_returns: void_

_parameters: ofPixels & pix_



_description: _















//----------------------

##void operator=(mom)

_syntax: operator=(mom)_

_name: operator=_

_returns: void_

_parameters: const ofImage & mom_



_description: _

Makes the current ofImage a copy of another ofImage. Same as clone(). 


$$code(lang=c++)

image2.loadImage("face.jpg");
image1 = image2;
$$/code


image1 and image2 are now identical. 













//----------------------

##void putBmpIntoPixels(bmp, pix)

_syntax: putBmpIntoPixels(bmp, pix)_

_name: putBmpIntoPixels_

_returns: void_

_parameters: FIBITMAP * bmp, ofPixels & pix_



_description: _















//----------------------

##void allocatePixels(pix, width, height, bpp)

_syntax: allocatePixels(pix, width, height, bpp)_

_name: allocatePixels_

_returns: void_

_parameters: ofPixels & pix, int width, int height, int bpp_



_description: _















//----------------------

##void clone(mom)

_syntax: clone(mom)_

_name: clone_

_returns: void_

_parameters: const ofImage & mom_



_description: _

Makes the current ofImage a copy of another ofImage. 


$$code(lang=c++)

image2.loadImage("face.jpg");
image1.clone(image2);
$$/code


image1 and image2 are now identical. 













//----------------------

##void setUseTexture(bUse)

_syntax: setUseTexture(bUse)_

_name: setUseTexture_

_returns: void_

_parameters: bool bUse_



_description: _

This turns on or off the allocation and use of a texture. any time you change the image (loading, resizing, converting the type), ofImage will uplaod data to an opengl texture. It may not be necessary, though, and it could be that you need to save memory on the graphics card, or that you don't need to draw this image on the screen. You can call this even before you load an image in to OF:


$$code(lang=c++)
myImage.setUseTexture(false);
myImage.loadImage("blah.gif");
$$/code


Since in the majority of cases, ofImages will be loaded in and drawn onscreen, the default is set to use a texture.













//----------------------

##void swapRgb(pix)

_syntax: swapRgb(pix)_

_name: swapRgb_

_returns: void_

_parameters: ofPixels & pix_



_description: _















//----------------------

##ofTexture getTextureReference()

_syntax: getTextureReference()_

_name: getTextureReference_

_returns: ofTexture_

_parameters: _



_description: _

Returns a reference to the internal ofTexture.

<br/><br/>return type changed from  to ofTexture in 0.07













//----------------------

##void loadImage(fileName)

_syntax: loadImage(fileName)_

_name: loadImage_

_returns: void_

_parameters: string fileName_



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














//----------------------

##void saveImage(fileName)

_syntax: saveImage(fileName)_

_name: saveImage_

_returns: void_

_parameters: string fileName_



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














//----------------------

##unsigned char * getPixels()

_syntax: getPixels()_

_name: getPixels_

_returns: unsigned char *_

_parameters: _



_description: _

This function will give you access to a continuous block of pixels. you can grab the data and do what you like with it. If you have a grayscale image, you will have (width*height) number of pixels. Color images will have (width*height*3) number of pixels (interlaced R,G,B), and coloralpha images will have (width*height*4) number of pixels (interlaced R,G,B,A).

<br/><br/>return type changed from  to unsigned char * in 0.07













//----------------------

##void setFromPixels(pixels, w, h, newType, bOrderIsRGB)

_syntax: setFromPixels(pixels, w, h, newType, bOrderIsRGB)_

_name: setFromPixels_

_returns: void_

_parameters: unsigned char * pixels, int w, int h, int newType, bool bOrderIsRGB_



_description: _

Copies in the pixel data from  the 'pixels' array. Specify the corresponding width and height of the image you are passing in with 'w' and 'h'. The image type can be OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, or OF_IMAGE_COLORALPHA. 

Note: that your array has to be at least as big as [ width * height * bytes per pixel ]. 

If you have a grayscale image, you will have (width*height) number of pixels. Color images will have (width*height*3) number of pixels (interlaced R,G,B), and coloralpha images will have (width*height*4) number of pixels (interlaced R,G,B,A).

Note: You do not need to call allocate() before calling setFromPixels() as setFromPixels() re-allocates itself if needed. 













//----------------------

##void setImageType(type)

_syntax: setImageType(type)_

_name: setImageType_

_returns: void_

_parameters: int type_



_description: _

Converts the image into a different type. 

For example, you can load in a color image, and convert it to grayscale:

$$code(lang=c++)
myImage.loadImage("somethingColor.jpg");
myImage.setImageType(OF_IMAGE_GRAYSCALE); 	// now I am grayscale;
$$/code














//----------------------

##void resize(newWidth, newHeight)

_syntax: resize(newWidth, newHeight)_

_name: resize_

_returns: void_

_parameters: int newWidth, int newHeight_



_description: _

Resizes the image to a new size (w, h); Can be used to scale up or down an image.













//----------------------

##void grabScreen(x, y, w, h)

_syntax: grabScreen(x, y, w, h)_

_name: grabScreen_

_returns: void_

_parameters: int x, int y, int w, int h_



_description: _

Grabs pixels from the opengl window specified by the region (x, y, w, h) and turns them into an image. It resizes or allocates the ofImage if it's necessary.















//----------------------

##void update()

_syntax: update()_

_name: update_

_returns: void_

_parameters: _



_description: _

Updates the image from its internal pixels. Call this if you have changed the values of the pixels using getPixels().




<br/><br/>return type changed from  to void in 0.07













//----------------------

##void draw(x, y, w, h)

_syntax: draw(x, y, w, h)_

_name: draw_

_returns: void_

_parameters: float x, float y, float w, float h_



_description: _

Draws the image (via the internal texture) from point (x,y) with a given width (w) and height (h).

Note: x,y typically reefers to the top left corner of the image.  You can change where on the image the x,y point refers to by using setAnchorPoint() or setAnchorPercent(). 













//----------------------

##void draw(x, y)

_syntax: draw(x, y)_

_name: draw_

_returns: void_

_parameters: float x, float y_



_description: _

Draws the image (via the internal texture) from point (x,y) with the image's own width and height.

Note: x,y typically reefers to the top left corner of the image.  You can change where on the image the x,y point refers to by using setAnchorPoint() or setAnchorPercent(). 













//----------------------

##float getWidth()

_syntax: getWidth()_

_name: getWidth_

_returns: float_

_parameters: _



_description: _

Returns the width of the image.

<br/><br/>return type changed from  to float in 0.07













//----------------------

##float getHeight()

_syntax: getHeight()_

_name: getHeight_

_returns: float_

_parameters: _



_description: _

Returns the height of the image.

<br/><br/>return type changed from  to float in 0.07













