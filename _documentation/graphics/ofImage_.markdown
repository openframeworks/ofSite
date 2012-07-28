#class ofImage_


##Description

The ofImage and is a useful object for loading, saving and drawing images in openFrameworks. ofImage is a convenient class that let's you both get draw images to the screen and manipulate their pixel data. The ofImage allows you to load image from disk, manipulate the pixels, and create an OpenGL texture that you can display and manipulate on the graphics card. Loading a file into the ofImage allocates an ofPixels and creates the ofTexture to display the pixels.

ofImage uses a library called "freeImage" under the hood.


##Methods



### ofImage_()

<!--
_syntax: ofImage_()_
_name: ofImage_
_returns: _
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

_description: _

This creates an ofImage but doesn't allocate any memory for it, so you can't use the image immediately after creating it.






<!----------------------------------------------------------------------------->

### ~ofImage_()

<!--
_syntax: ~ofImage_()_
_name: ~ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&pix)

<!--
_syntax: ofImage_(&pix)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

This creates an ofImage from an ofPixels object, allocating space for the pixels, and copying the pixels into the texture that the ofImage instance contains.






<!----------------------------------------------------------------------------->

### ofImage_(&file)

<!--
_syntax: ofImage_(&file)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

This creates an ofImage from an ofFile instance.






<!----------------------------------------------------------------------------->

### ofImage_(&filename)

<!--
_syntax: ofImage_(&filename)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const string &filename_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

This creates an ofImage from a file which can be a local string or a URL, allocating space for the pixels, and copying the pixels into the texture that the ofImage instance contains.
~~~~{.cpp}
ofImage img("http://www.openframeworks.cc/wp-content/themes/ofw/images/ofw-logo.gif");
~~~~
or
~~~~{.cpp}
ofImage img("anImage.png"); // assumes this is in bin/data
~~~~






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

This allocates space in the ofImage, both the ofPixels and the ofTexture that the ofImage contains.
~~~~{.cpp}
img.allocate(640, 480, OF_IMAGE_COLOR);
int i = 0;
while ( i < img.getPixelsRef().size() ) {
	img.getPixelsRef()[i] = abs(sin( float(i) / 18.f)) * 255.f; // make some op-art
	i++;
}
img.reloadTexture();
~~~~

It allocates an image of width (w) and height (h). The type can be of three types: OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA. You don't need to call this before loading an image, but for when you want to allocate space ahead of when you are going to use the image. 




<!----------------------------------------------------------------------------->

###void clear()

<!--
_syntax: clear()_
_name: clear_
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

This clears the texture and pixels contained within the ofImage.







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

The copy constructor. Pass in another image and it copies it. This allows you to create an ofImage from another ofImage instance, copying all the pixels and the texture data while creating a new textureID.

~~~~{.cpp}
image1.loadImage("face.jpg");
ofImage image2(image1);
~~~~


image1 and image2 are now identical. 




<!----------------------------------------------------------------------------->

###ofImage_ operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofImage__
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
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

This allows you to create an ofImage from another ofImage instance, copying all the pixels and the texture data while creating a new textureID.

Makes the current ofImage a copy of another ofImage. Same as clone(). 

~~~~{.cpp}

image2.loadImage("face.jpg");
image1 = image2;
~~~~


image1 and image2 are now identical. 




<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

This allows you to create an ofImage from another ofImage instance, copying all the pixels and the texture data while creating a new textureID.






<!----------------------------------------------------------------------------->

###ofImage_ operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofImage__
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
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

This allows you to create an ofImage from another ofImage instance, copying all the pixels and the texture data while creating a new textureID.






<!----------------------------------------------------------------------------->

###void clone(&mom)

<!--
_syntax: clone(&mom)_
_name: clone_
_returns: void_
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
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

This allows you to create an ofImage from another ofImage instance, copying all the pixels and the texture data while creating a new textureID.
~~~~{.cpp}
ofImage second;
second.clone(first);
~~~~






<!----------------------------------------------------------------------------->

###void setUseTexture(bUse)

<!--
_syntax: setUseTexture(bUse)_
_name: setUseTexture_
_returns: void_
_returns_description: _
_parameters: bool bUse_
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

If you set the ofImage to not use a texture it will contain the pixels of the image but cannot be drawn to the screen without copying its data into an ofTexture instance.


This turns on or off the allocation and use of a texture. any time you change the image (loading, resizing, converting the type), ofImage will uplaod data to an opengl texture. It may not be necessary, though, and it could be that you need to save memory on the graphics card, or that you don't need to draw this image on the screen. You can call this even before you load an image in to OF:

~~~~{.cpp}
myImage.setUseTexture(false);
myImage.loadImage("blah.gif");
~~~~


Since in the majority of cases, ofImages will be loaded in and drawn onscreen, the default is set to use a texture.





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

Returns whether the ofImage has a texture or not. If not, nothing will be drawn to the screen if the draw() method is called.






<!----------------------------------------------------------------------------->

###ofTexture getTextureReference()

<!--
_syntax: getTextureReference()_
_name: getTextureReference_
_returns: ofTexture_
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

This returns the texture reference that the ofImage contains. You can use this to directly manipulate the texture itself, but keep in mind that if you manipulate the texture directly, there is no simple way to copy the data from the texture back to the pixels and keep the ofImage in sync.






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

This binds the ofTexture instance that the ofImage contains so that it can be used for advaned drawing
~~~~{.cpp}
void ofApp::setup() {
	img.allocate(256, 256, OF_IMAGE_COLOR);
	int i = 0;
	while ( i < img.getPixelsRef().size() ) {
		img.getPixelsRef()[i] = abs(sin( float(i) / 18.f )) * 255.f;
		i++;
	}
	img.reloadTexture();
	
	mesh.setMode(OF_PRIMITIVE_TRIANGLE_STRIP);
	
	mesh.addVertex(ofVec2f(10, 10));
	mesh.addVertex(ofVec2f(410, 10));
	mesh.addVertex(ofVec2f(410, 410));
	mesh.addVertex(ofVec2f(10, 410));
	mesh.addVertex(ofVec2f(10, 10));
	
	mesh.addTexCoord(ofVec2f(0, 0));
	mesh.addTexCoord(ofVec2f(256, 0));
	mesh.addTexCoord(ofVec2f(256, 256));
	mesh.addTexCoord(ofVec2f(0, 256));
	mesh.addTexCoord(ofVec2f(0, 0));
}
void ofApp::draw(){
	
	ofBackground(255, 255, 255); // background white
	
	img.bind();
	mesh.draw();
	img.unbind();
}
~~~~






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

This unbinds the ofTexture instance that the ofImage contains. Call this after you call bind().






<!----------------------------------------------------------------------------->

###bool loadImage(fileName)

<!--
_syntax: loadImage(fileName)_
_name: loadImage_
_returns: bool_
_returns_description: _
_parameters: string fileName_
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

Loads in an image given by fileName. It will try it's best to guess the filetype based on the name. The program will look for the file relative to the data/ folder. 

For example, to load an image "icon.gif" that is in the data folder you can call:
~~~~{.cpp}
myImage.load("icon.gif");
~~~~


you can also supply folder paths for subfolders within the data folder:
~~~~{.cpp}
myImage.load("images/icon.gif");
~~~~




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

Loads an image from an ofBuffer instance created by, for instance, ofFile::readToBuffer(). This actually loads the image data into an ofPixels object and then into the texture.






<!----------------------------------------------------------------------------->

###bool loadImage(&file)

<!--
_syntax: loadImage(&file)_
_name: loadImage_
_returns: bool_
_returns_description: _
_parameters: const ofFile &file_
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

Loads an image from an ofFile instance created by, for instance, ofDirectory::getFiles(). This actually loads the image data into an ofPixels object and then into the texture.






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

This saves the image to the file path in fileName with the image quality specified by compressionLevel. The different compression levels are:
OF_IMAGE_QUALITY_BEST,
OF_IMAGE_QUALITY_HIGH,
OF_IMAGE_QUALITY_MEDIUM,
OF_IMAGE_QUALITY_LOW,
OF_IMAGE_QUALITY_WORST

It will guess, based on the name, what filetype to save as. This file will be relative to the data folder. 

You can use this, combined with grabSceen, in order to save an image:
~~~~{.cpp}
myImage.grabScreen(0,0,500,500);
myImage.saveImage("partOfTheScreen.png");
~~~~


You can also use dynamically generated names:
~~~~{.cpp}
myImage.grabScreen(0,0,500,500);
myImage.saveImage("partOfTheScreen-"+ofToString(snapCounter)+".png");
snapCounter++;
~~~~



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

This saves the image to the ofBuffer passed with the image quality specified by compressionLevel. This is useful when streaming files. The different compression levels are:
OF_IMAGE_QUALITY_BEST,
OF_IMAGE_QUALITY_HIGH,
OF_IMAGE_QUALITY_MEDIUM,
OF_IMAGE_QUALITY_LOW,
OF_IMAGE_QUALITY_WORST






<!----------------------------------------------------------------------------->

###void saveImage(&file, compressionLevel = OF_IMAGE_QUALITY_BEST)

<!--
_syntax: saveImage(&file, compressionLevel = OF_IMAGE_QUALITY_BEST)_
_name: saveImage_
_returns: void_
_returns_description: _
_parameters: const ofFile &file, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST_
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

This saves the image to the ofFile passed with the image quality specified by compressionLevel. This is useful when streaming files. The different compression levels are:
OF_IMAGE_QUALITY_BEST,
OF_IMAGE_QUALITY_HIGH,
OF_IMAGE_QUALITY_MEDIUM,
OF_IMAGE_QUALITY_LOW,
OF_IMAGE_QUALITY_WORST






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

This sets the compression level used when creating mipmaps for the ofTexture contained by the ofImage. This is quite different than the ofImageQualityType image quality parameter used in saveImage(). The different texture compression levels are:
	OF_COMPRESS_NONE,
	OF_COMPRESS_SRGB,
	OF_COMPRESS_ARB






<!----------------------------------------------------------------------------->

###PixelType * getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: PixelType *_
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

This returns a raw pointer to the pixel data.


This function will give you access to a continuous block of pixels. you can grab the data and do what you like with it. If you have a grayscale image, you will have (width*height) number of pixels. Color images will have (width*height*3) number of pixels (interlaced R,G,B), and coloralpha images will have (width*height*4) number of pixels (interlaced R,G,B,A).




<!----------------------------------------------------------------------------->

###ofPixels_ getPixelsRef()

<!--
_syntax: getPixelsRef()_
_name: getPixelsRef_
_returns: ofPixels__
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

This returns an ofPixels reference that you can use to manipulate the raw pixel data of the ofImage. Make sure you call either update() or reloadTexture() after making changes to the ofPixels.
~~~~{.cpp}
int i = 0;
	while ( i < img.getPixelsRef().size() ) {
		img.getPixelsRef()[i] = abs(cos( float(i) / (16 * j))) * 512.f;
		i+=3;
	}
	if(j > 68.f)
		j = 32.f;
	else
		j += 0.025;
	
	img.reloadTexture();
~~~~






<!----------------------------------------------------------------------------->

### operator ofPixels_< PixelType > &()

<!--
_syntax: operator ofPixels_< PixelType > &()_
_name: operator ofPixels_< PixelType > &_
_returns: _
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

###ofColor_ getColor(x, y)

<!--
_syntax: getColor(x, y)_
_name: getColor_
_returns: ofColor__
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

This returns the ofColor representing the pixels at the x and y position passed in.






<!----------------------------------------------------------------------------->

###void setColor(x, y, color)

<!--
_syntax: setColor(x, y, color)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int x, int y, ofColor_< PixelType > color_
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

This sets the pixel at the x,y position passed in. The ofColor type needs to match the ofImage type, i.e. ofFloatImage requires that you use ofFloatPixels.






<!----------------------------------------------------------------------------->

###void setFromPixels(*pixels, w, h, type, bOrderIsRGB = true)

<!--
_syntax: setFromPixels(*pixels, w, h, type, bOrderIsRGB = true)_
_name: setFromPixels_
_returns: void_
_returns_description: _
_parameters: const PixelType *pixels, int w, int h, ofImageType type, bool bOrderIsRGB=true_
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

Set the pixels of the image from an array of values, for an ofFloatImage these need to be floats, for an ofImage these need to be unsigned chars. The w and h values are important so that the correct dimensions are set in the image. This assumes that you're setting the pixels from 0,0 or the upper left hand corner of the image.
The bOrderIsRGB flag allows you pass in pixel data that is BGR by setting bOrderIsRGB=false.


Copies in the pixel data from  the 'pixels' array. Specify the corresponding width and height of the image you are passing in with 'w' and 'h'. The image type can be OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, or OF_IMAGE_COLORALPHA. 

Note: that your array has to be at least as big as [ width * height * bytes per pixel ]. 

If you have a grayscale image, you will have (width*height) number of pixels. Color images will have (width*height*3) number of pixels (interlaced R,G,B), and coloralpha images will have (width*height*4) number of pixels (interlaced R,G,B,A).

Note: You do not need to call allocate() before calling setFromPixels() as setFromPixels() re-allocates itself if needed. 




<!----------------------------------------------------------------------------->

###void setFromPixels(&pixels)

<!--
_syntax: setFromPixels(&pixels)_
_name: setFromPixels_
_returns: void_
_returns_description: _
_parameters: const ofPixels_< PixelType > &pixels_
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

Set the pixels of the image from an ofPixels instance, for an ofFloatImage these need to be ofFloatPixels, for an ofImage these need to be unsigned chars. The w and h values are important so that the correct dimensions are set in the image. This assumes that you're setting the pixels from 0,0 or the upper left hand corner of the image.
The bOrderIsRGB flag allows you pass in pixel data that is BGR by setting bOrderIsRGB=false.






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

Set the type of image to one of the following: OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA. This does cause the image to be reallocated and the texture to be updated, so it can be an expensive operation if done frequently. Converting down, for example from color to grayscale, loses information and is a destructive change.


For example, you can load in a color image, and convert it to grayscale:
~~~~{.cpp}
myImage.loadImage("somethingColor.jpg");
myImage.setImageType(OF_IMAGE_GRAYSCALE); 	// now I am grayscale;
~~~~




<!----------------------------------------------------------------------------->

###void resize(newWidth, newHeight)

<!--
_syntax: resize(newWidth, newHeight)_
_name: resize_
_returns: void_
_returns_description: _
_parameters: int newWidth, int newHeight_
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
_version_started: 007_
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

This crops the image to the w,h passed in from the x,y position.






<!----------------------------------------------------------------------------->

###void cropFrom(&otherImage, x, y, w, h)

<!--
_syntax: cropFrom(&otherImage, x, y, w, h)_
_name: cropFrom_
_returns: void_
_returns_description: _
_parameters: ofImage_< PixelType > &otherImage, int x, int y, int w, int h_
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

This crops another image into the image the cropFrom is being called on to the w,h passed in from the x,y position. The w,h are measured from the x,y, so passing 100, 100, 300, 300 will grab a 300x300 pixel block of data starting from 100, 100.
~~~~{.cpp}
ofImage img1, img2;
img1.load("anImage.png");
img2.cropFrom(img1, 100, 100, 300, 300);
~~~~






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

Rotates the image by a multiple of 90 degrees, for instance, if you pass in 2, then the image will be rotated 180 degrees.






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

This reflects the pixels of the image across the vertical and/or horizontal axis.






<!----------------------------------------------------------------------------->

###void update()

<!--
_syntax: update()_
_name: update_
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

This method should be called after you update the pixels of the image and want to ensure that the changes to the pixels are reflected in the ofTexture of the image. Many of the ofImage methods call this after they change the pixels, but if you directly manipulate the pixels of the ofImage, then you should make sure to call update() before trying to draw the texture of the image to the screen.






<!----------------------------------------------------------------------------->

###void setAnchorPercent(xPct, yPct)

<!--
_syntax: setAnchorPercent(xPct, yPct)_
_name: setAnchorPercent_
_returns: void_
_returns_description: _
_parameters: float xPct, float yPct_
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

Changes the drawing position specified by draw() from the normal top-left corner of the image to a position specified by xPct and yPct in relation to the dimensions of the image. This can be useful for aligning and centering images as well as rotating an image around its center. 

Note: range of xPct and yPct is 0.0 to 1.0. For xPct, 1.0 represents the width of the image. For yPct, 1.0 represents the height of the image. These values are not capped. 

For example to draw an image so that its center is at 100, 100:
~~~~{.cpp}
myImage.setAnchorPercent(0.5, 0.5); 
myImage.draw(100, 100);
~~~~


To rotate an image around its center at 100, 100:
~~~~{.cpp}
ofPushMatrix();
  ofTranslate(100, 100, 0);
  ofRotate(45);
  myImage.setAnchorPercent(0.5, 0.5); 
  myImage.draw(0, 0); 
ofPopMatrix();
~~~~


To align the right side of an image with the right edge of the window:
~~~~{.cpp}
myImage.setAnchorPercent(1.0, 0.0);
myImage.draw(ofGetWidth(), 0);
~~~~





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

Changes the drawing position specified by draw() from the normal top-left corner of the image to a position specified by x and y, measured in pixels. This can be useful for aligning and centering images as well as rotating an image around its center. 

Note: see also setAnchorPercent() if you want to specify the anchor as a percentage of the image size. 

For example to draw an image so that its center is at 100, 100:
~~~~{.cpp}
myImage.setAnchorPoint(myImage.getWidth()/2, myImage.getHeight()/2); 
myImage.draw(100, 100);
~~~~


To rotate an image around its center at 100, 100:
~~~~{.cpp}
ofPushMatrix();
  ofTranslate(100, 100, 0);
  ofRotate(45);
  myImage.setAnchorPercent(myImage.getWidth()/2, myImage.getHeight()/2); 
  myImage.draw(0, 0); 
ofPopMatrix();
~~~~


To align the right side of an image with the right edge of the window:
~~~~{.cpp}
myImage.setAnchorPercent(myImage.getWidth(), 0.0);
myImage.draw(ofGetWidth(), 0);
~~~~





<!----------------------------------------------------------------------------->

###void resetAnchor()

<!--
_syntax: resetAnchor()_
_name: resetAnchor_
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

This removes any anchor positioning, meaning that the ofImage will be draw with the upper left hand corner at the point passed into draw().






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

Draws the ofImage into the ofRectangle passed in, with any attendant scaling that may occur from fitting the ofImage into the bounds of the ofRectangle.






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

Draws the ofImage into the ofVec2f location and with the width and height, with any attendant scaling that may occur from fitting the ofImage into the width and height.






<!----------------------------------------------------------------------------->

###void draw(x, y, w, h)

<!--
_syntax: draw(x, y, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h_
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

Draws the ofImage into the x,y location and with the width and height, with any attendant scaling that may occur from fitting the ofImage into the width and height.






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

Draws the ofImage into the x,y,z location and with the width and height, with any attendant scaling that may occur from fitting the ofImage into the width and height. You should ensure that you turn on depth sorting using glEnable(GL_DEPTH) before trying to draw multiple objects into z-space.






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

Draws the ofImage into the x,y location using the default height and width of the image.






<!----------------------------------------------------------------------------->

###void draw(x, y)

<!--
_syntax: draw(x, y)_
_name: draw_
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

Draws the ofImage into the x,y location using the default height and width of the image.






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

Draws the ofImage into the x,y,z location with the default height and width. You should ensure that you turn on depth sorting using glEnable(GL_DEPTH) before trying to draw multiple objects into z-space.






<!----------------------------------------------------------------------------->

###float getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
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

Returns the height of the image in pixels.






<!----------------------------------------------------------------------------->

###float getWidth()

<!--
_syntax: getWidth()_
_name: getWidth_
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

Returns the width of the image in pixels.






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

Whether the image has been allocated either by a call to allocate or by loading pixel data into the image.






<!----------------------------------------------------------------------------->

###bool isAllocated()

<!--
_syntax: isAllocated()_
_name: isAllocated_
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

Returns whether the image has been allocated either by a call to allocate or by loading pixel data into the image.






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

Loads any data from the ofPixels that the image contains into the ofTexture so that draw() calls will reflect chagnes to the pixels.






<!----------------------------------------------------------------------------->

###ofImage_ operator=(&pixels)

<!--
_syntax: operator=(&pixels)_
_name: operator=_
_returns: ofImage__
_returns_description: _
_parameters: ofPixels_< PixelType > &pixels_
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

Allows you to set an image to pixels. This resizes the image to the size of the ofPixels and reallocates all the of the data within the image.






<!----------------------------------------------------------------------------->

###void changeTypeOfPixels(&pix, type)

<!--
_syntax: changeTypeOfPixels(&pix, type)_
_name: changeTypeOfPixels_
_returns: void_
_returns_description: _
_parameters: ofPixels_< PixelType > &pix, ofImageType type_
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
_parameters: ofPixels_< PixelType > &pix, int newWidth, int newHeight_
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

### ofImage_()

<!--
_syntax: ofImage_()_
_name: ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofImage_()

<!--
_syntax: ~ofImage_()_
_name: ~ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&pix)

<!--
_syntax: ofImage_(&pix)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&file)

<!--
_syntax: ofImage_(&file)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&filename)

<!--
_syntax: ofImage_(&filename)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const string &filename_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_()

<!--
_syntax: ofImage_()_
_name: ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofImage_()

<!--
_syntax: ~ofImage_()_
_name: ~ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&pix)

<!--
_syntax: ofImage_(&pix)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&file)

<!--
_syntax: ofImage_(&file)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&filename)

<!--
_syntax: ofImage_(&filename)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const string &filename_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_()

<!--
_syntax: ofImage_()_
_name: ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofImage_()

<!--
_syntax: ~ofImage_()_
_name: ~ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&pix)

<!--
_syntax: ofImage_(&pix)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&file)

<!--
_syntax: ofImage_(&file)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&filename)

<!--
_syntax: ofImage_(&filename)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const string &filename_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_()

<!--
_syntax: ofImage_()_
_name: ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofImage_()

<!--
_syntax: ~ofImage_()_
_name: ~ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&pix)

<!--
_syntax: ofImage_(&pix)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&file)

<!--
_syntax: ofImage_(&file)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&filename)

<!--
_syntax: ofImage_(&filename)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const string &filename_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_()

<!--
_syntax: ofImage_()_
_name: ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofImage_()

<!--
_syntax: ~ofImage_()_
_name: ~ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&pix)

<!--
_syntax: ofImage_(&pix)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&file)

<!--
_syntax: ofImage_(&file)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&filename)

<!--
_syntax: ofImage_(&filename)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const string &filename_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_()

<!--
_syntax: ofImage_()_
_name: ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofImage_()

<!--
_syntax: ~ofImage_()_
_name: ~ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&pix)

<!--
_syntax: ofImage_(&pix)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&file)

<!--
_syntax: ofImage_(&file)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&filename)

<!--
_syntax: ofImage_(&filename)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const string &filename_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_()

<!--
_syntax: ofImage_()_
_name: ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofImage_()

<!--
_syntax: ~ofImage_()_
_name: ~ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&pix)

<!--
_syntax: ofImage_(&pix)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&file)

<!--
_syntax: ofImage_(&file)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&filename)

<!--
_syntax: ofImage_(&filename)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const string &filename_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_()

<!--
_syntax: ofImage_()_
_name: ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofImage_()

<!--
_syntax: ~ofImage_()_
_name: ~ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&pix)

<!--
_syntax: ofImage_(&pix)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&file)

<!--
_syntax: ofImage_(&file)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&filename)

<!--
_syntax: ofImage_(&filename)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const string &filename_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_()

<!--
_syntax: ofImage_()_
_name: ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofImage_()

<!--
_syntax: ~ofImage_()_
_name: ~ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&pix)

<!--
_syntax: ofImage_(&pix)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&file)

<!--
_syntax: ofImage_(&file)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&filename)

<!--
_syntax: ofImage_(&filename)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const string &filename_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_()

<!--
_syntax: ofImage_()_
_name: ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofImage_()

<!--
_syntax: ~ofImage_()_
_name: ~ofImage_
_returns: _
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

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&pix)

<!--
_syntax: ofImage_(&pix)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&file)

<!--
_syntax: ofImage_(&file)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofFile &file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&filename)

<!--
_syntax: ofImage_(&filename)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const string &filename_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage_
_returns: _
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofImage_()

<!--
_syntax: ofImage_()_
_name: ofImage__
_returns: _
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

### ~ofImage_()

<!--
_syntax: ~ofImage_()_
_name: ~ofImage__
_returns: _
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

### ofImage_(&pix)

<!--
_syntax: ofImage_(&pix)_
_name: ofImage__
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &pix_
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

### ofImage_(&file)

<!--
_syntax: ofImage_(&file)_
_name: ofImage__
_returns: _
_returns_description: _
_parameters: const ofFile &file_
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

### ofImage_(&filename)

<!--
_syntax: ofImage_(&filename)_
_name: ofImage__
_returns: _
_returns_description: _
_parameters: const string &filename_
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

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage__
_returns: _
_returns_description: _
_parameters: const ofImage_< PixelType > &mom_
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

### ofImage_(&mom)

<!--
_syntax: ofImage_(&mom)_
_name: ofImage__
_returns: _
_returns_description: _
_parameters: const ofImage_< SrcType > &mom_
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

##Variables



###int width

<!--
_name: width_
_type: int_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _

Width of the image in pixels.






<!----------------------------------------------------------------------------->

###int height

<!--
_name: height_
_type: int_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _

Height of the image in pixels.






<!----------------------------------------------------------------------------->

###int bpp

<!--
_name: bpp_
_type: int_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _

Bytes per pixels of the image. This will be 3 for OF_IMAGE_COLOR with unsigned char pixels and 12 for an OF_COLOR_IMAGE with float pixels.






<!----------------------------------------------------------------------------->

###int type

<!--
_name: type_
_type: int_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _

Returns the type of image, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA, or OF_IMAGE_GRAYSCALE






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

###bool bUseTexture

<!--
_name: bUseTexture_
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

###ofTexture tex

<!--
_name: tex_
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

