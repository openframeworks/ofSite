#class ofPixels_


##Description





##Methods



### ofPixels_()

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



_description: _







### ~ofPixels_()

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



_description: _







### ofPixels_(&mom)

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



_description: _







###ofPixels_ operator=(&mom)

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



_description: _







### ofPixels_(&mom)

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



_description: _







###ofPixels_ operator=(&mom)

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



_description: _







###void allocate(w, h, channels)

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



_description: _







###void allocate(w, h, type)

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



_description: _







###void allocate(w, h, type)

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



_description: _







###void set(val)

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



_description: _







###void set(channel, val)

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



_description: _







###void setFromPixels(*newPixels, w, h, channels)

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



_description: _







###void setFromPixels(*newPixels, w, h, type)

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



_description: _







###void setFromExternalPixels(*newPixels, w, h, channels)

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



_description: _







###void setFromAlignedPixels(*newPixels, width, height, channels, stride)

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



_description: _







###void crop(x, y, width, height)

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



_description: _







###void cropTo(&toPix, x, y, _width, _height)

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



_description: _







###void rotate90(nClockwiseRotations)

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



_description: _







###void mirror(vertically, horizontal)

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



_description: _







###bool resize(dstWidth, dstHeight, interpMethod = OF_INTERPOLATE_NEAREST_NEIGHBOR)

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



_description: _







###bool resizeTo(&dst, interpMethod = OF_INTERPOLATE_NEAREST_NEIGHBOR)

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



_description: _







###bool pasteInto(&dst, x, y)

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



_description: _







###void swapRgb()

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



_description: _







###void clear()

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



_description: _







###const PixelType * getPixels()

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



_description: _







###int getPixelIndex(x, y)

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



_description: _







###ofColor_ getColor(x, y)

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



_description: _







###void setColor(x, y, color)

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



_description: _







###PixelType & operator[](pos)

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



_description: _







###bool isAllocated()

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



_description: _







###int getWidth()

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



_description: _







###int getHeight()

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



_description: _







###int getBytesPerPixel()

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



_description: _







###int getBitsPerPixel()

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



_description: _







###int getBytesPerChannel()

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



_description: _







###int getBitsPerChannel()

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



_description: _







###int getNumChannels()

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



_description: _







###ofPixels_ getChannel(channel)

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



_description: _







###void setChannel(channel, channelPixels)

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



_description: _







###ofImageType getImageType()

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



_description: _







###int size()

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



_description: _







###float bicubicInterpolate(*patch, x, y, x2, y2, x3, y3)

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



_description: _







###void copyFrom(&mom)

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



_description: _







###void copyFrom(&mom)

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



_description: _







##Variables



###PixelType * pixels

_name: pixels_

_type: PixelType *_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###int width

_name: width_

_type: int_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###int height

_name: height_

_type: int_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###int channels

_name: channels_

_type: int_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###bool bAllocated

_name: bAllocated_

_type: bool_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###bool pixelsOwner

_name: pixelsOwner_

_type: bool_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







