#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###void ofSystemAlertDialog(errorMessage)

<!--
_syntax: ofSystemAlertDialog(errorMessage)_
_name: ofSystemAlertDialog_
_returns: void_
_returns_description: _
_parameters: string errorMessage_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

show an error message in an alert dialog box





_description: _







<!----------------------------------------------------------------------------->

###ofFileDialogResult ofSystemLoadDialog(windowTitle = "", bFolderSelection = false, defaultPath = "")

<!--
_syntax: ofSystemLoadDialog(windowTitle = "", bFolderSelection = false, defaultPath = "")_
_name: ofSystemLoadDialog_
_returns: ofFileDialogResult_
_returns_description: _
_parameters: string windowTitle, bool bFolderSelection=false, string defaultPath_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

show a file load dialog box

Parameters:
windowTitle optional window title string, ie. "Load background image"
bFolderSelection set to true to allow folder selection
defaultPath optional default directory path to start the dialog in, ie. ofFilePath::getUserHomeDir()
\return dialog result with selection (if any)





_description: _

~~~~{.cpp}
ofFileDialogResult result = ofSystemLoadDialog("Load file");
if(result.bSuccess) {
  string path = result.getPath();
  // load your file at `path`
}
~~~~

See also: [ofFileDialogResult](ofFileDialogResult).





<!----------------------------------------------------------------------------->

###ofFileDialogResult ofSystemSaveDialog(defaultName, messageName)

<!--
_syntax: ofSystemSaveDialog(defaultName, messageName)_
_name: ofSystemSaveDialog_
_returns: ofFileDialogResult_
_returns_description: _
_parameters: string defaultName, string messageName_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

show a file save dialog box

Parameters:
defaultName suggested filename to start dialog, ie "screenshot.png"
messageName descriptive text for the save action, ie. "Saving screenshot as"
\return dialog result with selection (if any)





_description: _

~~~~{.cpp}
ofFileDialogResult result = ofSystemSaveDialog("default.jpg", "Save");
if(result.bSuccess) {
  string path = result.getPath();
  // save your file to `path`
}
~~~~

See also: [ofFileDialogResult](ofFileDialogResult).





<!----------------------------------------------------------------------------->

###string ofSystemTextBoxDialog(question, text = "")

<!--
_syntax: ofSystemTextBoxDialog(question, text = "")_
_name: ofSystemTextBoxDialog_
_returns: string_
_returns_description: _
_parameters: string question, string text_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

show a text entry dialog box

Parameters:
question descriptive text for the text entry, ie. "What's your favorite color?"
text optional default text entry string, ie. "blue"





_description: _







<!----------------------------------------------------------------------------->

