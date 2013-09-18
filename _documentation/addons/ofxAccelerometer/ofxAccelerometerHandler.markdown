#class ofxAccelerometerHandler


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

This addon allows you access to the acceleromete on devices that support one. At the moment both Android and iOS are supported. 

To get values from the accelerometer in polling mode, request them:
~~~~{.cpp}

void testApp::setup(){
	ofxAccelerometer.setup(); // this initializes the accelerometer
}

void testApp::update()
{
  ofVec3f accel = ofxAccelerometer.getForce();
  ofVec2f orientation = ofxAccelerometer.getOrientation();
}
~~~~

To register an event handler for the accelerometer values changing, do something like the following:

~~~~{.cpp}
ofAddListener(ofxAccelerometer.accelChanged,this,&ofApp::accelerationChanged);
~~~~





##Methods



###void exit()

<!--
_syntax: exit()_
_name: exit_
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








_description: _


Stops ofxAccelerometer from receiving updates from the underlying system.







<!----------------------------------------------------------------------------->

###ofPoint & getForce()

<!--
_syntax: getForce()_
_name: getForce_
_returns: ofPoint &_
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


Gets the current smoothed accelerometer data (value in number of g's (1g = gravity, 9.8m/s^2). The smoothing prevents sudden spikes but can potentially make detecting gestures or other sudden moments difficult.







<!----------------------------------------------------------------------------->

###GLfloat * getMatrix()

<!--
_syntax: getMatrix()_
_name: getMatrix_
_returns: GLfloat *_
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


This returns a 3x3 matrix with the following values set:

First column is gravity vector.
Second column as an arbitrary vector in the plane perpendicular to the gravity vector {Gx, Gy, Gz} defined by by the equation "Gx * x + Gy * y + Gz * z = 0" in which we arbitrarily set x=0 and y=1.
Third column as the cross product of the first two.







<!----------------------------------------------------------------------------->

###ofPoint & getOrientation()

<!--
_syntax: getOrientation()_
_name: getOrientation_
_returns: ofPoint &_
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


Gets current orientation in degrees as an ofPoint (x: pitch, y: roll, z: not used).

![yaw-pitch](yaw_axis_corrected.png)







<!----------------------------------------------------------------------------->

###ofPoint & getRawAcceleration()

<!--
_syntax: getRawAcceleration()_
_name: getRawAcceleration_
_returns: ofPoint &_
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


Gets current real accelerometer data (value in number of g's (1g = gravity, 9.8m/s^2)







<!----------------------------------------------------------------------------->

### ofxAccelerometerHandler()

<!--
_syntax: ofxAccelerometerHandler()_
_name: ofxAccelerometerHandler_
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

###void setCallback(new_callback)

<!--
_syntax: setCallback(new_callback)_
_name: setCallback_
_returns: void_
_returns_description: _
_parameters: ofxAccelCB new_callback_
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


This allows you to set a callback that can be called whenever motion is detected.







<!----------------------------------------------------------------------------->

###void setForceSmoothing(forceSmoothing)

<!--
_syntax: setForceSmoothing(forceSmoothing)_
_name: setForceSmoothing_
_returns: void_
_returns_description: _
_parameters: float forceSmoothing_
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


This sets amount of smoothing on force data (0: no smooth, 1:very smooth)







<!----------------------------------------------------------------------------->

###void setOrientationSmoothing(orientationSmoothing)

<!--
_syntax: setOrientationSmoothing(orientationSmoothing)_
_name: setOrientationSmoothing_
_returns: void_
_returns_description: _
_parameters: float orientationSmoothing_
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


This sets amount of smoothing on orientation data (0: no smooth, 1:very smooth)







<!----------------------------------------------------------------------------->

###void setup()

<!--
_syntax: setup()_
_name: setup_
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








_description: _


You must call setup() before polling ofxAccelerometer for force or orientation values.







<!----------------------------------------------------------------------------->

###void update(x, y, z)

<!--
_syntax: update(x, y, z)_
_name: update_
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








_description: _


This is called by your underlying OS to update all the orientation matrices.







<!----------------------------------------------------------------------------->

###void updateMatrix()

<!--
_syntax: updateMatrix()_
_name: updateMatrix_
_returns: void_
_returns_description: _
_parameters: _
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

###void updateOrientation()

<!--
_syntax: updateOrientation()_
_name: updateOrientation_
_returns: void_
_returns_description: _
_parameters: _
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

##Variables



###ofEvent< ofPoint > accelChanged

<!--
_name: accelChanged_
_type: ofEvent< ofPoint >_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint accelForce

<!--
_name: accelForce_
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

###ofPoint accelOrientation

<!--
_name: accelOrientation_
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

###ofPoint accelReal

<!--
_name: accelReal_
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

###ofxAccelCB callback

<!--
_name: callback_
_type: ofxAccelCB_
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

###float forceSmoothing

<!--
_name: forceSmoothing_
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

###GLfloat matrix

<!--
_name: matrix_
_type: GLfloat_
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

###bool matrixDirty

<!--
_name: matrixDirty_
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

###bool orientDirty

<!--
_name: orientDirty_
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

###ofPoint orientation

<!--
_name: orientation_
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

###float orientationSmoothing

<!--
_name: orientationSmoothing_
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

