#functions

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

_description: _

Sends the user a system alert with your message

~~~~{.cpp}
ofSystemAlertDialog("Hello World!");
~~~~





<!----------------------------------------------------------------------------->

###ofFileDialogResult ofSystemLoadDialog(windowTitle = "", bFolderSelection = false)

<!--
_syntax: ofSystemLoadDialog(windowTitle = "", bFolderSelection = false)_
_name: ofSystemLoadDialog_
_returns: ofFileDialogResult_
_returns_description: _
_parameters: string windowTitle="", bool bFolderSelection=false_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Opens a system dialog box that allows the user to select a single file

~~~~{.cpp}
ofSetLogLevel(OF_LOG_VERBOSE);

//Open the Open File Dialog
ofFileDialogResult openFileResult= ofSystemLoadDialog("Select a file", false); 

//Check if the user opened a file
if (openFileResult.bSuccess){
  ofLogVerbose() << "User selected a file";
  ofLogVerbose() << "File name: " << openFileResult.getName();
  ofLogVerbose() << "Absolute file path: " << openFileResult.getPath();
} else{
  ofLogVerbose("User hit cancel");
}
~~~~





<!----------------------------------------------------------------------------->

