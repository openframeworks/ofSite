#class ofPixels_


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




##Methods



### ofPixels_()

<!--
_syntax: ofPixels_()_
_name: ofPixels_
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

### ~ofPixels_()

<!--
_syntax: ~ofPixels_()_
_name: ~ofPixels_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

###ofPixels_ operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofPixels__
_returns_description: _
_parameters: const ofPixels_< PixelType > &mom_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

###ofPixels_ operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofPixels__
_returns_description: _
_parameters: const ofPixels_< SrcType > &mom_
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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void allocate(w, h, type)

<!--
_syntax: allocate(w, h, type)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int w, int h, ofPixelFormat type_
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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

This crops the pixels to a new width and height. As a word of caution this reallocates memory and can be a bit expensive if done a lot.






<!----------------------------------------------------------------------------->

###void cropTo(&toPix, x, y, _width, _height)

<!--
_syntax: cropTo(&toPix, x, y, _width, _height)_
_name: cropTo_
_returns: void_
_returns_description: _
_parameters: ofPixels_< PixelType > &toPix, int x, int y, int _width, int _height_
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

This crops the pixels into the ofPixels reference passed in by toPix. at the x and y and with the new width and height. As a word of caution this reallocates memory and can be a bit expensive if done a lot.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

crop to a new width and height, this reallocates memory.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

This reflects the pixels across the vertical and/or horizontal axis.






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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

This resizes the ofPixels instance to the size of the ofPixels object passed in dst. The options for the interpolation methods are as follows:
OF_INTERPOLATE_NEAREST_NEIGHBOR =1
OF_INTERPOLATE_BILINEAR			=2
OF_INTERPOLATE_BICUBIC			=3






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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

As implemented right now, this method swaps the R and B channels of an image, leaving the G and A channels as is.






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

This clears all the data from the ofPixels objects. After calling this you'll need to allocate the ofPixels object again to use it.






<!----------------------------------------------------------------------------->

###const PixelType * getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: const PixelType *_
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

This returns a raw pointer to the pixel data. Changing this will change the value of the pixels in the ofPixels object. One way to inspect the values returns in this pointer would be:
~~~~{.cpp}
unsigned char* pixPtr = pix.getPixels();
while(pixPtr) {
	// for RGB pixels there will be 3 values for each pixel
	// for RGBA pixels there will be 4
	++pixPtr;
}
~~~~






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

This method tells you want pixel index an x, y pair would be at in the index, for instance:
~~~~{.cpp}
ofColor yellow = ofColor::yellow;
int ind = pix.getPixelIndex(mouseX, mouseY);
pix.setPixel(ind, yellow);
~~~~






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

This method returns the ofColor that the pixels contains at an x, y pair:
~~~~{.cpp}
ofColor c = pix.getColor(mouseX, mouseY);
~~~~






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

Sets the color of the pixel at the x,y location.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Provides access to each channel of each pixel. If you have RGB pixel data, then you'll have 3 values for each pixel, if you have RGBA, you'll have 4.






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

Returns whether memory has been allocated for an ofPixels object or not. Many operations like copying pixels, etc, automatically allocate the memory needed, but it's sometimes good to check.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the width of the pixels.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the height of the pixels.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the number of the pixels.






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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

This is how large each channel of a pixels is, ofPixels objects that store pixel data as unsigned char are smaller than  ofPixels objects that store pixel data as floats.
This returns bytes, not bits, so you'll probably see ofPixels<float> as 4 and ofPixels<unsigned char> as 1.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

This is how large each channel of a pixels is, ofPixels objects that store pixel data as unsigned char are smaller than  ofPixels objects that store pixel data as floats.
This returns bit, not bytes, so you'll probably see ofPixels<float> as 32 and ofPixels<unsigned char> as 8.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

This returns the number of channels that the ofPixels object contains. RGB is 3 channels, RGBA is 4, and grayscale is 1.






<!----------------------------------------------------------------------------->

###ofPixels_ getChannel(channel)

<!--
_syntax: getChannel(channel)_
_name: getChannel_
_returns: ofPixels__
_returns_description: _
_parameters: int channel_
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

This returns a single channel, for instance, the Red pixel values, from the ofPixels object, this gives you a grayscale representation of that one channel.
~~~~{.cpp}
	ofPixels rpix = pix.getChannel(0);
	ofPixels gpix = pix.getChannel(1);
	ofPixels bpix = pix.getChannel(2);
~~~~






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

This sets all the pixel data for a single channel, for instance, the Red pixel values, from an ofPixels object assumed to be a grayscale representation of the data that should go into that one channel.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns what image type the ofPixels object is.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

This gives you the number of values that the ofPixels object contains, so an RGB data 400x400 would be 480,000, whereas RGBA data of the same dimensions would be 640,000.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_()

<!--
_syntax: ofPixels_()_
_name: ofPixels_
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

### ~ofPixels_()

<!--
_syntax: ~ofPixels_()_
_name: ~ofPixels_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_()

<!--
_syntax: ofPixels_()_
_name: ofPixels_
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

### ~ofPixels_()

<!--
_syntax: ~ofPixels_()_
_name: ~ofPixels_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_()

<!--
_syntax: ofPixels_()_
_name: ofPixels_
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

### ~ofPixels_()

<!--
_syntax: ~ofPixels_()_
_name: ~ofPixels_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_()

<!--
_syntax: ofPixels_()_
_name: ofPixels_
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

### ~ofPixels_()

<!--
_syntax: ~ofPixels_()_
_name: ~ofPixels_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_()

<!--
_syntax: ofPixels_()_
_name: ofPixels_
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

### ~ofPixels_()

<!--
_syntax: ~ofPixels_()_
_name: ~ofPixels_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_()

<!--
_syntax: ofPixels_()_
_name: ofPixels_
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

### ~ofPixels_()

<!--
_syntax: ~ofPixels_()_
_name: ~ofPixels_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_()

<!--
_syntax: ofPixels_()_
_name: ofPixels_
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

### ~ofPixels_()

<!--
_syntax: ~ofPixels_()_
_name: ~ofPixels_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_()

<!--
_syntax: ofPixels_()_
_name: ofPixels_
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

### ~ofPixels_()

<!--
_syntax: ~ofPixels_()_
_name: ~ofPixels_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_()

<!--
_syntax: ofPixels_()_
_name: ofPixels_
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

### ~ofPixels_()

<!--
_syntax: ~ofPixels_()_
_name: ~ofPixels_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_()

<!--
_syntax: ofPixels_()_
_name: ofPixels_
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

### ~ofPixels_()

<!--
_syntax: ~ofPixels_()_
_name: ~ofPixels_
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

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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

_description: _







<!----------------------------------------------------------------------------->

### ofPixels_(&mom)

<!--
_syntax: ofPixels_(&mom)_
_name: ofPixels_
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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

##Variables



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

_description: _







<!----------------------------------------------------------------------------->

###int channels

<!--
_name: channels_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

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

_description: _







<!----------------------------------------------------------------------------->

