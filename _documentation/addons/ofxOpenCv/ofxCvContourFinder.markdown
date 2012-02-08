#class ofxCvContourFinder


##Description


The contour finder allows you to detect objects in a scene by looking contrast caused by the difference between adjoining pixels. For instance, in the image below, the hand is visible and trackable because the contrast between the wall behind it and the arm is quite distinct:

[img src="contour.png"]

You can make contour detection more robust by by the comparing the current image to a background image and subtracting the background from the current image. This enables you to examine the incoming image without the background image data, reducing the amount of data that needs to be inspected.

The contourFinder requires an ofxCvGrayscaleImage be passed to it, so you'll need to create one either the video or camera feed that you're using. An example of working with a camera is shown here:

~~~~{.cpp}
void contoursApp::setup(){
	
	bLearnBackground = false;
	
    vidGrabber.setVerbose(true);
    vidGrabber.initGrabber(320,240);
	
    colorImg.allocate(320,240);
    grayImage.allocate(320,240);
    grayBg.allocate(320,240);
    grayDiff.allocate(320,240);
}

void contoursApp::update(){
    vidGrabber.grabFrame();
    //do we have a new frame?
    if (vidGrabber.isFrameNew()){
		colorImg.setFromPixels(vidGrabber.getPixelsRef());
        grayImage = colorImg; // convert our color image to a grayscale image
        if (bLearnBackground == true) {
            grayBg = grayImage; // update the background image
            bLearnBackground = false;
        }
		grayDiff.absDiff(grayBg, grayImage);
        grayDiff.threshold(30);
		contourFinder.findContours(grayDiff, 5, (340*240)/4, 4, false, true);
    }
}

void contoursApp::draw(){
	ofSetHexColor(0xffffff);
    colorImg.draw(0, 0, 320, 240);
	grayDiff.draw(0, 240, 320, 240);
    ofRect(320, 0, 320, 240);
    contourFinder.draw(320, 0, 320, 240);
	ofColor c(255, 255, 255);
	for(int i = 0; i < contourFinder.nBlobs; i++) {
		ofRectangle r = contourFinder.blobs.at(i).boundingRect;
		r.x += 320; r.y += 240;
		c.setHsb(i * 64, 255, 255);
		ofSetColor(c);
		ofRect(r);
	}
}

void contoursApp::keyPressed(int key) {
	bLearnBackground = true;
}
~~~~


##Methods



### ofxCvContourFinder()

<!--
_syntax: ofxCvContourFinder()_
_name: ofxCvContourFinder_
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




Constructor.









<!----------------------------------------------------------------------------->

### ~ofxCvContourFinder()

<!--
_syntax: ~ofxCvContourFinder()_
_name: ~ofxCvContourFinder_
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


Destructor.











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




Returns the height of the area that detection is being performed upon.









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





Returns the height of the area that detection is being performed upon.








<!----------------------------------------------------------------------------->

###int findContours(&input, minArea, maxArea, nConsidered, bFindHoles, bUseApproximation = true)

<!--
_syntax: findContours(&input, minArea, maxArea, nConsidered, bFindHoles, bUseApproximation = true)_
_name: findContours_
_returns: int_
_returns_description: _
_parameters: ofxCvGrayscaleImage &input, int minArea, int maxArea, int nConsidered, bool bFindHoles, bool bUseApproximation=true_
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




input
This is an ofxCvGrayscaleImage reference (this is written ofxCvGrayscaleImage&) to a grayscale image that will be searched for blobs. Note that grayscale images only are considered. So if you're using a color image, you'll need to highlight the particular color that you're looking for beforehand. You can do this by looping through the pixels and changing the color values of any pixel with the desired color to white or black, for instance.
minArea
This is the smallest potential blob size as measured in pixels that will be considered as a blob for the application.
maxArea
This is the largest potential blob size as measured in pixels that will be considered as a blob for the application.
nConsidered
This is the maximum number of blobs to consider. This is an important parameter to get right, because you can save yourself a lot of processing time and possibly speed up the performance of your application by pruning this number down. An interface that uses a user's fingers, for instance, needs to look only for 5 points, one for each finger. One that uses a user's hands needs to look only for two points.
bFindHoles
This tells the contour finder to try to determine whether there are holes within any blob detected. This is computationally expensive but sometimes necessary.
bUseApproximation
This tells the contour finder to use approximation and to set the minimum number of points needed to represent a certain blob; for instance, a straight line would be represented by only two points if bUseApproximation is set to true.










<!----------------------------------------------------------------------------->

###void draw()

<!--
_syntax: draw()_
_name: draw_
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



Draws the detected contours at 0, 0.










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






Draws the detected contours into the coordintes passed in.







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



Draws the detected contours at the point passed in with the height and width, scaling as necessary.










<!----------------------------------------------------------------------------->

###void draw(&point)

<!--
_syntax: draw(&point)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPoint &point_
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




Draws the detected contours at the point passed in.









<!----------------------------------------------------------------------------->

###void draw(&rect)

<!--
_syntax: draw(&rect)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &rect_
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




Draws the detected contours into the ofRectangle passed in scaling if necessary.









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





Sets the anchor point as a percentage.








<!----------------------------------------------------------------------------->

###void setAnchorPoint(x, y)

<!--
_syntax: setAnchorPoint(x, y)_
_name: setAnchorPoint_
_returns: void_
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



Sets an anchor point for the drawing. 










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




Resets the anchor point, restoring it to 0,0.









<!----------------------------------------------------------------------------->

###void reset()

<!--
_syntax: reset()_
_name: reset_
_returns: void_
_returns_description: _
_parameters: _
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




The vector ofxCvBlob blobs returns each blob that was found in the image. These should, if all has gone well, correlate to the blobs in previous examples so that you can begin to perform tracking.

~~~~{.cpp}
for(int i = 0; i < contourFinder.nBlobs; i++) {
	ofxCvBlob blob = contourFinder.blobs.at(i);
	// do something fun with blob
}
~~~~

or

~~~~{.cpp}
vector<ofxCvBlob>::iterator bit = contourFinder.blobs.begin();
while( bit != contourFinder.blobs.end())
	ofxCvBlob blob = *(bit);
	// do something with blob
	++bit;
}
~~~~






<!----------------------------------------------------------------------------->

###int nBlobs

<!--
_name: nBlobs_
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


This is an int that returns the number of blobs found by the contour finder.


~~~~{.cpp}
for (int i = 0; i < contourFinder.nBlobs; i++){
    contourFinder.blobs[i].draw(360,540);
}
~~~~








<!----------------------------------------------------------------------------->

###int _width

<!--
_name: _width_
_type: int_
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

###int _height

<!--
_name: _height_
_type: int_
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

###ofxCvGrayscaleImage inputCopy

<!--
_name: inputCopy_
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

###CvMemStorage * contour_storage

<!--
_name: contour_storage_
_type: CvMemStorage *_
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

###CvMemStorage * storage

<!--
_name: storage_
_type: CvMemStorage *_
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

###CvMoments * myMoments

<!--
_name: myMoments_
_type: CvMoments *_
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

###vector< CvSeq * > cvSeqBlobs

<!--
_name: cvSeqBlobs_
_type: vector< CvSeq * >_
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

###ofPoint anchor

<!--
_name: anchor_
_type: ofPoint_
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

###bool bAnchorIsPct

<!--
_name: bAnchorIsPct_
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

