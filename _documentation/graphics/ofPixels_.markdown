#class ofPixels_


<!--
_visible: True_
_advanced: False_
_istemplated: True_
_extends: _
-->

##InlineDescription

A class representing a collection of pixels.





##Description

ofPixels is an object for working with blocks of pixels, those pixels can be copied from an image that you've loaded, something that you've drawn using ofGraphics, or a ofVideoGrabber instance. You can create an image from pixels, using on ofPixels object like so:
~~~~{.cpp}
ofPixels p;
ofLoadImage(p, "pathToImage.jpg");
~~~~
ofPixels represents pixels data on the CPU as opposed to an ofTexture which represents pixel data on the GPU. They can easily be made inter-operational though:
~~~~{.cpp}
ofTexture tex;
// do some stuff with t
ofPixels pix;
tex.readToPixels(pix); // now all the pixels from tex are in pix
~~~~
You can access the pixels in an ofPixels object with the [] operator.
~~~~{.cpp}
ofPixels pix;
// put some stuff in the pixels
int i = 0;
while( i < pix.size()) {
	char c = pix[i];
	i++;
}
~~~~

You can think of the ofPixels as the CPU side representation of pixel data that can be sent to the GPU as an ofTexture object. To draw pixels, you need to put them into an ofTexture and to manipulate an ofTextures pixel data you need an ofPixels object.





##Methods



###void allocate(w, h, channels)

<!--
_syntax: allocate(w, h, channels)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int w, int h, int channels_
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

Allocates space for pixel data

Parameters:
w Width of pixel array
h Height of pixel array
channels Number of channels per pixel





_description: _

Allocates space for pixel data of the given width (w), height (h) and number of channels (channels). If an ofImageType or ofPixelFormat is passed in, it will allocate based on the required number of channels.





<!----------------------------------------------------------------------------->

###void allocate(w, h, pixelFormat)

<!--
_syntax: allocate(w, h, pixelFormat)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int w, int h, ofPixelFormat pixelFormat_
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

Allocates space for pixel data

The pixelFormat can be one of the following:

    OF_PIXELS_RGB
    OF_PIXELS_RGBA
    OF_PIXELS_BGRA
    OF_PIXELS_MONO


Parameters:
w Width of pixel array
h Height of pixel array
pixelFormat ofPixelFormat defining number of channels per pixel





_description: _

ofPixelFormat:

	OF_PIXELS_RGB

	OF_PIXELS_RGBA

	OF_PIXELS_BGRA

	OF_PIXELS_MONO





<!----------------------------------------------------------------------------->

###void allocate(w, h, imageType)

<!--
_syntax: allocate(w, h, imageType)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int w, int h, ofImageType imageType_
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

Allocates space for pixel data

The imageType can be one of the following:

    OF_IMAGE_GRAYSCALE
    OF_IMAGE_COLOR
    OF_IMAGE_COLOR_ALPHA


Parameters:
w Width of pixel array
h Height of pixel array
imageType ofImageType defining number of channels per pixel





_description: _

ofImageType:
	
	OF_IMAGE_GRAYSCALE
	
	OF_IMAGE_COLOR
	
	OF_IMAGE_COLOR_ALPHA





<!----------------------------------------------------------------------------->

###iterator begin()

<!--
_syntax: begin()_
_name: begin_
_returns: iterator_
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

###const_iterator begin()

<!--
_syntax: begin()_
_name: begin_
_returns: const_iterator_
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

###float bicubicInterpolate(*patch, x, y, x2, y2, x3, y3)

<!--
_syntax: bicubicInterpolate(*patch, x, y, x2, y2, x3, y3)_
_name: bicubicInterpolate_
_returns: float_
_returns_description: _
_parameters: const float *patch, float x, float y, float x2, float y2, float x3, float y3_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\endcond





_description: _







<!----------------------------------------------------------------------------->

###bool blendInto(&dst, x, y)

<!--
_syntax: blendInto(&dst, x, y)_
_name: blendInto_
_returns: bool_
_returns_description: _
_parameters: ofPixels_< PixelType > &dst, int x, int y_
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

Clear all the data from the ofPixels objects.
After calling this you'll need to allocate()
the ofPixels object again to use it.





_description: _

This clears all the data from the ofPixels objects. After calling this you'll need to allocate the ofPixels object again to use it.





<!----------------------------------------------------------------------------->

###void copyFrom(&mom)

<!--
_syntax: copyFrom(&mom)_
_name: copyFrom_
_returns: void_
_returns_description: _
_parameters: const ofPixels_< PixelType > &mom_
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

###void copyFrom(&mom)

<!--
_syntax: copyFrom(&mom)_
_name: copyFrom_
_returns: void_
_returns_description: _
_parameters: const ofPixels_< SrcType > &mom_
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

###void crop(x, y, width, height)

<!--
_syntax: crop(x, y, width, height)_
_name: crop_
_returns: void_
_returns_description: _
_parameters: int x, int y, int width, int height_
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

Crop the pixels to a new width and height.

As a word of caution this reallocates memory and can be a bit
expensive if done a lot.





_description: _

This crops the pixels to a new width and height. As a word of caution this reallocates memory and can be a bit expensive if done a lot.





<!----------------------------------------------------------------------------->

###void cropTo(&toPix, x, y, width, height)

<!--
_syntax: cropTo(&toPix, x, y, width, height)_
_name: cropTo_
_returns: void_
_returns_description: _
_parameters: ofPixels_< PixelType > &toPix, int x, int y, int width, int height_
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

Crop the pixels into the ofPixels reference passed in by `toPix.
at the `x` and `y` and width the new width and height.

As a word of caution this reallocates memory and can be a bit
expensive if done a lot.





_description: _

This crops the pixels into the ofPixels reference passed in by toPix. at the x and y and with the new width and height. As a word of caution this reallocates memory and can be a bit expensive if done a lot.





<!----------------------------------------------------------------------------->

###iterator end()

<!--
_syntax: end()_
_name: end_
_returns: iterator_
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

###const_iterator end()

<!--
_syntax: end()_
_name: end_
_returns: const_iterator_
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

###int getBitsPerChannel()

<!--
_syntax: getBitsPerChannel()_
_name: getBitsPerChannel_
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

Get how large each channel of a pixels is.

ofPixels objects that store pixel data as `unsigned char` are smaller
than ofPixels objects that store pixel data as 'float`.

\note This returns bits, not bytes, so you should see ofPixels<float>
return 32 and ofPixels<unsigned char> return 8.





_description: _

This is how large each channel of a pixels is, ofPixels objects that store pixel data as unsigned char are smaller than  ofPixels objects that store pixel data as floats.
This returns bit, not bytes, so you'll probably see ofPixels<float> as 32 and ofPixels<unsigned char> as 8.





<!----------------------------------------------------------------------------->

###int getBitsPerPixel()

<!--
_syntax: getBitsPerPixel()_
_name: getBitsPerPixel_
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

Get number of bits per pixel

If you have RGB pixel data, this will return 24, if you have RGBA,
you'll have 32, if you have grayscale, this will return 8.





_description: _

If you have RGB pixel data, this will return 3, if you have RGBA, you'll have 4, if you have grayscale, this will return 1.





<!----------------------------------------------------------------------------->

###int getBytesPerChannel()

<!--
_syntax: getBytesPerChannel()_
_name: getBytesPerChannel_
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

Get how large each channel of a pixel is

ofPixels objects that store pixel data as unsigned char are smaller
than  ofPixels objects that store pixel data as floats.

\note This returns bytes, not bits, so you should see ofPixels<float>
return 4 and ofPixels<unsigned char> return 1.





_description: _

This is how large each channel of a pixels is, ofPixels objects that store pixel data as unsigned char are smaller than  ofPixels objects that store pixel data as floats.
This returns bytes, not bits, so you'll probably see ofPixels<float> as 4 and ofPixels<unsigned char> as 1.





<!----------------------------------------------------------------------------->

###int getBytesPerPixel()

<!--
_syntax: getBytesPerPixel()_
_name: getBytesPerPixel_
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

Get the number of bytes per pixel





_description: _

Returns the number of the pixels.





<!----------------------------------------------------------------------------->

###int getBytesStride()

<!--
_syntax: getBytesStride()_
_name: getBytesStride_
_returns: int_
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

###ofPixels_< PixelType > getChannel(channel)

<!--
_syntax: getChannel(channel)_
_name: getChannel_
_returns: ofPixels_< PixelType >_
_returns_description: _
_parameters: int channel_
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

Get all values of one channel

For instance, the Red pixel values, from the
ofPixels object, this gives you a grayscale representation of the
specific channel

~~~~{.cpp}
    // Get red pixels
	ofPixels rpix = pix.getChannel(0);
    // Get green pixels
	ofPixels gpix = pix.getChannel(1);
    // Get blue pixels
	ofPixels bpix = pix.getChannel(2);
~~~~





_description: _

This returns a single channel, for instance, the Red pixel values, from the ofPixels object, this gives you a grayscale representation of that one channel.
~~~~{.cpp}
	ofPixels rpix = pix.getChannel(0);
	ofPixels gpix = pix.getChannel(1);
	ofPixels bpix = pix.getChannel(2);
~~~~





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

Get the color at a x,y position





_description: _

This method returns the ofColor that the pixels contains at an x, y pair:
~~~~{.cpp}
ofColor c = pix.getColor(mouseX, mouseY);
~~~~





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

Get the color at a specific index





_description: _







<!----------------------------------------------------------------------------->

###ofPixels_::ConstLine getConstLine(line)

<!--
_syntax: getConstLine(line)_
_name: getConstLine_
_returns: ofPixels_::ConstLine_
_returns_description: _
_parameters: int line_
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

###ofPixels_::ConstLines getConstLines()

<!--
_syntax: getConstLines()_
_name: getConstLines_
_returns: ofPixels_::ConstLines_
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

###ofPixels_::ConstLines getConstLines(first, numLines)

<!--
_syntax: getConstLines(first, numLines)_
_name: getConstLines_
_returns: ofPixels_::ConstLines_
_returns_description: _
_parameters: int first, int numLines_
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

###ofPixels_::ConstPixels getConstPixelsIter()

<!--
_syntax: getConstPixelsIter()_
_name: getConstPixelsIter_
_returns: ofPixels_::ConstPixels_
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

###PixelType * getData()

<!--
_syntax: getData()_
_name: getData_
_returns: PixelType *_
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

Retrieves pixel data from the ofPixel object.


Returns: A raw pointer to the pixel data.





_description: _







<!----------------------------------------------------------------------------->

###const PixelType * getData()

<!--
_syntax: getData()_
_name: getData_
_returns: const PixelType *_
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

###int getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
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

Get the height of the pixel array.





_description: _

Returns the height of the pixels.





<!----------------------------------------------------------------------------->

###ofImageType getImageType()

<!--
_syntax: getImageType()_
_name: getImageType_
_returns: ofImageType_
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

Get the type of the image

Returns: One of the following types: `OF_IMAGE_GRAYSCALE`,
`OF_IMAGE_COLOR`, `OF_IMAGE_COLOR_ALPHA`





_description: _

Returns what image type the ofPixels object is.





<!----------------------------------------------------------------------------->

###ofPixels_::Line getLine(line)

<!--
_syntax: getLine(line)_
_name: getLine_
_returns: ofPixels_::Line_
_returns_description: _
_parameters: int line_
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

###ofPixels_::Lines getLines()

<!--
_syntax: getLines()_
_name: getLines_
_returns: ofPixels_::Lines_
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

###ofPixels_::Lines getLines(first, numLines)

<!--
_syntax: getLines(first, numLines)_
_name: getLines_
_returns: ofPixels_::Lines_
_returns_description: _
_parameters: int first, int numLines_
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

###int getNumChannels()

<!--
_syntax: getNumChannels()_
_name: getNumChannels_
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

Get the number of channels that the ofPixels object contains.
RGB is 3 channels, RGBA is 4, and grayscale is 1.





_description: _

This returns the number of channels that the ofPixels object contains. RGB is 3 channels, RGBA is 4, and grayscale is 1.





<!----------------------------------------------------------------------------->

###int getNumPlanes()

<!--
_syntax: getNumPlanes()_
_name: getNumPlanes_
_returns: int_
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

###ofPixelFormat getPixelFormat()

<!--
_syntax: getPixelFormat()_
_name: getPixelFormat_
_returns: ofPixelFormat_
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

###int getPixelIndex(x, y)

<!--
_syntax: getPixelIndex(x, y)_
_name: getPixelIndex_
_returns: int_
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

Get the pixel index at a x,y position

~~~~{.cpp}
ofColor yellow = ofColor::yellow;
int ind = pix.getPixelIndex(mouseX, mouseY);
pix.setPixel(ind, yellow);
~~~~





_description: _

This method tells you want pixel index an x, y pair would be at in the index, for instance:
~~~~{.cpp}
ofColor yellow = ofColor::yellow;
int ind = pix.getPixelIndex(mouseX, mouseY);
pix.setPixel(ind, yellow);
~~~~





<!----------------------------------------------------------------------------->

###ofPixels_::Pixels getPixelsIter()

<!--
_syntax: getPixelsIter()_
_name: getPixelsIter_
_returns: ofPixels_::Pixels_
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

###ofPixels_< PixelType > getPlane(plane)

<!--
_syntax: getPlane(plane)_
_name: getPlane_
_returns: ofPixels_< PixelType >_
_returns_description: _
_parameters: int plane_
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

###int getTotalBytes()

<!--
_syntax: getTotalBytes()_
_name: getTotalBytes_
_returns: int_
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

###int getWidth()

<!--
_syntax: getWidth()_
_name: getWidth_
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

Get the width of the pixel array.





_description: _

Returns the width of the pixels.





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

Get whether memory has been allocated for an ofPixels object or not

Many operations like copying pixels, etc, automatically allocate
the memory needed, but it's sometimes good to check.





_description: _

Returns whether memory has been allocated for an ofPixels object or not. Many operations like copying pixels, etc, automatically allocate the memory needed, but it's sometimes good to check.





<!----------------------------------------------------------------------------->

###void mirror(vertically, horizontal)

<!--
_syntax: mirror(vertically, horizontal)_
_name: mirror_
_returns: void_
_returns_description: _
_parameters: bool vertically, bool horizontal_
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

Mirror the pixels across the vertical and/or horizontal axis.

Parameters:
vertically Set to true to mirror vertically
horizontal Set to true to mirror horizontal





_description: _

This reflects the pixels across the vertical and/or horizontal axis.





<!----------------------------------------------------------------------------->

###void mirrorTo(&dst, vertically, horizontal)

<!--
_syntax: mirrorTo(&dst, vertically, horizontal)_
_name: mirrorTo_
_returns: void_
_returns_description: _
_parameters: ofPixels_< PixelType > &dst, bool vertically, bool horizontal_
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







_description: _







<!----------------------------------------------------------------------------->

### ofPixels_()

<!--
_syntax: ofPixels_()_
_name: ofPixels__
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

\name Construction And Allocation
\{





_description: _







<!----------------------------------------------------------------------------->

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels__
_returns: _
_returns_description: _
_parameters: const ofPixels_< PixelType > &mom_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels__
_returns: _
_returns_description: _
_parameters: const ofPixels_< SrcType > &mom_
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

###ofPixels_< PixelType > & operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofPixels_< PixelType > &_
_returns_description: _
_parameters: const ofPixels_< PixelType > &mom_
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

###ofPixels_< PixelType > & operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofPixels_< PixelType > &_
_returns_description: _
_parameters: const ofPixels_< SrcType > &mom_
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

###const PixelType & operator[](pos)

<!--
_syntax: operator[](pos)_
_name: operator[]_
_returns: const PixelType &_
_returns_description: _
_parameters: int pos_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Provides access to each channel of each pixel. If you have RGB pixel
data, then you'll have 3 values for each pixel, if you have RGBA,
you'll have 4





_description: _







<!----------------------------------------------------------------------------->

###PixelType & operator[](pos)

<!--
_syntax: operator[](pos)_
_name: operator[]_
_returns: PixelType &_
_returns_description: _
_parameters: int pos_
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

Provides access to each channel of each pixel. If you have RGB pixel data, then you'll have 3 values for each pixel, if you have RGBA, you'll have 4.





<!----------------------------------------------------------------------------->

###bool pasteInto(&dst, x, y)

<!--
_syntax: pasteInto(&dst, x, y)_
_name: pasteInto_
_returns: bool_
_returns_description: _
_parameters: ofPixels_< PixelType > &dst, int x, int y_
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

Paste the ofPixels object into another ofPixels object at the
specified index, copying data from the ofPixels that the method is
being called on to the ofPixels object at `&dst`. If the data being
copied doesn't fit into the destination then the image is cropped.





_description: _

This pastes the ofPixels object into another ofPixels object at the specified index, copying data from the ofPixels that the method is being called on to the ofPixels object at &dst. If the data being copied doesn't fit into the dst then the image is cropped.
~~~~{.cpp}
ofLoadImage(footballPixels, "two.jpg");
ofLoadImage(fujiPixels, "one.jpg");
fujiTex.loadData(footballPixels);
footballTex.loadData(fujiPixels);
footballPixels.pasteInto(fujiPixels, 150, 100); // now fujiPixels is altered
mixtureTex.loadData(fujiPixels);
~~~~
Drawing the three textures here you can see the ball cropped into the mountain:
![crop_demo](ofPixels_crop.png)





<!----------------------------------------------------------------------------->

###reverse_iterator rbegin()

<!--
_syntax: rbegin()_
_name: rbegin_
_returns: reverse_iterator_
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

###const_reverse_iterator rbegin()

<!--
_syntax: rbegin()_
_name: rbegin_
_returns: const_reverse_iterator_
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

###reverse_iterator rend()

<!--
_syntax: rend()_
_name: rend_
_returns: reverse_iterator_
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

###const_reverse_iterator rend()

<!--
_syntax: rend()_
_name: rend_
_returns: const_reverse_iterator_
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

###bool resize(dstWidth, dstHeight, interpMethod = OF_INTERPOLATE_NEAREST_NEIGHBOR)

<!--
_syntax: resize(dstWidth, dstHeight, interpMethod = OF_INTERPOLATE_NEAREST_NEIGHBOR)_
_name: resize_
_returns: bool_
_returns_description: _
_parameters: int dstWidth, int dstHeight, ofInterpolationMethod interpMethod=OF_INTERPOLATE_NEAREST_NEIGHBOR_
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

Resize the ofPixels instance to the dstHeight and dstWidth.

The options for the interpolation methods are as follows:

    OF_INTERPOLATE_NEAREST_NEIGHBOR
    OF_INTERPOLATE_BILINEAR
    OF_INTERPOLATE_BICUBIC





_description: _

This resizes the ofPixels instance to the dstHeight and dstWidth. The options for the interpolation methods are as follows:
OF_INTERPOLATE_NEAREST_NEIGHBOR =1
OF_INTERPOLATE_BILINEAR			=2
OF_INTERPOLATE_BICUBIC			=3





<!----------------------------------------------------------------------------->

###bool resizeTo(&dst, interpMethod = OF_INTERPOLATE_NEAREST_NEIGHBOR)

<!--
_syntax: resizeTo(&dst, interpMethod = OF_INTERPOLATE_NEAREST_NEIGHBOR)_
_name: resizeTo_
_returns: bool_
_returns_description: _
_parameters: ofPixels_< PixelType > &dst, ofInterpolationMethod interpMethod=OF_INTERPOLATE_NEAREST_NEIGHBOR_
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

Resize the ofPixels instance to the size of the ofPixels object passed in dst.

The options for the interpolation methods are as follows:

    OF_INTERPOLATE_NEAREST_NEIGHBOR
    OF_INTERPOLATE_BILINEAR
    OF_INTERPOLATE_BICUBIC





_description: _

This resizes the ofPixels instance to the size of the ofPixels object passed in dst. The options for the interpolation methods are as follows:
OF_INTERPOLATE_NEAREST_NEIGHBOR =1
OF_INTERPOLATE_BILINEAR			=2
OF_INTERPOLATE_BICUBIC			=3





<!----------------------------------------------------------------------------->

###void rotate90(nClockwiseRotations)

<!--
_syntax: rotate90(nClockwiseRotations)_
_name: rotate90_
_returns: void_
_returns_description: _
_parameters: int nClockwiseRotations_
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

crop to a new width and height, this reallocates memory.





<!----------------------------------------------------------------------------->

###void rotate90To(&dst, nClockwiseRotations)

<!--
_syntax: rotate90To(&dst, nClockwiseRotations)_
_name: rotate90To_
_returns: void_
_returns_description: _
_parameters: ofPixels_< PixelType > &dst, int nClockwiseRotations_
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







_description: _







<!----------------------------------------------------------------------------->

###void set(val)

<!--
_syntax: set(val)_
_name: set_
_returns: void_
_returns_description: _
_parameters: PixelType val_
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
\name Set Pixel Data
\{





_description: _







<!----------------------------------------------------------------------------->

###void set(channel, val)

<!--
_syntax: set(channel, val)_
_name: set_
_returns: void_
_returns_description: _
_parameters: int channel, PixelType val_
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

###void setChannel(channel, channelPixels)

<!--
_syntax: setChannel(channel, channelPixels)_
_name: setChannel_
_returns: void_
_returns_description: _
_parameters: int channel, const ofPixels_< PixelType > channelPixels_
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

Set all the pixel data for a single channel, for instance, the
Red pixel values, from an ofPixels object assumed to be a grayscale
representation of the data that should go into that one channel.





_description: _

This sets all the pixel data for a single channel, for instance, the Red pixel values, from an ofPixels object assumed to be a grayscale representation of the data that should go into that one channel.





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

Set the color of the pixel at the x,y location





_description: _

Sets the color of the pixel at the x,y location.





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

Set the color of the pixel at a specific index





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

Set the color of all pixels





_description: _







<!----------------------------------------------------------------------------->

###void setFromAlignedPixels(*newPixels, width, height, channels, stride)

<!--
_syntax: setFromAlignedPixels(*newPixels, width, height, channels, stride)_
_name: setFromAlignedPixels_
_returns: void_
_returns_description: _
_parameters: const PixelType *newPixels, int width, int height, int channels, int stride_
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

###void setFromAlignedPixels(*newPixels, width, height, pixelFormat, stride)

<!--
_syntax: setFromAlignedPixels(*newPixels, width, height, pixelFormat, stride)_
_name: setFromAlignedPixels_
_returns: void_
_returns_description: _
_parameters: const PixelType *newPixels, int width, int height, ofPixelFormat pixelFormat, int stride_
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

###void setFromAlignedPixels(*newPixels, width, height, pixelFormat, strides)

<!--
_syntax: setFromAlignedPixels(*newPixels, width, height, pixelFormat, strides)_
_name: setFromAlignedPixels_
_returns: void_
_returns_description: _
_parameters: const PixelType *newPixels, int width, int height, ofPixelFormat pixelFormat, vector< int > strides_
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

used to copy i420 pixels from gstreamer when (width % 4) != 0





_description: _







<!----------------------------------------------------------------------------->

###void setFromExternalPixels(*newPixels, w, h, channels)

<!--
_syntax: setFromExternalPixels(*newPixels, w, h, channels)_
_name: setFromExternalPixels_
_returns: void_
_returns_description: _
_parameters: PixelType *newPixels, int w, int h, int channels_
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

###void setFromExternalPixels(*newPixels, w, h, pixelFormat)

<!--
_syntax: setFromExternalPixels(*newPixels, w, h, pixelFormat)_
_name: setFromExternalPixels_
_returns: void_
_returns_description: _
_parameters: PixelType *newPixels, int w, int h, ofPixelFormat pixelFormat_
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

###void setFromPixels(*newPixels, w, h, channels)

<!--
_syntax: setFromPixels(*newPixels, w, h, channels)_
_name: setFromPixels_
_returns: void_
_returns_description: _
_parameters: const PixelType *newPixels, int w, int h, int channels_
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

###void setFromPixels(*newPixels, w, h, pixelFormat)

<!--
_syntax: setFromPixels(*newPixels, w, h, pixelFormat)_
_name: setFromPixels_
_returns: void_
_returns_description: _
_parameters: const PixelType *newPixels, int w, int h, ofPixelFormat pixelFormat_
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

###void setFromPixels(*newPixels, w, h, type)

<!--
_syntax: setFromPixels(*newPixels, w, h, type)_
_name: setFromPixels_
_returns: void_
_returns_description: _
_parameters: const PixelType *newPixels, int w, int h, ofImageType type_
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

###void setImageType(imageType)

<!--
_syntax: setImageType(imageType)_
_name: setImageType_
_returns: void_
_returns_description: _
_parameters: ofImageType imageType_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Changes the image type for the ofPixels object


Parameters:
imageType Can be one of the following: OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA





_description: _







<!----------------------------------------------------------------------------->

###void setNumChannels(numChannels)

<!--
_syntax: setNumChannels(numChannels)_
_name: setNumChannels_
_returns: void_
_returns_description: _
_parameters: int numChannels_
_access: public_
_version_started: 0072_
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

###int size()

<!--
_syntax: size()_
_name: size_
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

Get the number of values that the ofPixels object
contains, so an RGB data 400x400 would be 480,000, whereas RGBA data
of the same dimensions would be 640,000.





_description: _

This gives you the number of values that the ofPixels object contains, so an RGB data 400x400 would be 480,000, whereas RGBA data of the same dimensions would be 640,000.





<!----------------------------------------------------------------------------->

###void swap(&pix)

<!--
_syntax: swap(&pix)_
_name: swap_
_returns: void_
_returns_description: _
_parameters: ofPixels_< PixelType > &pix_
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







_description: _







<!----------------------------------------------------------------------------->

###void swapRgb()

<!--
_syntax: swapRgb()_
_name: swapRgb_
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

Swaps the R and B channels of an
image, leaving the G and A channels as is.





_description: _

As implemented right now, this method swaps the R and B channels of an image, leaving the G and A channels as is.





<!----------------------------------------------------------------------------->

### ~ofPixels_()

<!--
_syntax: ~ofPixels_()_
_name: ~ofPixels__
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



###bool bAllocated

<!--
_name: bAllocated_
_type: bool_
_access: private_
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

###int height

<!--
_name: height_
_type: int_
_access: private_
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

###ofPixelFormat pixelFormat

<!--
_name: pixelFormat_
_type: ofPixelFormat_
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

###PixelType * pixels

<!--
_name: pixels_
_type: PixelType *_
_access: private_
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

###bool pixelsOwner

<!--
_name: pixelsOwner_
_type: bool_
_access: private_
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

###int pixelsSize

<!--
_name: pixelsSize_
_type: int_
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

###int width

<!--
_name: width_
_type: int_
_access: private_
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

