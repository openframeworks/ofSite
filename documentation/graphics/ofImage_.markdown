#class ofImage_


<!--
_visible: True_
_advanced: False_
_istemplated: True_
_extends: ofBaseImage_<PixelType>_
-->

##InlineDescription

A class representing an image using memory and gpu based pixels.
\tparam PixelType The data type used to represent a single pixel value.





##Description

The ofImage is a useful object for loading, saving and drawing images in openFrameworks. ofImage is a convenient class that lets you both draw images to the screen and manipulate their pixel data. The ofImage allows you to load an image from disk, manipulate the pixels, and create an OpenGL texture that you can display and manipulate on the graphics card. Loading a file into the ofImage allocates an ofPixels object and creates the ofTexture to display the pixels.

ofImage uses a library called "freeImage" under the hood.





##Methods



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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

This allocates space in the ofImage, both the ofPixels and the
ofTexture that the ofImage contains.

You don't need to call this before loading an image, but for when you
want to allocate. space ahead of when you are going to use the image.

The types of images can be `OF_IMAGE_COLOR`, `OF_IMAGE_COLOR_ALPHA`
or `OF_IMAGE_GRAYSCALE`.

You need to call update() to update the texture after updating
the pixels manually.


Parameters:
w Width of image to allocate.
h Height of image to allocate.
type The ofImageType.





_description: _

This allocates space in the ofImage, both the ofPixels and the ofTexture that the ofImage contains.
~~~~{.cpp}
img.allocate(640, 480, OF_IMAGE_COLOR);
int i = 0;
while ( i < img.getPixels().size() ) {
    img.getPixels()[i] = abs(sin( float(i) / 18.f)) * 255.f; // make some op-art
    i++;
}
img.update();
~~~~

It allocates an image of width (w) and height (h). The type can be of three types: OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA. You don't need to call this before loading an image, but for when you want to allocate space ahead of when you are going to use the image.





<!----------------------------------------------------------------------------->

###void bind(textureLocation = 0)

<!--
_syntax: bind(textureLocation = 0)_
_name: bind_
_returns: void_
_returns_description: _
_parameters: int textureLocation=0_
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

Binds the oftexture instance that the ofImage contains so that
it can be used for advanced drawing.





_description: _

This binds the ofTexture instance that the ofImage contains so that it can be used for advanced drawing
~~~~{.cpp}
void ofApp::setup() {
    img.allocate(256, 256, OF_IMAGE_COLOR);
    int i = 0;
    while ( i < img.getPixels().size() ) {
        img.getPixels()[i] = abs(sin( float(i) / 18.f )) * 255.f;
        i++;
    }
    img.update();

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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\cond INTERNAL





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
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

This clears the texture and pixels contained within the ofImage.





_description: _

This clears the texture and pixels contained within the ofImage.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create an ofImage from another ofImage instance.

This allows you to create an ofImage from another ofImage instance,
copying all the pixels and the texture data while creating a new textureID.





_description: _

This allows you to create an ofImage from another ofImage instance, copying all the pixels and the texture data while creating a new textureID.
~~~~{.cpp}
ofImage second;
second.clone(first);
~~~~





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

This crops the image to the w,h passed in from the x,y position.

This does an in place crop and **allocates memory**.


Parameters:
x x position of upper-left corner of region to crop.
y y position of upper-left corner of region to crop.
w Width of region to crop.
h Height of region to crop.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Replaces region in caller image specified by w,h,x,y with pixels from otherImage.

The w,h are measured from the x,y, so passing 100, 100, 300, 300 will grab
a 300x300 pixel block of data starting from 100, 100.


Parameters:
otherImage Image to crop from.
x x position of upper-left corner of region to crop.
y y position of upper-left corner of region to crop.
w Width of region to crop.
h Height of region to crop.





_description: _

This crops another image into the image the cropFrom is being called on to the w,h passed in from the x,y position. The w,h are measured from the x,y, so passing 100, 100, 300, 300 will grab a 300x300 pixel block of data starting from 100, 100.
~~~~{.cpp}
ofImage img1, img2;
img1.loadImage("anImage.png");
img2.cropFrom(img1, 100, 100, 300, 300);
~~~~





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw the image at it's normal size.


Parameters:
x Draw position on the x axis.
y Draw position on the y axis.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw the texture at it's normal size with depth.


Parameters:
x Draw position on the x axis.
y Draw position on the y axis.
z Draw position on the z axis.





_description: _

Draws the ofImage into the x,y,z location with the default height and width. You should ensure that you turn on depth sorting using glEnable(GL_DEPTH) before trying to draw multiple objects into z-space.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw the image at a given size.


Parameters:
x Draw position on the x axis.
y Draw position on the y axis.
w Draw width.
h Draw height.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw the image at a given size with depth.


Parameters:
x Draw position on the x axis.
y Draw position on the y axis.
z Draw position on the z axis.
w Draw width.
h Draw height.





_description: _

Draws the ofImage into the x,y,z location and with the width and height, with any attendant scaling that may occur from fitting the ofImage into the width and height. You should ensure that you turn on depth sorting using glEnable(GL_DEPTH) before trying to draw multiple objects into z-space.





<!----------------------------------------------------------------------------->

###void drawSubsection(x, y, w, h, sx, sy)

<!--
_syntax: drawSubsection(x, y, w, h, sx, sy)_
_name: drawSubsection_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h, float sx, float sy_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a subsection of the image.

This functions like a clipping mask. Does not altering any pixel
data.


Parameters:
x X position to draw cropped image at.
y Y position to draw cropped image at.
w Width of subsection to draw.
h Height of subsection to draw.
sx X position in image to begin cropping from.
sy Y position in image to begin cropping from.





_description: _

Draws a subsection of the image (functions like a clipping mask) without altering any pixel data. (x,y) are the position to draw the cropped image at, (w,h) is the size of the subsection to draw and the size to crop (these can be different using the function below with sw,sh) and (sx,sy) are the source pixel positions in the image to begin cropping from.

~~~~{.cpp}
// crop the image from the mouse position to 100x100 pixels and draw it at 0,0
img.drawSubsection(0, 0, 100, 100, mouseX, mouseY);
~~~~

An example showing how to use drawSubsection can be found in of_release > examples > graphics > imageSubsectionExample





<!----------------------------------------------------------------------------->

###void drawSubsection(x, y, z, w, h, sx, sy)

<!--
_syntax: drawSubsection(x, y, z, w, h, sx, sy)_
_name: drawSubsection_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h, float sx, float sy_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a subsection of the image.

This functions like a clipping mask. Does not altering any pixel
data.


Parameters:
x X position to draw cropped image at.
y Y position to draw cropped image at.
z Z position to draw cropped image at.
w Width of subsection to draw.
h Height of subsection to draw.
sx X position in image to begin cropping from.
sy Y position in image to begin cropping from.





_description: _







<!----------------------------------------------------------------------------->

###void drawSubsection(x, y, w, h, sx, sy, sw, sh)

<!--
_syntax: drawSubsection(x, y, w, h, sx, sy, sw, sh)_
_name: drawSubsection_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h, float sx, float sy, float sw, float sh_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a subsection of the image.

This functions like a clipping mask. Does not altering any pixel
data.


Parameters:
x X position to draw cropped image at.
y Y position to draw cropped image at.
w Width of subsection to draw.
h Height of subsection to draw.
sx X position in image to begin cropping from.
sy Y position in image to begin cropping from.
sw Source width of cropped area.
sh Source height of cropped area.





_description: _

(sw,sh) indicate the source width and height of the cropped area and the (w,h) indicate the size to draw the cropped area at.





<!----------------------------------------------------------------------------->

###void drawSubsection(x, y, z, w, h, sx, sy, sw, sh)

<!--
_syntax: drawSubsection(x, y, z, w, h, sx, sy, sw, sh)_
_name: drawSubsection_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a subsection of the image.

This functions like a clipping mask. Does not altering any pixel
data.


Parameters:
x X position to draw cropped image at.
y Y position to draw cropped image at.
z Z position to draw cropped image at.
w Width of subsection to draw.
h Height of subsection to draw.
sx X position in image to begin cropping from.
sy Y position in image to begin cropping from.
sw Source width of cropped area.
sh Source height of cropped area.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > getColor(x, y)

<!--
_syntax: getColor(x, y)_
_name: getColor_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: int x, int y_
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

This returns the ofColor representing the pixels at the x and y
position passed in.

Parameters:
x x position of pixel
y y position of pixel

Returns: The ofColor representing the pixels at the x and y position passed in.





_description: _

This returns the ofColor representing the pixels at the x and y position passed in.





<!----------------------------------------------------------------------------->

###ofColor_< PixelType > getColor(index)

<!--
_syntax: getColor(index)_
_name: getColor_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: int index_
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

This returns the ofColor representing the pixels at the index
passed in.

Parameters:
index index into pixel data

Returns: The ofColor representing the pixels at the index position passed in.





_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get height of image as a float.

Returns: Height of image as float.





_description: _

Returns the height of the image in pixels.





<!----------------------------------------------------------------------------->

###ofImageType getImageType()

<!--
_syntax: getImageType()_
_name: getImageType_
_returns: ofImageType_
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







_description: _







<!----------------------------------------------------------------------------->

###ofPixels_< PixelType > & getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: ofPixels_< PixelType > &_
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

Returns a raw pointer to the pixel data.

This function will give you access to a continuous block of pixels.
you can grab the data and do what you like with it. If you have a
grayscale image, you will have (width*height)  number of pixels. Color
images will have (width*height*3) number of pixels (interlaced R,G,B),
and coloralpha images will have (width*height*4) number of pixels
(interlaced R,G,B,A).


Warning: This is a raw pointer. It's up to you to get this right.


Returns: A raw pointer to the pixel data.





_description: _

This returns a raw pointer to the pixel data.

This function will give you access to a continuous block of pixels. you can grab the data and do what you like with it. If you have a grayscale image, you will have (width*height) number of pixels. Color images will have (width*height*3) number of pixels (interlaced R,G,B), and coloralpha images will have (width*height*4) number of pixels (interlaced R,G,B,A).





<!----------------------------------------------------------------------------->

###const ofPixels_< PixelType > & getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: const ofPixels_< PixelType > &_
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







_description: _







<!----------------------------------------------------------------------------->

###ofTexture & getTexture()

<!--
_syntax: getTexture()_
_name: getTexture_
_returns: ofTexture &_
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

Returns a reference to the texture that the ofImage contains.

You can use this to directly manipulate the texture itself, but keep in
mind that if you manipulate the texture directly, there is no simple way
to copy the data from the texture back to the pixels and keep the ofImage in sync.


Returns: A reference to the texture that the ofImage contains.





_description: _







<!----------------------------------------------------------------------------->

###const ofTexture & getTexture()

<!--
_syntax: getTexture()_
_name: getTexture_
_returns: const ofTexture &_
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







_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get width of image as a float.

Returns: Width of image as float.





_description: _

Returns the width of the image in pixels.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Grabs pixels from the opengl window specified by the region
(x, y, w, h) and turns them into an image.

It resizes or allocates the ofImage if it's necessary.


Warning: Uses glReadPixels() which can be slow.


Parameters:
x x position of upper-left corner of region.
y y position of upper-left corner of region.
w Width of region.
h Height of region.





_description: _

Grabs pixels from the opengl window specified by the region (x, y, w, h) and turns them into an image. It resizes or allocates the ofImage if it's necessary.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Whether the image has been allocated either by a call to
allocate or by loading pixel data into the image.

Returns: true if the image has been allocated.





_description: _

Returns whether the image has been allocated either by a call to allocate or by loading pixel data into the image.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns whether the ofImage has a texture or not.

If the ofImage doesn't have a texture, nothing will be drawn to the screen.

Returns: true if the ofImage is using a texture.





_description: _

Returns whether the ofImage has a texture or not. If not, nothing will be drawn to the screen if the draw() method is called.





<!----------------------------------------------------------------------------->

###bool load(&fileName)

<!--
_syntax: load(&fileName)_
_name: load_
_returns: bool_
_returns_description: _
_parameters: const string &fileName_
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

Loads an image given by fileName.

Parameters:
fileName Program looks for image given by fileName, relative to
the data folder.

Returns: true if image loaded correctly.





_description: _







<!----------------------------------------------------------------------------->

###bool load(&buffer)

<!--
_syntax: load(&buffer)_
_name: load_
_returns: bool_
_returns_description: _
_parameters: const ofBuffer &buffer_
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

Loads an image from an ofBuffer instance created by, for
instance, ofFile::readToBuffer().

This actually loads the image data into an ofPixels object and then
into the texture.





_description: _







<!----------------------------------------------------------------------------->

###bool load(&file)

<!--
_syntax: load(&file)_
_name: load_
_returns: bool_
_returns_description: _
_parameters: const ofFile &file_
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

Loads an image from an ofFile instance created by, for
instance, ofDirectory::getFiles().

This actually loads the image data into an ofPixels object and then
into the texture.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

This reflects the pixels of the image across the vertical and/or horizontal axis.

Parameters:
vertical Set to true to reflect image across vertical axis.
horizontal Set to true to reflect image across horizontal axis.





_description: _

This reflects the pixels of the image across the vertical and/or horizontal axis.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\name Image Construction
\{





_description: _

This creates an ofImage but doesn't allocate any memory for it, so you can't use the image immediately after creating it.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This creates an ofImage from an ofPixels object, allocating space for the pixels, and copying the pixels into the texture that the ofImage instance contains.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This creates an ofImage from an ofFile instance.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

The copy constructor. Pass in another image and it copies it. This allows you to create an ofImage from another ofImage instance, copying all the pixels and the texture data while creating a new textureID.

~~~~{.cpp}
image1.loadImage("face.jpg");
ofImage image2(image1);
~~~~

image1 and image2 are now identical.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This allows you to create an ofImage from another ofImage instance, copying all the pixels and the texture data while creating a new textureID.





<!----------------------------------------------------------------------------->

###ofImage_< PixelType > & operator=(&pixels)

<!--
_syntax: operator=(&pixels)_
_name: operator=_
_returns: ofImage_< PixelType > &_
_returns_description: _
_parameters: ofPixels_< PixelType > &pixels_
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

\}
\name Operators
\{





_description: _

Allows you to set an image to pixels. This resizes the image to the size of the ofPixels and reallocates all the of the data within the image.





<!----------------------------------------------------------------------------->

###ofImage_< PixelType > & operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofImage_< PixelType > &_
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

_inlined_description: _







_description: _

This allows you to create an ofImage from another ofImage instance, copying all the pixels and the texture data while creating a new textureID.

Makes the current ofImage a copy of another ofImage. Same as clone().

~~~~{.cpp}

image2.loadImage("face.jpg");
image1 = image2;
~~~~

image1 and image2 are now identical.





<!----------------------------------------------------------------------------->

###ofImage_< PixelType > & operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofImage_< PixelType > &_
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

_inlined_description: _

\}





_description: _

This allows you to create an ofImage from another ofImage instance, copying all the pixels and the texture data while creating a new textureID.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Removes anchor positioning.

Resets the anchor to (0, 0) so the image will be drawn from its
upper left hand corner.





_description: _

This removes any anchor positioning, meaning that the ofImage will be draw with the upper left hand corner at the point passed into draw().





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Resizes the image to a new size (w, h); Can be used to scale up
or down an image.


Parameters:
newWidth New width of image.
newHeight New height of image.





_description: _

Resizes the image to a new size (w, h); Can be used to scale up or down an image.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotates the image by a multiple of 90 degrees.

Parameters:
rotation Amount to rotate in multiples of 90. For instance, if you pass
in 2, then the image will be rotated 180 degrees.





_description: _

Rotates the image by a multiple of 90 degrees, for instance, if you pass in 2, then the image will be rotated 180 degrees.





<!----------------------------------------------------------------------------->

###void save(fileName, compressionLevel = OF_IMAGE_QUALITY_BEST)

<!--
_syntax: save(fileName, compressionLevel = OF_IMAGE_QUALITY_BEST)_
_name: save_
_returns: void_
_returns_description: _
_parameters: string fileName, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST_
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

Saves the image to the file path in fileName with the image
quality specified by compressionLevel.


Parameters:
fileName Saves image to this path, relative to the data folder.
compressionLevel The ofImageQualityType.





_description: _







<!----------------------------------------------------------------------------->

###void save(&buffer, compressionLevel = OF_IMAGE_QUALITY_BEST)

<!--
_syntax: save(&buffer, compressionLevel = OF_IMAGE_QUALITY_BEST)_
_name: save_
_returns: void_
_returns_description: _
_parameters: ofBuffer &buffer, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST_
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

This saves the image to the ofBuffer passed with the image
quality specified by compressionLevel.


Parameters:
buffer ofBuffer to save image to.
compressionLevel The ofImageQualityType.





_description: _







<!----------------------------------------------------------------------------->

###void save(&file, compressionLevel = OF_IMAGE_QUALITY_BEST)

<!--
_syntax: save(&file, compressionLevel = OF_IMAGE_QUALITY_BEST)_
_name: save_
_returns: void_
_returns_description: _
_parameters: const ofFile &file, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST_
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

This saves the image to the ofFile passed with the image quality specified by compressionLevel.

Parameters:
file ofFile to save image to.
compressionLevel The different compression levels are: `OF_IMAGE_QUALITY_BEST`, `OF_IMAGE_QUALITY_HIGH`,
`OF_IMAGE_QUALITY_MEDIUM`, `OF_IMAGE_QUALITY_LOW`, `OF_IMAGE_QUALITY_WORST`





_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Change the drawing anchor from top-left corner to a position
specified by xPct and yPct.

Changes the drawing position specified by draw() from the normal top-
left corner of the image to a position specified by xPct and yPct in
relation to the dimensions of the image. This can be useful  for
aligning and centering images as well as rotating an image around its
center. Note: range of  xPct and yPct is 0.0 to 1.0. For xPct, 1.0
represents the width of the image. For yPct, 1.0 represents  the
height of the image. These values are not capped.


Parameters:
xPct X position of the new anchor, specified as a percent of the width of the image.
yPct Y position of the new anchor, specified as a percent of the height of the image.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Changes drawing position from top-left corner to position specified by x,y.

Changes the drawing position specified by draw() from the normal top-
left corner of the image to a  position specified by x and y, measured
in pixels. This can be useful for aligning and centering  images as
well as rotating an image around its center.


Parameters:
x X position of the new anchor.
y Y position of the new anchor.





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
  myImage.setAnchorPoint(myImage.getWidth()/2, myImage.getHeight()/2);
  myImage.draw(0, 0);
ofPopMatrix();
~~~~

To align the right side of an image with the right edge of the window:
~~~~{.cpp}
myImage.setAnchorPoint(myImage.getWidth(), 0.0);
myImage.draw(ofGetWidth(), 0);
~~~~





<!----------------------------------------------------------------------------->

###void setColor(x, y, &color)

<!--
_syntax: setColor(x, y, &color)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int x, int y, const ofColor_< PixelType > &color_
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

Sets the pixel at the x,y position passed in.

The ofColor type needs to match the ofImage type, i.e. ofFloatImage
requires that you use ofFloatPixels.


Parameters:
x x position of pixel.
y y position of pixel.
color Color to set pixel to.





_description: _

This sets the pixel at the x,y position passed in. The ofColor type needs to match the ofImage type, i.e. ofFloatImage requires that you use ofFloatPixels.





<!----------------------------------------------------------------------------->

###void setColor(index, &color)

<!--
_syntax: setColor(index, &color)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int index, const ofColor_< PixelType > &color_
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

Sets the pixel at the given pixel buffer index


Parameters:
index Index of pixel to set.
color Color to set pixel to.





_description: _







<!----------------------------------------------------------------------------->

###void setColor(&color)

<!--
_syntax: setColor(&color)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
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

Sets all pixels to a color.

Parameters:
color Color to set pixel to.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

This sets the compression level used when creating mipmaps for
the ofTexture contained by the ofImage.

Parameters:
compression The ofTexCompression to set.





_description: _

This sets the compression level used when creating mipmaps for the ofTexture contained by the ofImage. This is quite different than the ofImageQualityType image quality parameter used in saveImage(). The different texture compression levels are:
    OF_COMPRESS_NONE,
    OF_COMPRESS_SRGB,
    OF_COMPRESS_ARB





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets the pixels of the image from an array of values.

Set the pixels of the image from an array of values, for an
ofFloatImage these need to be floats, for an ofImage  these need to be
unsigned chars. The w and h values are important so that the correct
dimensions are set in the  image. This assumes that you're setting the
pixels from 0,0 or the upper left hand corner of the image. The
bOrderIsRGB flag allows you pass in pixel data that is BGR by setting
bOrderIsRGB=false.


Parameters:
pixels Array of pixel values.
w Width of image being passed in.
h Height of image being passed in.
type The image type can be OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, or OF_IMAGE_COLOR_ALPHA.
bOrderIsRGB Pass in pixel data that is BGR by setting bOrderIsRGB=false.





_description: _

Set the pixels of the image from an array of values, for an ofFloatImage these need to be floats, for an ofImage these need to be unsigned chars. The w and h values are important so that the correct dimensions are set in the image. This assumes that you're setting the pixels from 0,0 or the upper left hand corner of the image.
The bOrderIsRGB flag allows you pass in pixel data that is BGR by setting bOrderIsRGB=false.

Copies in the pixel data from  the 'pixels' array. Specify the corresponding width and height of the image you are passing in with 'w' and 'h'. The image type can be OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, or OF_IMAGE_COLOR_ALPHA.

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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the pixels of the image from an ofPixels instance.

Set the pixels of the image from an ofPixels instance, for an
ofFloatImage these need to be ofFloatPixels, for an ofImage these need
to be unsigned chars.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set type of image to one of the following: OF_IMAGE_GRAYSCALE,
OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA

This does cause the image to be reallocated and the texture to be
updated, so it can be an expensive operation  if done frequently.
Converting down, for example from color to grayscale, loses
information and is a destructive change.


Parameters:
type The type of image, one of the following:
`OF_IMAGE_GRAYSCALE`, `OF_IMAGE_COLOR`, `OF_IMAGE_COLOR_ALPHA`





_description: _

Set the type of image to one of the following: OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA. This does cause the image to be reallocated and the texture to be updated, so it can be an expensive operation if done frequently. Converting down, for example from color to grayscale, loses information and is a destructive change.

For example, you can load in a color image, and convert it to grayscale:
~~~~{.cpp}
myImage.loadImage("somethingColor.jpg");
myImage.setImageType(OF_IMAGE_GRAYSCALE);   // now I am grayscale;
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Turns on or off the allocation and use of a texture.


Parameters:
bUse Allocate and use a texture or not.





_description: _

If you set the ofImage to not use a texture it will contain the pixels of the image but cannot be drawn to the screen without copying its data into an ofTexture instance.

This turns on or off the allocation and use of a texture. any time you change the image (loading, resizing, converting the type), ofImage will upload data to an opengl texture. It may not be necessary, though, and it could be that you need to save memory on the graphics card, or that you don't need to draw this image on the screen. You can call this even before you load an image in to OF:

~~~~{.cpp}
myImage.setUseTexture(false);
myImage.loadImage("blah.gif");
~~~~

Since in the majority of cases, ofImages will be loaded in and drawn onscreen, the default is set to use a texture.





<!----------------------------------------------------------------------------->

###void unbind(textureLocation = 0)

<!--
_syntax: unbind(textureLocation = 0)_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: int textureLocation=0_
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

Unbinds the ofTexture instance that the ofImage contains.

Call this after you call bind().





_description: _

This unbinds the ofTexture instance that the ofImage contains. Call this after you call bind().





<!----------------------------------------------------------------------------->

###void unloadTexture()

<!--
_syntax: unloadTexture()_
_name: unloadTexture_
_returns: void_
_returns_description: _
_parameters: _
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Call to ensure that changes to pixels are reflected in the ofTexture of the image.

Many of the ofImage methods call this after they change the pixels,
but if you directly manipulate  the pixels of the ofImage, then you
should make sure to call update() before trying to draw the  texture
of the image to the screen.





_description: _

This method should be called after you update the pixels of the image and want to ensure that the changes to the pixels are reflected in the ofTexture of the image. Many of the ofImage methods call this after they change the pixels, but if you directly manipulate the pixels of the ofImage, then you should make sure to call update() before trying to draw the texture of the image to the screen.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

##Variables



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

_inlined_description: _







_description: _







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

_inlined_description: _

< Bits per image pixel.





_description: _

Bytes per pixels of the image. This will be 3 for OF_IMAGE_COLOR with unsigned char pixels and 12 for an OF_COLOR_IMAGE with float pixels.





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

_inlined_description: _

< Image Height in pixels.





_description: _

Height of the image in pixels.





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

_inlined_description: _







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

_inlined_description: _







_description: _







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

_inlined_description: _

< Image type.





_description: _

Returns the type of image, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA, or OF_IMAGE_GRAYSCALE





<!----------------------------------------------------------------------------->

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

_inlined_description: _

< Image width in pixels.





_description: _

Width of the image in pixels.





<!----------------------------------------------------------------------------->

