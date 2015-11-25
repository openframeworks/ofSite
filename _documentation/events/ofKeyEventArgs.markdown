#class ofKeyEventArgs


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofEventArgs_
-->

##InlineDescription






##Description

This class is integrated into the openframeworks events system. When a key event (key pressed, key released) happens we record key information inside an object of the class. Used to send event messages. In the new openFrameworks release we can find a very illustrative example about how to use events in openFrameworks.





##Methods



### ofKeyEventArgs()

<!--
_syntax: ofKeyEventArgs()_
_name: ofKeyEventArgs_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

### ofKeyEventArgs(type, key, keycode, scancode, codepoint)

<!--
_syntax: ofKeyEventArgs(type, key, keycode, scancode, codepoint)_
_name: ofKeyEventArgs_
_returns: _
_returns_description: _
_parameters: ofKeyEventArgs::Type type, int key, int keycode, int scancode, unsigned int codepoint_
_access: public_
_version_started: 0.9.0_
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

### ofKeyEventArgs(type, key)

<!--
_syntax: ofKeyEventArgs(type, key)_
_name: ofKeyEventArgs_
_returns: _
_returns_description: _
_parameters: ofKeyEventArgs::Type type, int key_
_access: public_
_version_started: 0.9.0_
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



###unsigned int codepoint

<!--
_name: codepoint_
_type: unsigned int_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The Unicode code point you'd expect if this key combo (including modifier keys) was pressed in a text editor, or -1 for non-printable characters.





_description: _







<!----------------------------------------------------------------------------->

###int  key

<!--
_name: key_
_type: int _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

For special keys, one of OF_KEY_* (@see ofConstants.h). For all other keys, the Unicode code point you'd expect if this key combo (including modifier keys that may be down) was pressed in a text editor (same as codepoint).





_description: _







<!----------------------------------------------------------------------------->

###int keycode

<!--
_name: keycode_
_type: int_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The keycode returned by the windowing system, independent of any modifier keys or keyboard layout settings. For ofAppGLFWWindow this value is one of GLFW_KEY_* (@see glfw3.h) - typically, ASCII representation of the symbol on the physical key, so A key always returns 0x41 even if shift, alt, ctrl are down.





_description: _







<!----------------------------------------------------------------------------->

###int scancode

<!--
_name: scancode_
_type: int_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The raw scan code returned by the keyboard, OS and hardware specific.





_description: _







<!----------------------------------------------------------------------------->

###enum  ofKeyEventArgs::Type type

<!--
_name: type_
_type: enum  ofKeyEventArgs::Type_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

