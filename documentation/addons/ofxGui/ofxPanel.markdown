#class ofxPanel


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofxGuiGroup_
-->

##InlineDescription






##Description





##Methods



###void generateDraw()

<!--
_syntax: generateDraw()_
_name: generateDraw_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
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

###void loadIcons()

<!--
_syntax: loadIcons()_
_name: loadIcons_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
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

###bool mouseReleased(&args)

<!--
_syntax: mouseReleased(&args)_
_name: mouseReleased_
_returns: bool_
_returns_description: _
_parameters: ofMouseEventArgs &args_
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

### ofxPanel()

<!--
_syntax: ofxPanel()_
_name: ofxPanel_
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

### ofxPanel(&parameters, &filename, x, y)

<!--
_syntax: ofxPanel(&parameters, &filename, x, y)_
_name: ofxPanel_
_returns: _
_returns_description: _
_parameters: const ofParameterGroup &parameters, const string &filename, float x, float y_
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

###void render()

<!--
_syntax: render()_
_name: render_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
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

###bool setValue(mx, my, bCheck)

<!--
_syntax: setValue(mx, my, bCheck)_
_name: setValue_
_returns: bool_
_returns_description: _
_parameters: float mx, float my, bool bCheck_
_access: protected_
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

###ofxPanel * setup(&collectionName, &filename, x, y)

<!--
_syntax: setup(&collectionName, &filename, x, y)_
_name: setup_
_returns: ofxPanel *_
_returns_description: _
_parameters: const string &collectionName, const string &filename, float x, float y_
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

collectionName is a title that will appear at the top of the panel.

Filename is the name of the xml file that will be used to read and write the panel settings. The default is "settings.xml" and this will be written to the root of your data folder. This file gets written when you click on the save icon in the top-right corner of the panel.

x and y positions define where on-screen the panel will be drawn. Default is 10 pixels down and to the right of the top-right corner of your app.





<!----------------------------------------------------------------------------->

###ofxPanel * setup(&parameters, &filename, x, y)

<!--
_syntax: setup(&parameters, &filename, x, y)_
_name: setup_
_returns: ofxPanel *_
_returns_description: _
_parameters: const ofParameterGroup &parameters, const string &filename, float x, float y_
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

### ~ofxPanel()

<!--
_syntax: ~ofxPanel()_
_name: ~ofxPanel_
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

##Variables



###bool  bGrabbed

<!--
_name: bGrabbed_
_type: bool _
_access: private_
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

###ofPoint  grabPt

<!--
_name: grabPt_
_type: ofPoint _
_access: private_
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

###ofRectangle  loadBox

<!--
_name: loadBox_
_type: ofRectangle _
_access: private_
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

###ofImage  loadIcon

<!--
_name: loadIcon_
_type: ofImage _
_access: private_
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

###ofEvent< void >  loadPressedE

<!--
_name: loadPressedE_
_type: ofEvent< void > _
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

###ofRectangle  saveBox

<!--
_name: saveBox_
_type: ofRectangle _
_access: private_
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

###ofImage  saveIcon

<!--
_name: saveIcon_
_type: ofImage _
_access: private_
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

###ofEvent< void >  savePressedE

<!--
_name: savePressedE_
_type: ofEvent< void > _
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

