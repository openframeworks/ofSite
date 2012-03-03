#functions

##Description





<!----------------------------------------------------------------------------->

### void ofSystemAlertDialog(errorMessage)

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

$$code(lang=c++)
ofSystemAlertDialog("Hello World!");
$$/code





<!----------------------------------------------------------------------------->

### ofFileDialogResult ofSystemLoadDialog(windowTitle = "", bFolderSelection = false)

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

$$code(lang=c++)
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
$$/code





<!----------------------------------------------------------------------------->

### ofFileDialogResult ofSystemSaveDialog(string defaultName, string messageName)

<!--
_syntax: ofSystemSaveDialog(string defaultName, string messageName)_
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

_description: _

Opens a system dialog box that allows the user to select a location to save a file

$$code(lang=c++)
//Snippet loads an image named "testImage.jpg" from the bin/data folder
//and re-saves it to the file path provided by the user
ofSetLogLevel(OF_LOG_VERBOSE);
ofImage image;
image.loadImage("testImage.jpg");

//Open the Save File Dialog
string defaultName = ofGetTimestampString() + ".jpg";
ofFileDialogResult saveFileResult= ofSystemSaveDialog(defaultName, "Select a file location"); 

//Check if the user selected a location
if (saveFileResult.bSuccess){
  ofLogVerbose() << "User selected a location";
  ofLogVerbose() << "File name: " << saveFileResult.getName();
  ofLogVerbose() << "Absolute file path: " << saveFileResult.getPath();
  //save the image
  image.saveImage(saveFileResult.getPath());
} else{
  ofLogVerbose() << "User hit cancel";
}
$$/code





<!----------------------------------------------------------------------------->