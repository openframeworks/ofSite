#functions

##Description





<!----------------------------------------------------------------------------->

###int ofGetElapsedTimeMillis()

<!--
_syntax: ofGetElapsedTimeMillis()_
_name: ofGetElapsedTimeMillis_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###float ofGetElapsedTimef()

<!--
_syntax: ofGetElapsedTimef()_
_name: ofGetElapsedTimef_
_returns: float_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofGetFrameNum()

<!--
_syntax: ofGetFrameNum()_
_name: ofGetFrameNum_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofGetSeconds()

<!--
_syntax: ofGetSeconds()_
_name: ofGetSeconds_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofGetMinutes()

<!--
_syntax: ofGetMinutes()_
_name: ofGetMinutes_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofGetHours()

<!--
_syntax: ofGetHours()_
_name: ofGetHours_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofLaunchBrowser(url)

<!--
_syntax: ofLaunchBrowser(url)_
_name: ofLaunchBrowser_
_returns: void_
_returns_description: _
_parameters: string url_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Opens your computer's default browser and loads the specified url. 






<!----------------------------------------------------------------------------->

###string ofToDataPath(path, absolute)

<!--
_syntax: ofToDataPath(path, absolute)_
_name: ofToDataPath_
_returns: string_
_returns_description: _
_parameters: string path_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _

openFrameworks now treats all files in the data/ folder as being at the same level as your app. When a file is loaded using openFrameworks classes (like ofVideoPlayer) the file path is run through this function to turn it into a relative path for the executible. As windows, mac and linux all have different relative paths, it is important to use this function if you have written your own class or addon for openFrameworks and you wish to be able to load files from the data/ folder.

The optional parameter makeAbsolute, if set to true (false by default) returns the generated path as an absolute path starting from the root of your filesystem instead of from the folder your application is run from.






<!----------------------------------------------------------------------------->

###string ofToString(value)

<!--
_syntax: ofToString(value)_
_name: ofToString_
_returns: string_
_returns_description: _
_parameters: int value_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

To make adding numbers to a string easy we have the ofToString object which takes a number and turns it into a string representation of that number. For floating point numbers 'precision' is the number of decimal places you want to use. There is a default value for 'precision' of 7 decimal places, so if you don't wish to specify it you can just pass the first argument.


This example makes a custom string to show the framerate in the window title. 
~~~~{.cpp}

string str = "framerate is "; 						
str += ofToString(ofGetFrameRate(), 2)+"fps"; 
ofSetWindowTitle(str);
//set the window title to "framerate is 45.30fps"
~~~~






<!----------------------------------------------------------------------------->

###string ofGetVersionInfo()

<!--
_syntax: ofGetVersionInfo()_
_name: ofGetVersionInfo_
_returns: string_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofToInt(intString)

<!--
_syntax: ofToInt(intString)_
_name: ofToInt_
_returns: int_
_returns_description: _
_parameters: const string& intString_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts the string "intString" into an integer value.






<!----------------------------------------------------------------------------->

###void ofToFloat(floatString)

<!--
_syntax: ofToFloat(floatString)_
_name: ofToFloat_
_returns: void_
_returns_description: _
_parameters: const string& floatString_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts the string "floatString" into a float value.






<!----------------------------------------------------------------------------->

###void ofSaveScreen(filename)

<!--
_syntax: ofSaveScreen(filename)_
_name: ofSaveScreen_
_returns: void_
_returns_description: _
_parameters: string filename_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Saves the current screen image into a given file name (string filename).
Example:
~~~~{.cpp}

string filename;
fileName = "screen1.png";
ofSaveScreen(fileName);
~~~~






<!----------------------------------------------------------------------------->

###void ofSaveFrame()

<!--
_syntax: ofSaveFrame()_
_name: ofSaveFrame_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Saves the current frame as a PNG image.






<!----------------------------------------------------------------------------->

###vector<string> ofSplitString(str,delimiter)

<!--
_syntax: ofSplitString(str,delimiter)_
_name: ofSplitString_
_returns: vector<string>_
_returns_description: _
_parameters: const string& str, const string& delimiter = " "_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

This function is used to delete some parts of a given string (str). We set in delimiter the parts we want to delete. For example if we call ofSplitSpring in my setup function:
~~~~{.cpp}

result=ofSplitString("of rocks", "of");
~~~~

we obtain:
result[0]=r
result[1]=cks
this is the result of deleting o and f letters in the string.

We can find a very useful application if we use delimiter = " ":
~~~~{.cpp}

result=ofSplitString("of rocks", " ");
~~~~

we obtain:
result[0]=of
result[1]=rocks
Like this we can "cut" a big string and turn it into a vector of words.








<!----------------------------------------------------------------------------->

###unsigned long ofGetSystemTime()

<!--
_syntax: ofGetSystemTime()_
_name: ofGetSystemTime_
_returns: unsigned long_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofGetYear()

<!--
_syntax: ofGetYear()_
_name: ofGetYear_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofGetMonth()

<!--
_syntax: ofGetMonth()_
_name: ofGetMonth_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofGetDay()

<!--
_syntax: ofGetDay()_
_name: ofGetDay_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofGetWeekday()

<!--
_syntax: ofGetWeekday()_
_name: ofGetWeekday_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofEnableDataPath()

<!--
_syntax: ofEnableDataPath()_
_name: ofEnableDataPath_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _

Enables the conversion of paths to relative to data/  This is enabled by default.






<!----------------------------------------------------------------------------->

###void ofDisableDataPath()

<!--
_syntax: ofDisableDataPath()_
_name: ofDisableDataPath_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _

Disables the conversion of paths to realtive to data/






<!----------------------------------------------------------------------------->

###int ofNextPow2(input)

<!--
_syntax: ofNextPow2(input)_
_name: ofNextPow2_
_returns: int_
_returns_description: _
_parameters: int input_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofResetElapsedTimeCounter()

<!--
_syntax: ofResetElapsedTimeCounter()_
_name: ofResetElapsedTimeCounter_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###unsigned long ofGetElapsedTimeMicros()

<!--
_syntax: ofGetElapsedTimeMicros()_
_name: ofGetElapsedTimeMicros_
_returns: unsigned long_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###unsigned int ofGetUnixTime()

<!--
_syntax: ofGetUnixTime()_
_name: ofGetUnixTime_
_returns: unsigned int_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###unsigned long ofGetSystemTimeMicros()

<!--
_syntax: ofGetSystemTimeMicros()_
_name: ofGetSystemTimeMicros_
_returns: unsigned long_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###string ofGetTimestampString()

<!--
_syntax: ofGetTimestampString()_
_name: ofGetTimestampString_
_returns: string_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###string ofGetTimestampString(timestampFormat)

<!--
_syntax: ofGetTimestampString(timestampFormat)_
_name: ofGetTimestampString_
_returns: string_
_returns_description: _
_parameters: string timestampFormat_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###string ofToDataPath(path, absolute = false)

<!--
_syntax: ofToDataPath(path, absolute = false)_
_name: ofToDataPath_
_returns: string_
_returns_description: _
_parameters: string path, bool absolute=false_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofRandomize(&values)

<!--
_syntax: ofRandomize(&values)_
_name: ofRandomize_
_returns: void_
_returns_description: _
_parameters: vector< T > &values_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofRemove(&values, shouldErase)

<!--
_syntax: ofRemove(&values, shouldErase)_
_name: ofRemove_
_returns: void_
_returns_description: _
_parameters: vector< T > &values, BoolFunction shouldErase_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSort(&values)

<!--
_syntax: ofSort(&values)_
_name: ofSort_
_returns: void_
_returns_description: _
_parameters: vector< T > &values_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###unsigned int ofFind(&values, &target)

<!--
_syntax: ofFind(&values, &target)_
_name: ofFind_
_returns: unsigned int_
_returns_description: _
_parameters: const vector< T > &values, const T &target_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool ofContains(&values, &target)

<!--
_syntax: ofContains(&values, &target)_
_name: ofContains_
_returns: bool_
_returns_description: _
_parameters: const vector< T > &values, const T &target_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetDataPathRoot(root)

<!--
_syntax: ofSetDataPathRoot(root)_
_name: ofSetDataPathRoot_
_returns: void_
_returns_description: _
_parameters: string root_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###string ofToString(&value)

<!--
_syntax: ofToString(&value)_
_name: ofToString_
_returns: string_
_returns_description: _
_parameters: const T &value_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###string ofToString(&value, precision)

<!--
_syntax: ofToString(&value, precision)_
_name: ofToString_
_returns: string_
_returns_description: _
_parameters: const T &value, int precision_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _



<!----------------------------------------------------------------------------->

###string ofToString(&values)

<!--
_syntax: ofToString(&values)_
_name: ofToString_
_returns: string_
_returns_description: _
_parameters: const vector< T > &values_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts a vector of values to a single `string` representation. 

~~~~{.cpp}
vector<int> vec;
vec.push_back(1);
vec.push_back(2);
vec.push_back(3);
cout << ofToString(vec) << endl; // prints "{1, 2, 3}"
~~~~



<!----------------------------------------------------------------------------->

###string ofToHex(&value)

<!--
_syntax: ofToHex(&value)_
_name: ofToHex_
_returns: string_
_returns_description: _
_parameters: const T &value_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts any value to its equivalent hexadecimal representation corresponding to the way it is stored in memory.






<!----------------------------------------------------------------------------->

###string ofToHex(&value)

<!--
_syntax: ofToHex(&value)_
_name: ofToHex_
_returns: string_
_returns_description: _
_parameters: const string &value_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Converts a string (e.g., "abc") to its equivalent hexadecimal representation (e.g., "616263").





<!----------------------------------------------------------------------------->

###string ofToHex(*value)

<!--
_syntax: ofToHex(*value)_
_name: ofToHex_
_returns: string_
_returns_description: _
_parameters: const char *value_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Converts a c-style string (e.g., "abc") to its equivalent hexadecimal representation (e.g., "616263").





<!----------------------------------------------------------------------------->

###int ofHexToInt(&intHexString)

<!--
_syntax: ofHexToInt(&intHexString)_
_name: ofHexToInt_
_returns: int_
_returns_description: _
_parameters: const string &intHexString_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts a hexadecimal representation of an `int` (little-endian, 32-bit, e.g., "0xbadf00d" or "badf00d") to an actual `int`.





<!----------------------------------------------------------------------------->

###char ofHexToChar(&charHexString)

<!--
_syntax: ofHexToChar(&charHexString)_
_name: ofHexToChar_
_returns: char_
_returns_description: _
_parameters: const string &charHexString_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts a hexadecimal representation of an `char` (e.g., "61") to an actual `char` (e.g., a).




<!----------------------------------------------------------------------------->

###float ofHexToFloat(&floatHexString)

<!--
_syntax: ofHexToFloat(&floatHexString)_
_name: ofHexToFloat_
_returns: float_
_returns_description: _
_parameters: const string &floatHexString_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts a hexadecimal representation of an `float` (little-endian, 32-bit IEEE 754, e.g., "4060000000000000") to an actual `float` (e.g., 128.f).





<!----------------------------------------------------------------------------->

###string ofHexToString(&stringHexString)

<!--
_syntax: ofHexToString(&stringHexString)_
_name: ofHexToString_
_returns: string_
_returns_description: _
_parameters: const string &stringHexString_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts a hexadecimal representation of an `string` (e.g., "61626364656667") to an actual `string` ("abcdefg");




<!----------------------------------------------------------------------------->

###int ofToInt(&intString)

<!--
_syntax: ofToInt(&intString)_
_name: ofToInt_
_returns: int_
_returns_description: _
_parameters: const string &intString_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts a string representation of an `int` (e.g., "2012") to an actual `int`.





<!----------------------------------------------------------------------------->

###char ofToChar(&charString)

<!--
_syntax: ofToChar(&charString)_
_name: ofToChar_
_returns: char_
_returns_description: _
_parameters: const string &charString_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts a string representation of a single `char` (e.g., " c ") to an actual `char`.



<!----------------------------------------------------------------------------->

###float ofToFloat(&floatString)

<!--
_syntax: ofToFloat(&floatString)_
_name: ofToFloat_
_returns: float_
_returns_description: _
_parameters: const string &floatString_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts a string representation `floatString` (e.g., "3.14") to an actual `float`.





<!----------------------------------------------------------------------------->

###bool ofToBool(&boolString)

<!--
_syntax: ofToBool(&boolString)_
_name: ofToBool_
_returns: bool_
_returns_description: _
_parameters: const string &boolString_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts a string representation `boolString` (e.g., "TRUE") to an actual `bool` using a case-insensitive comparison against the words "true" and "false". 




<!----------------------------------------------------------------------------->

###string ofToBinary(&value)

<!--
_syntax: ofToBinary(&value)_
_name: ofToBinary_
_returns: string_
_returns_description: _
_parameters: const T &value_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts any datatype `value` to a string of only 1s and 0s corresponding to the way `value` is stored in memory.






<!----------------------------------------------------------------------------->

###string ofToBinary(&value)

<!--
_syntax: ofToBinary(&value)_
_name: ofToBinary_
_returns: string_
_returns_description: _
_parameters: const string &value_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts a string `value` to a string of only 1s and 0s corresponding to the way `value` is stored in memory.





<!----------------------------------------------------------------------------->

###string ofToBinary(*value)

<!--
_syntax: ofToBinary(*value)_
_name: ofToBinary_
_returns: string_
_returns_description: _
_parameters: const char *value_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts any C-style string `value` to a string of only 1s and 0s corresponding to the way `value` is stored in memory.



<!----------------------------------------------------------------------------->

###int ofBinaryToInt(&value)

<!--
_syntax: ofBinaryToInt(&value)_
_name: ofBinaryToInt_
_returns: int_
_returns_description: _
_parameters: const string &value_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Interprets a string consisting only of 1s and 0s as an `int` (little-endian, 32-bit), and returns the corresponding `int` value.





<!----------------------------------------------------------------------------->

###char ofBinaryToChar(&value)

<!--
_syntax: ofBinaryToChar(&value)_
_name: ofBinaryToChar_
_returns: char_
_returns_description: _
_parameters: const string &value_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Interprets a string consisting only of 1s and 0s as a `char`, and returns the corresponding `char` value.





<!----------------------------------------------------------------------------->

###float ofBinaryToFloat(&value)

<!--
_syntax: ofBinaryToFloat(&value)_
_name: ofBinaryToFloat_
_returns: float_
_returns_description: _
_parameters: const string &value_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Interprets a string consisting only of 1s and 0s as a `float` (little-endian, 32-bit IEEE 754), and returns the corresponding `float` value.





<!----------------------------------------------------------------------------->

###string ofBinaryToString(&value)

<!--
_syntax: ofBinaryToString(&value)_
_name: ofBinaryToString_
_returns: string_
_returns_description: _
_parameters: const string &value_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Interprets a string consisting only of 1s and 0s as 8-bit ASCII characters, and returns the corresponding string.





<!----------------------------------------------------------------------------->

###void ofSaveFrame(bUseViewport = false)

<!--
_syntax: ofSaveFrame(bUseViewport = false)_
_name: ofSaveFrame_
_returns: void_
_returns_description: _
_parameters: bool bUseViewport=false_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSaveViewport(filename)

<!--
_syntax: ofSaveViewport(filename)_
_name: ofSaveViewport_
_returns: void_
_returns_description: _
_parameters: string filename_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###vector< string > ofSplitString(&source, &delimiter, ignoreEmpty = false, trim = false)

<!--
_syntax: ofSplitString(&source, &delimiter, ignoreEmpty = false, trim = false)_
_name: ofSplitString_
_returns: vector< string >_
_returns_description: _
_parameters: const string &source, const string &delimiter, bool ignoreEmpty=false, bool trim=false_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Splits `source` using `delimiter` and returns the separate tokens. In modern versions of openFrameworks, `delimiter` can be a multi-character string. In older versions of openFrameworks, `delimiter` was interpreted as multiple single-character delimiters.





<!----------------------------------------------------------------------------->

###string ofJoinString(stringElements, &delimiter)

<!--
_syntax: ofJoinString(stringElements, &delimiter)_
_name: ofJoinString_
_returns: string_
_returns_description: _
_parameters: vector< string > stringElements, const string &delimiter_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Turns a `stringElements` into a single string, with an instance of `delimiter` between all the elements.





<!----------------------------------------------------------------------------->

###void ofStringReplace(&input, searchStr, replaceStr)

<!--
_syntax: ofStringReplace(&input, searchStr, replaceStr)_
_name: ofStringReplace_
_returns: void_
_returns_description: _
_parameters: string &input, string searchStr, string replaceStr_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Searches `input` for instances of `searchStr` and replaces them with `replaceStr`.





<!----------------------------------------------------------------------------->

###bool ofIsStringInString(haystack, needle)

<!--
_syntax: ofIsStringInString(haystack, needle)_
_name: ofIsStringInString_
_returns: bool_
_returns_description: _
_parameters: string haystack, string needle_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Checks if the string `needle` exists in the string `haystack`.





<!----------------------------------------------------------------------------->

###string ofToLower(&src)

<!--
_syntax: ofToLower(&src)_
_name: ofToLower_
_returns: string_
_returns_description: _
_parameters: const string &src_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts all characters in the string `src` to lowercase.





<!----------------------------------------------------------------------------->

###string ofToUpper(&src)

<!--
_syntax: ofToUpper(&src)_
_name: ofToUpper_
_returns: string_
_returns_description: _
_parameters: const string &src_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Converts all characters in the string `src` to uppercase.





<!----------------------------------------------------------------------------->

###string ofVAArgsToString(*format, ...)

<!--
_syntax: ofVAArgsToString(*format, ...)_
_name: ofVAArgsToString_
_returns: string_
_returns_description: _
_parameters: const char *format,..._
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

