#class ofxCvHaarFinder


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

ofxCvHaarFinder allows you to check an image for a match to a Haar classifier. The Haar Classifier is a data file generated from a training process where an application is "taught" how to recognize something in different contexts. This can be things like recognizing whether a certain sound is a word being spoken by a user, whether a gesture is a certain shape, or, in the image shown below, whether a pattern of pixels constitute a face.

![face detection](face_detection.jpg "Face detection on a photograph")

A very basic set-up of an application using ofxCvHaarFinder would look like so:

~~~~{.cpp}
app::setup() {
   haarFinder.setup("haarcascade.xml"); // must be in /data/
}

app::update() {
   haarFinder.findHaarObjects(imageToExamine);
}

app::draw() {
  for(int i = 0; i < haarFinder.blobs.size(); i++) {
     ofRect( haarFinder.blobs[i].boundingRect );
  }
}

~~~~





##Methods



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








_description: _


Draws any detected objects to the screen with a rectangle, like so:

![Draw faces](draw_facedetection.jpg "Detecting faces.")







<!----------------------------------------------------------------------------->

###int findHaarObjects(&input, minWidth = 0, minHeight = 0)

<!--
_syntax: findHaarObjects(&input, minWidth = 0, minHeight = 0)_
_name: findHaarObjects_
_returns: int_
_returns_description: _
_parameters: ofImage &input, int minWidth=0, int minHeight=0_
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


Takes an input ofImage object and allows you to set the minimum width and height of areas that should be returned.

~~~~{.cpp}
camera.grabFrame();
if(camera.isFrameNew())
{
	img.setFromPixels(grab.getPixelsRef());
	finder.findHaarObjects(img);
}
~~~~







<!----------------------------------------------------------------------------->

###int findHaarObjects(&input, minWidth = 0, minHeight = 0)

<!--
_syntax: findHaarObjects(&input, minWidth = 0, minHeight = 0)_
_name: findHaarObjects_
_returns: int_
_returns_description: _
_parameters: const ofxCvGrayscaleImage &input, int minWidth=0, int minHeight=0_
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


Takes an input ofxCvGrayscaleImage object and allows you to set the minimum width and height of areas that should be returned.







<!----------------------------------------------------------------------------->

###int findHaarObjects(&input, &roi, minWidth = 0, minHeight = 0)

<!--
_syntax: findHaarObjects(&input, &roi, minWidth = 0, minHeight = 0)_
_name: findHaarObjects_
_returns: int_
_returns_description: _
_parameters: const ofxCvGrayscaleImage &input, ofRectangle &roi, int minWidth=0, int minHeight=0_
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


Takes an input ofxCvGrayscaleImage object and allows you to set the minimum width and height of areas that should be returned and a region of interest as an ofRectangle that you would like to limit haar finding to.

~~~~{.cpp}
colorImg.setFromPixels(vidGrabber.getPixelsRef());
grayImage = colorImg; // convert our color image to a grayscale image

faceFinder.findHaarObjects(grayImage);

for(int i = 0; i < faceFinder.blobs.size(); i++) {
	ofRectangle roi = faceFinder.blobs[i].boundingRect;
	eyeFinder.findHaarObjects(grayImage, roi);
}
~~~~







<!----------------------------------------------------------------------------->

###int findHaarObjects(&, x, y, w, h, minWidth = 0, minHeight = 0)

<!--
_syntax: findHaarObjects(&, x, y, w, h, minWidth = 0, minHeight = 0)_
_name: findHaarObjects_
_returns: int_
_returns_description: _
_parameters: const ofxCvGrayscaleImage &, int x, int y, int w, int h, int minWidth=0, int minHeight=0_
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


Takes an input ofxCvGrayscaleImage object and allows you to set the minimum width and height of areas that should be returned and a region of interest as an ofRectangle that you would like to limit haar finding to.







<!----------------------------------------------------------------------------->

###int findHaarObjects(&input, minWidth = 0, minHeight = 0)

<!--
_syntax: findHaarObjects(&input, minWidth = 0, minHeight = 0)_
_name: findHaarObjects_
_returns: int_
_returns_description: _
_parameters: ofPixels &input, int minWidth=0, int minHeight=0_
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


Takes an input ofPixels object and allows you to set the minimum width and height of areas that should be returned.







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








_description: _


Returns the height of the image area that is being examined.







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








_description: _


Returns the width of the image area that is being examined.







<!----------------------------------------------------------------------------->

### ofxCvHaarFinder()

<!--
_syntax: ofxCvHaarFinder()_
_name: ofxCvHaarFinder_
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


Constructor.







<!----------------------------------------------------------------------------->

### ofxCvHaarFinder(&finder)

<!--
_syntax: ofxCvHaarFinder(&finder)_
_name: ofxCvHaarFinder_
_returns: _
_returns_description: _
_parameters: const ofxCvHaarFinder &finder_
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


Copy constructor.







<!----------------------------------------------------------------------------->

###void setNeighbors(neighbors)

<!--
_syntax: setNeighbors(neighbors)_
_name: setNeighbors_
_returns: void_
_returns_description: _
_parameters: unsigned neighbors_
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


Minimum number (minus 1) of neighbor rectangles that makes up an object. All the groups of a smaller number of rectangles than min_neighbors-1 are rejected. If min_neighbors is 0, the function does not any grouping at all and returns all the detected candidate rectangles, that might be useful if you want to do a customized grouping.







<!----------------------------------------------------------------------------->

###void setScaleHaar(scaleHaar)

<!--
_syntax: setScaleHaar(scaleHaar)_
_name: setScaleHaar_
_returns: void_
_returns_description: _
_parameters: float scaleHaar_
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

###void setup(haarFile)

<!--
_syntax: setup(haarFile)_
_name: setup_
_returns: void_
_returns_description: _
_parameters: string haarFile_
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


This loads a Haar cascade file into the finder. This needs to be done before the Haar finder can be used with images.







<!----------------------------------------------------------------------------->

### ~ofxCvHaarFinder()

<!--
_syntax: ~ofxCvHaarFinder()_
_name: ~ofxCvHaarFinder_
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


Destructor.







<!----------------------------------------------------------------------------->

##Variables



###ofxCvBlob blobs

<!--
_name: blobs_
_type: ofxCvBlob_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


Provides access to the all the blobs detected in the last run of findHaarObjects() via a vector<ofxCvBlob>.







<!----------------------------------------------------------------------------->

###CvHaarClassifierCascade * cascade

<!--
_name: cascade_
_type: CvHaarClassifierCascade *_
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

###string haarFile

<!--
_name: haarFile_
_type: string_
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

###ofxCvGrayscaleImage img

<!--
_name: img_
_type: ofxCvGrayscaleImage_
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

###unsigned neighbors

<!--
_name: neighbors_
_type: unsigned_
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

###float scaleHaar

<!--
_name: scaleHaar_
_type: float_
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

