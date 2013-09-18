#class ofCoreEvents


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

Class for the core events in oF. This is used inside oF to create the global var ofEvents that can be used to register any class to the core events setup, update, draw, exit, keyPressed, keyReleased, mousePressed, mouseReleased, mouseDragged, mouseMoved and windowResize.

To do so use the functions ofAddListener and ofRemoveListener.

For a complete example take a look at the advancedEventsExample





##Methods



###void disable()

<!--
_syntax: disable()_
_name: disable_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
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

###void enable()

<!--
_syntax: enable()_
_name: enable_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
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



###ofEvent< ofAudioEventArgs > audioReceived

<!--
_name: audioReceived_
_type: ofEvent< ofAudioEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent< ofAudioEventArgs > audioRequested

<!--
_name: audioRequested_
_type: ofEvent< ofAudioEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent< ofEventArgs > draw

<!--
_name: draw_
_type: ofEvent< ofEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent< ofEventArgs > exit

<!--
_name: exit_
_type: ofEvent< ofEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent fileDragEvent

<!--
_name: fileDragEvent_
_type: ofEvent_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent< ofKeyEventArgs > keyPressed

<!--
_name: keyPressed_
_type: ofEvent< ofKeyEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent< ofKeyEventArgs > keyReleased

<!--
_name: keyReleased_
_type: ofEvent< ofKeyEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent messageEvent

<!--
_name: messageEvent_
_type: ofEvent_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent< ofMouseEventArgs > mouseDragged

<!--
_name: mouseDragged_
_type: ofEvent< ofMouseEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent< ofMouseEventArgs > mouseMoved

<!--
_name: mouseMoved_
_type: ofEvent< ofMouseEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent< ofMouseEventArgs > mousePressed

<!--
_name: mousePressed_
_type: ofEvent< ofMouseEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent< ofMouseEventArgs > mouseReleased

<!--
_name: mouseReleased_
_type: ofEvent< ofMouseEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent< ofEventArgs > setup

<!--
_name: setup_
_type: ofEvent< ofEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent touchCancelled

<!--
_name: touchCancelled_
_type: ofEvent_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent touchDoubleTap

<!--
_name: touchDoubleTap_
_type: ofEvent_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent touchDown

<!--
_name: touchDown_
_type: ofEvent_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent touchMoved

<!--
_name: touchMoved_
_type: ofEvent_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent touchUp

<!--
_name: touchUp_
_type: ofEvent_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent< ofEventArgs > update

<!--
_name: update_
_type: ofEvent< ofEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent windowEntered

<!--
_name: windowEntered_
_type: ofEvent_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofEvent< ofResizeEventArgs > windowResized

<!--
_name: windowResized_
_type: ofEvent< ofResizeEventArgs >_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

