## 2D graphics, images and typography

This module contains classes and functions that allow to work with 2d graphics, including drawing 2d shapes, using images both drawing them using the graphics card or manipulate their contents in the computer's memory, and typography.

The most important classes in this module are:

- [ofImage](ofImage.html): allows to load, save and draw images in lots of different image formats, it holds an [ofTexture](../gl/ofTexture.html) which allows to draw the image through the graphics card and an [ofPixels](ofPixels.html) which is also part of this module and contains the pixel information of the image allowing also to do basic transformations on them like cropping, resizing, scaling, iterating through the pixel data...

- [ofPolyline](ofPolyline.html): represents a polyline or polygon and allows to do some operations over them. Although it allows to draw the outline of the data it contains, this class is better used to manipulate polylines and it's used by [ofPath](ofPath.html) to create complex shapes and draw outlines.

- [ofPath](ofPath.html): represents a complex shape formed by one or more outlines, internally it uses [ofPolyline](ofPolyline.html) to represent that data and later decomposes it in [ofMesh](../3d/ofMesh.html) if necesary. It can draw both contours and filled shapes and it's the recommended way to draw 2d shapes in openFrameworks.

- [ofTrueTypeFont](ofTrueTypeFont.html): can load true type fonts in different formats and draw text using the loaded font.

- [ofGraphics](ofGraphics.html): has several utility functions to change the state of the graphics pipeline (like the default color or the blending mode) and allows to draw shapes in immediate mode which can be useful if you want to draw something quickly, for prototipying, instead of using ofPath

The rest of the classes in this module are usually utility classes used by openFrameworks itself to provide the 2d drawing functionality and although they can be useful in some cases in applicaiton code, they are usually not used directly by applications. For example ofBitmapFont is a class that allows openFrameworks to draw a text using a default bitmap font without having to load a TTF file but in order to draw from application code we usually use the `ofDrawBitmapString` function present in [ofGraphics](ofGraphics.html). Or ofCairoRenderer allows OF to draw to a PDF or SVG among other things but it can be easily used through the corresponding functions in [ofGraphics](ofGraphics.html)
