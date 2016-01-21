#class ofSerialDeviceInfo


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

Describes a Serial device, including ID, name and path.





##Description

This describes a Serial device, what ID it has, what name it has, and the path to the device.





##Methods



###int getDeviceID()

<!--
_syntax: getDeviceID()_
_name: getDeviceID_
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

Gets the ID of the device

Example: `0`,`1`,`2`,`3` etc.


Returns: the device ID.





_description: _







<!----------------------------------------------------------------------------->

###string getDeviceName()

<!--
_syntax: getDeviceName()_
_name: getDeviceName_
_returns: string_
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

Gets the name of the device

Example: `usbdevice-a440` or `COM4`.


Returns: the device name.





_description: _







<!----------------------------------------------------------------------------->

###string getDevicePath()

<!--
_syntax: getDevicePath()_
_name: getDevicePath_
_returns: string_
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

Gets the path to the device

Example: `/dev/tty.cu/usbdevice-a440`.


Returns: the device path.





_description: _







<!----------------------------------------------------------------------------->

### ofSerialDeviceInfo(devicePathIn, deviceNameIn, deviceIDIn)

<!--
_syntax: ofSerialDeviceInfo(devicePathIn, deviceNameIn, deviceIDIn)_
_name: ofSerialDeviceInfo_
_returns: _
_returns_description: _
_parameters: string devicePathIn, string deviceNameIn, int deviceIDIn_
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

 Construct an ofSerialDeviceInfo with parameters.

Parameters:
devicePathIn The path to the device.
deviceNameIn The name of the device.
deviceIDIn The ID of the device.





_description: _







<!----------------------------------------------------------------------------->

### ofSerialDeviceInfo()

<!--
_syntax: ofSerialDeviceInfo()_
_name: ofSerialDeviceInfo_
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

 Construct an undefined serial device.





_description: _







<!----------------------------------------------------------------------------->

##Variables



###int deviceID

<!--
_name: deviceID_
_type: int_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

The device ID (e.g. 0, 1, 2, 3, etc).





_description: _







<!----------------------------------------------------------------------------->

###string deviceName

<!--
_name: deviceName_
_type: string_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

The device name (e.g. usbdevice-a440 / COM4).





_description: _







<!----------------------------------------------------------------------------->

###string devicePath

<!--
_name: devicePath_
_type: string_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

The device path (e.g /dev/tty.cu/usbdevice-a440).





_description: _







<!----------------------------------------------------------------------------->

