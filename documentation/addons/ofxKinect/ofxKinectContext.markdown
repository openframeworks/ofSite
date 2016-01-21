#class ofxKinectContext


<!--
_visible: True_
_advanced: True_
_istemplated: False_
-->

##InlineDescription


wrapper for the freenect context

do not use this directly 





##Description





##Methods



###void buildDeviceList()

<!--
_syntax: buildDeviceList()_
_name: buildDeviceList_
_returns: void_
_returns_description: _
_parameters: _
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

(re)build the list of devices 








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
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


clear the freenect context closes all currently connected devices 







_description: _








<!----------------------------------------------------------------------------->

###void close(&kinect)

<!--
_syntax: close(&kinect)_
_name: close_
_returns: void_
_returns_description: _
_parameters: ofxKinect &kinect_
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

close a kinect device 








_description: _








<!----------------------------------------------------------------------------->

###void closeAll()

<!--
_syntax: closeAll()_
_name: closeAll_
_returns: void_
_returns_description: _
_parameters: _
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

closes all currently connected kinects 








_description: _








<!----------------------------------------------------------------------------->

###freenect_context * getContext()

<!--
_syntax: getContext()_
_name: getContext_
_returns: freenect_context *_
_returns_description: _
_parameters: _
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

get the raw pointer 








_description: _








<!----------------------------------------------------------------------------->

###int getDeviceIndex(id)

<!--
_syntax: getDeviceIndex(id)_
_name: getDeviceIndex_
_returns: int_
_returns_description: _
_parameters: int id_
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


get the deviceList index from an id returns -1 if not found 







_description: _








<!----------------------------------------------------------------------------->

###int getDeviceIndex(serial)

<!--
_syntax: getDeviceIndex(serial)_
_name: getDeviceIndex_
_returns: int_
_returns_description: _
_parameters: string serial_
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


get the deviceList index from an id returns -1 if not found 







_description: _








<!----------------------------------------------------------------------------->

###ofxKinect * getKinect(*dev)

<!--
_syntax: getKinect(*dev)_
_name: getKinect_
_returns: ofxKinect *_
_returns_description: _
_parameters: freenect_device *dev_
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


get the kinect object from a device pointer returns NULL if not found 







_description: _








<!----------------------------------------------------------------------------->

###bool init()

<!--
_syntax: init()_
_name: init_
_returns: bool_
_returns_description: _
_parameters: _
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

init the freenect context 








_description: _








<!----------------------------------------------------------------------------->

###bool isConnected(id)

<!--
_syntax: isConnected(id)_
_name: isConnected_
_returns: bool_
_returns_description: _
_parameters: int id_
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

is a device with this id already connected? 








_description: _








<!----------------------------------------------------------------------------->

###bool isConnected(serial)

<!--
_syntax: isConnected(serial)_
_name: isConnected_
_returns: bool_
_returns_description: _
_parameters: string serial_
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

is a device with this serial already connected? 








_description: _








<!----------------------------------------------------------------------------->

###bool isInited()

<!--
_syntax: isInited()_
_name: isInited_
_returns: bool_
_returns_description: _
_parameters: _
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

is the context inited? 








_description: _








<!----------------------------------------------------------------------------->

###void listDevices(verbose = false)

<!--
_syntax: listDevices(verbose = false)_
_name: listDevices_
_returns: void_
_returns_description: _
_parameters: bool verbose=false_
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

print the device list 








_description: _








<!----------------------------------------------------------------------------->

###int nextAvailableId()

<!--
_syntax: nextAvailableId()_
_name: nextAvailableId_
_returns: int_
_returns_description: _
_parameters: _
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


get the id of the next available device, returns -1 if nothing found 







_description: _








<!----------------------------------------------------------------------------->

###string nextAvailableSerial()

<!--
_syntax: nextAvailableSerial()_
_name: nextAvailableSerial_
_returns: string_
_returns_description: _
_parameters: _
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


get the serial number of the next available device, returns an empty string "" if nothing found 







_description: _








<!----------------------------------------------------------------------------->

###int numAvailable()

<!--
_syntax: numAvailable()_
_name: numAvailable_
_returns: int_
_returns_description: _
_parameters: _
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

get the number of available devices (not connected) 








_description: _








<!----------------------------------------------------------------------------->

###int numConnected()

<!--
_syntax: numConnected()_
_name: numConnected_
_returns: int_
_returns_description: _
_parameters: _
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

get the number of currently connected devices 








_description: _








<!----------------------------------------------------------------------------->

###int numTotal()

<!--
_syntax: numTotal()_
_name: numTotal_
_returns: int_
_returns_description: _
_parameters: _
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

get the total number of devices 








_description: _








<!----------------------------------------------------------------------------->

### ofxKinectContext()

<!--
_syntax: ofxKinectContext()_
_name: ofxKinectContext_
_returns: _
_returns_description: _
_parameters: _
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








_description: _








<!----------------------------------------------------------------------------->

###bool open(&kinect, id = -1)

<!--
_syntax: open(&kinect, id = -1)_
_name: open_
_returns: bool_
_returns_description: _
_parameters: ofxKinect &kinect, int id=-1_
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


open a kinect device an id of -1 will open the first available 







_description: _








<!----------------------------------------------------------------------------->

###bool open(&kinect, serial)

<!--
_syntax: open(&kinect, serial)_
_name: open_
_returns: bool_
_returns_description: _
_parameters: ofxKinect &kinect, string serial_
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

open a kinect device by it's unique serial number 








_description: _








<!----------------------------------------------------------------------------->

### ~ofxKinectContext()

<!--
_syntax: ~ofxKinectContext()_
_name: ~ofxKinectContext_
_returns: _
_returns_description: _
_parameters: _
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








_description: _








<!----------------------------------------------------------------------------->

##Variables



###bool  bInited

<!--
_name: bInited_
_type: bool _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###std::vector<  KinectPair >  deviceList

<!--
_name: deviceList_
_type: std::vector<  KinectPair > _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###freenect_context *  kinectContext

<!--
_name: kinectContext_
_type: freenect_context * _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###std::map< int,  ofxKinect * >  kinects

<!--
_name: kinects_
_type: std::map< int,  ofxKinect * > _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

