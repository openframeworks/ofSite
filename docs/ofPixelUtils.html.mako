<%inherit file="_templates/docs.mako" />
___ofPixelUtils___
$$code(lang=c++)
void crop(ofPixels &pix, int x, int y, int width, int height)
$$/code



$$code(lang=c++)
void cropFromTo(ofPixels &frompix, ofPixels &topix, int x, int y, int width, int height)
$$/code



$$code(lang=c++)
void rotate90(ofPixels &pix, int nClockwiseRotations)
$$/code



$$code(lang=c++)
void mirror(ofPixels &pix, bool vertically, bool horizontal)
$$/code



$$code(lang=c++)
bool resize(ofPixels &pix, int dstWidth, int dstHeight, ofInterpolationMethod interpMethod=OF_INTERPOLATE_NEAREST_NEIGHBOR)
$$/code



$$code(lang=c++)
bool resize(ofPixels &pix, ofPixels &dst, ofInterpolationMethod interpMethod=OF_INTERPOLATE_NEAREST_NEIGHBOR)
$$/code



$$code(lang=c++)
float bicubicInterpolate(const int *patch, float x, float y, float x2, float y2, float x3, float y3)
$$/code



