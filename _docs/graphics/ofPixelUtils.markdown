#class ofPixelUtils

Example



Reference



Methods



//----------------------

##void crop(ofPixels &pix, int x, int y, int width, int height)

_syntax: crop(ofPixels &pix, int x, int y, int width, int height)_

_name: crop_

_returns: void_

_parameters: int, int, int, int_



_description: _















//----------------------

##void cropFromTo(ofPixels &frompix, ofPixels &topix, int x, int y, int width, int height)

_syntax: cropFromTo(ofPixels &frompix, ofPixels &topix, int x, int y, int width, int height)_

_name: cropFromTo_

_returns: void_

_parameters: int, int, int, int_



_description: _















//----------------------

##void rotate90(ofPixels &pix, int nClockwiseRotations)

_syntax: rotate90(ofPixels &pix, int nClockwiseRotations)_

_name: rotate90_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void mirror(ofPixels &pix, bool vertically, bool horizontal)

_syntax: mirror(ofPixels &pix, bool vertically, bool horizontal)_

_name: mirror_

_returns: void_

_parameters: bool, bool_



_description: _















//----------------------

##bool resize(ofPixels &pix, int dstWidth, int dstHeight, ofInterpolationMethod interpMethod=OF_INTERPOLATE_NEAREST_NEIGHBOR)

_syntax: resize(ofPixels &pix, int dstWidth, int dstHeight, ofInterpolationMethod interpMethod=OF_INTERPOLATE_NEAREST_NEIGHBOR)_

_name: resize_

_returns: bool_

_parameters: int, int,  = OF_INTERPOLATE_NEAREST_NEIGHBOR_



_description: _















//----------------------

##bool resize(ofPixels &pix, ofPixels &dst, ofInterpolationMethod interpMethod=OF_INTERPOLATE_NEAREST_NEIGHBOR)

_syntax: resize(ofPixels &pix, ofPixels &dst, ofInterpolationMethod interpMethod=OF_INTERPOLATE_NEAREST_NEIGHBOR)_

_name: resize_

_returns: bool_

_parameters:  = OF_INTERPOLATE_NEAREST_NEIGHBOR_



_description: _















//----------------------

##float bicubicInterpolate(const int *patch, float x, float y, float x2, float y2, float x3, float y3)

_syntax: bicubicInterpolate(const int *patch, float x, float y, float x2, float y2, float x3, float y3)_

_name: bicubicInterpolate_

_returns: float_

_parameters: const int *, float, float, float, float, float, float_



_description: _















