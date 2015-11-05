#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






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

_inlined_description: _

Convert a binary string to an char.

Interprets a string consisting only of 1s and 0s as an char and returns
the corresponding int value.

\value The binary string.

Returns: the char represented by the string or 0 on failure.





_description: _

Interprets a string consisting only of 1s and 0s as a char, and returns the corresponding char value.





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

_inlined_description: _

Convert a binary string to a float.

Interprets a string consisting only of 1s and 0s as an a float
(little-endian, 32-bit IEEE 754), and returns the corresponding float value.

\value The binary string.

Returns: the float represented by the string or 0 on failure.





_description: _

Interprets a string consisting only of 1s and 0s as a float (little-endian, 32-bit IEEE 754), and returns the corresponding float value.





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

_inlined_description: _

Convert a binary string to an int.

Interprets a string consisting only of 1s and 0s as an int (little-endian,
32-bit), and returns the corresponding int value.

\value The binary string.

Returns: the integer represented by the string or 0 on failure.





_description: _

Interprets a string consisting only of 1s and 0s as an int (little-endian, 32-bit), and returns the corresponding int value.





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

_inlined_description: _

Convert a binary string to ASCII characters.

Interprets a string consisting only of 1s and 0s as 8-bit ASCII characters
and returns the corresponding string.

\value The binary string.

Returns: the ASCII string represented by the string.





_description: _

Interprets a string consisting only of 1s and 0s as 8-bit ASCII characters, and returns the corresponding string.





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

_inlined_description: _

Search for a target value in a vector of values.
\tparam T the type contained by the vector.

Parameters:
values The vector of values to be searched.
target The target value to be found.

Returns: true if at least one value equal to the target value is found.





_description: _

returns true if the vector values contains target





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

_inlined_description: _

Disable the use of the data path.

This function causes ofToDataPath() to ignore the relative path set
with ofSetDataPathRoot().





_description: _

Disables the conversion of paths to realtive to data/





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

_inlined_description: _

Enable the use of the data path.

This function causes ofToDataPath() to respect the relative path set
with ofSetDataPathRoot().  This is enabled by default.





_description: _

Enables the conversion of paths to relative to data/  This is enabled by default.





<!----------------------------------------------------------------------------->

###const char * ofFromString(&value)

<!--
_syntax: ofFromString(&value)_
_name: ofFromString_
_returns: const char *_
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

_inlined_description: _

Convert a string represetnation to another string.

Equivalent to calling the `.c_str()` on a std::string.


Parameters:
value The string value to convert to another string.

Returns: the string converted to a c-style string.





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

_inlined_description: _

Get the current day within the month.

Returns: the day witin the month [1-31].





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

_inlined_description: _

Get the elapsed time in seconds.

This returns the elapsed time since ofResetElapsedTimeCounter() was called.
Usually ofResetElapsedTimeCounter() is called automatically once during
program startup.


Returns: the floating point elapsed time in seconds.





_description: _

returns the elapsed time since the application started in seconds as a float





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

_inlined_description: _

Get the hour of the day.

Returns: the hour of the day [0-23].





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

_inlined_description: _

Get minutes after the hour.

Returns: the minutes after the hour [0-59].





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

_inlined_description: _

Get the current month.

Returns: the current month [1-12].





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

_inlined_description: _

Get the seconds after the minute.

Returns: the seconds after the minute [0-59].





_description: _







<!----------------------------------------------------------------------------->

###ofTargetPlatform ofGetTargetPlatform()

<!--
_syntax: ofGetTargetPlatform()_
_name: ofGetTargetPlatform_
_returns: ofTargetPlatform_
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

_inlined_description: _

Get the target platform of the current system.

Returns: the current ofTargetPlatform.





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

_inlined_description: _

Formats the current system time according to the given format.

The default timestamp format is "%Y-%m-%d-%H-%M-%S-%i" (e.g.
2011-01-15-18-29-35-299).


Returns: the current time as a string with the default format.





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

_inlined_description: _

Get the number of seconds since Midnight, January 1, 1970.

Resolution is in seconds.


Returns: the number of seconds since Midnight, January 1, 1970 (epoch time).





_description: _







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

_inlined_description: _

Get the current version of openFrameworks as a string.

openFrameworks uses the semantic versioning system.

\sa http://semver.org/

Returns: The string representation of the version (e.g. `0.9.0`).





_description: _







<!----------------------------------------------------------------------------->

###unsigned int ofGetVersionMajor()

<!--
_syntax: ofGetVersionMajor()_
_name: ofGetVersionMajor_
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

_inlined_description: _

Get the major version number of openFrameworks.

openFrameworks uses the semantic versioning system.

\sa http://semver.org/

Returns: The major version number.





_description: _







<!----------------------------------------------------------------------------->

###unsigned int ofGetVersionMinor()

<!--
_syntax: ofGetVersionMinor()_
_name: ofGetVersionMinor_
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

_inlined_description: _

Get the minor version number of openFrameworks.

openFrameworks uses the semantic versioning system.

\sa http://semver.org/

Returns: The minor version number.





_description: _







<!----------------------------------------------------------------------------->

###unsigned int ofGetVersionPatch()

<!--
_syntax: ofGetVersionPatch()_
_name: ofGetVersionPatch_
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

_inlined_description: _

Get the patch version number of openFrameworks.

openFrameworks uses the semantic versioning system.

\sa http://semver.org/

Returns: The patch version number.





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

_inlined_description: _

Get the current weekday.

Values 0 = Sunday, 1 = Monday, ..., 6 = Saturday.


Returns: the current weekday [0-6].





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

_inlined_description: _

Get the current year.

Returns: the current year.





_description: _







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

_inlined_description: _

Convert a string representing an char in hexadecimal to a char.

Converts a hexadecimal representation of an char (e.g., `"61"`) to an actual
`char` (e.g., `a`).


Parameters:
charHexString The string representing an char in hexadecimal.

Returns: the char represented by the string.





_description: _

Converts a hexadecimal representation of an char (e.g., "61") to an actual char (e.g., a).





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

_inlined_description: _

Convert a string representing an float in hexadecimal to a float.

Converts a hexadecimal representation of an float (little-endian, 32-bit
IEEE 754, e.g., `"4060000000000000"`) to an actual float (e.g., `128.f`).


Parameters:
floatHexString The string representing an float in hexadecimal.

Returns: the float represented by the string.





_description: _

Converts a hexadecimal representation of an float (little-endian, 32-bit IEEE 754, e.g., "4060000000000000") to an actual float (e.g., 128.f).





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

_inlined_description: _

Convert a string representing an integer in hexadecimal to a string.

Converts a hexadecimal representation of an int (little-endian, 32-bit,
e.g., `"0xbadf00d"` or `"badf00d"`) to an actual `int`.


Parameters:
intHexString The string representing an integer in hexadecimal.

Returns: the integer represented by the string.





_description: _

Converts a hexadecimal representation of an int (little-endian, 32-bit, e.g., "0xbadf00d" or "badf00d") to an actual int.





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

_inlined_description: _

Convert a string representing an string in hexadecimal to a string.

Converts a hexadecimal representation of an string (e.g.,
`"61626364656667"`) to an actual string (`"abcdefg"`).


Parameters:
stringHexString The string representing an string in hexadecimal.

Returns: the string represented by the string.





_description: _

Converts a hexadecimal representation of an string (e.g., "61626364656667") to an actual string ("abcdefg");





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

_inlined_description: _

Randomly reorder the values in a vector.
\tparam T the type contained by the vector.

Parameters:
values The vector of values to modify.
\sa http://www.cplusplus.com/reference/algorithm/random_shuffle/





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

_inlined_description: _

Conditionally remove values from a vector.

Values are removed if, when passed to the BoolFunction, the BoolFunction
function returns true.  The given BoolFunction can be a custom function
or a built-in function.

Example of a custom function to remove odd numbers from a std::vector<int>
of integers:

~~~~{.cpp}
bool IsOdd(int i) {
    return ((i % 2) == 1);
}
~~~~

To call the function, one might use:

~~~~{.cpp}
std::vector<int> myInts;

// Fill the vector with integers.
for (int i = 0; i < 10; ++i)
{
    myInts.push_back(i);
}

ofRemove(myInts, IsOdd);
~~~~

The resulting vector will contain the following values:

   0, 2, 4, 6, 8

\tparam T the type contained by the vector.
\tparam BoolFunction the boolean function used to erase.

Parameters:
values The vector of values to modify.
shouldErase A boolean function as described above.
\sa http://www.cplusplus.com/reference/algorithm/remove_if/





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

_inlined_description: _

Reset the elapsed time counter.

This method resets the times returned by ofGetElapsedTimef(),
ofGetElapsedTimeMillis() and ofGetElapsedTimeMicros() to zero.

\note This is called on the first frame during app startup.





_description: _







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

_inlined_description: _

Saves the current frame as a PNG image.

The PNG image will be named according to an internal counter in sequence.
The count will be restarted each time the program is restarted.


Parameters:
bUseViewport Set to true if the current viewport should be used.





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

_inlined_description: _

Sort a vector of values into ascending order.

The elements are compared using operator< for the first version.
Equivalent elements are not guaranteed to keep their original relative
order.

\tparam T the type contained by the vector.

Parameters:
values The vector of values to be sorted.
\sa http://www.cplusplus.com/reference/algorithm/sort/





_description: _







<!----------------------------------------------------------------------------->

###void ofSort(&values, compare)

<!--
_syntax: ofSort(&values, compare)_
_name: ofSort_
_returns: void_
_returns_description: _
_parameters: vector< T > &values, BoolFunction compare_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sort a vector of values into an order defined by a comparator.

Example of a custom function to sort descending of integers:

~~~~{.cpp}
bool sortDescending(int i, int j)
{
    return (j < i);
}
~~~~

This binary function must accept two elements in the range as arguments and
return a value convertible to bool. The value returned indicates whether the
element passed as first argument is considered to go before the second in
the specific strict weak ordering it defines.  The function shall not modify
any of its arguments.  This can either be a function pointer or a function
object.

To call the function, one might use:

~~~~{.cpp}
std::vector<int> myInts;

// Fill the vector with integers.
for (int i = 0; i < 10; ++i)
{
    myInts.push_back(i);
}

ofSort(myInts, sortDescending);
~~~~

The resulting vector will contain the following values:

   9, 8, 7, 6, 5, 4, 3, 2, 1, 0.

\tparam T the type contained by the vector.

Parameters:
values The vector of values to be sorted.
compare The comparison function.
\sa http://www.cplusplus.com/reference/algorithm/sort/





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

_inlined_description: _

 Splits a string using a delimiter.

ofSplitString splits a string and returns the collection of string
tokens inside of a std::vector<std::string>.

A useful application is to use delimiter `" "`:

~~~~{.cpp}
result = ofSplitString("of rocks", " ");
// result[0] = "of"
// result[1] = "rocks"
~~~~

Like this a big string can be "cut" and turned it into a collection of
words. The user can also ignore empty tokens.  Empty tokens occur when a
there are multiple delimiters in a row (e.g. "of,rocks,,!").  The user can
also "trim" the tokens. This will remove whitespace from before and after
each token.  This might be useful when a delimted string is padded with
with spaces (e.g. "of    ,   rocks   ,!").


Parameters:
source The string to split.
delimiter The delimiter string.
ignoreEmpty Set to true to remove empty tokens.
trim Set to true to trim the resulting tokens.

Returns: A vector of strings split with the delimiter.





_description: _

Splits source using delimiter and returns the separate tokens. In modern versions of openFrameworks, delimiter can be a multi-character string. In older versions of openFrameworks, delimiter was interpreted as multiple single-character delimiters.





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

_inlined_description: _

Converts any datatype value to a string of only 1s and 0s.

The corresponding string of 1s and 0s corresponds to the way value is stored
in memory.

\tparam T The data type of the value to convert to a binary string.

Parameters:
value The data to convert to a binary string.

Returns: a binary string.





_description: _

Converts any datatype value to a string of only 1s and 0s corresponding to the way value is stored in memory.





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

_inlined_description: _

Converts a string value to a string of only 1s and 0s.

The corresponding string of 1s and 0s corresponds to the way value is stored
in memory.


Parameters:
value The string to convert to a binary string.

Returns: a binary string.





_description: _

Converts a string value to a string of only 1s and 0s corresponding to the way value is stored in memory.





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

_inlined_description: _

Converts a c-style string to a string of only 1s and 0s.

The corresponding string of 1s and 0s corresponds to the way value is stored
in memory.


Parameters:
value The c-style string to convert to a binary string.

Returns: a binary string.





_description: _

Converts any C-style string value to a string of only 1s and 0s corresponding to the way value is stored in memory.





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

_inlined_description: _

Convert a string to a boolean.

Converts a std::string representation of a boolean (e.g., `"TRUE"`) to an
actual `bool` using a case-insensitive comparison against the words `"true"`
and `"false"`.


Parameters:
boolString The string representation of the boolean.

Returns: the boolean represented by the string or 0 on failure.





_description: _

Converts a string representation boolString (e.g., "TRUE") to an actual bool using a case-insensitive comparison against the words "true" and "false". 





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

_inlined_description: _

Convert a string representation of a char to a actual char.

Converts a string representation of a single char (e.g., `"c"`) to an
actual `char`.

\note Multi-byte chars and multi-char strings are not supported.


Parameters:
charString The char string to convert.

Returns: The string as a char or 0 on failure.





_description: _

Converts a string representation of a single char (e.g., " c ") to an actual char.





<!----------------------------------------------------------------------------->

###double ofToDouble(&doubleString)

<!--
_syntax: ofToDouble(&doubleString)_
_name: ofToDouble_
_returns: double_
_returns_description: _
_parameters: const string &doubleString_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert a string to a double.

Converts a std::string representation of a double (e.g., `"3.14"`) to an
actual `double`.


Parameters:
doubleString The string representation of the double.

Returns: the double represented by the string or 0 on failure.





_description: _







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

_inlined_description: _

Convert a string to a float.

Converts a std::string representation of a float (e.g., `"3.14"`) to an
actual `float`.


Parameters:
floatString string representation of the float.

Returns: the float represented by the string or 0 on failure.





_description: _

Converts a string representation floatString (e.g., "3.14") to an actual float.





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

_inlined_description: _

Converts any value to its equivalent hexadecimal representation.

The hexadecimal representation corresponds to the way a number is stored in
memory.

\tparam T The data type of the value to convert to a hexadecimal string.

Parameters:
value The value to convert to a hexadecimal string.

Returns: the hexadecimal string representation of the value.





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

_inlined_description: _

Convert a string to a hexadecimal string.

Converts a string (e.g., `"abc"`) to its equivalent hexadecimal
representation (e.g., `"616263"`).


Parameters:
value The value to convert to a hexadecimal string.

Returns: a hexadecimal string.





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

_inlined_description: _

Convert a c-style string to a hexadecimal string.

Converts a string (e.g., `"abc"`) to its equivalent hexadecimal
representation (e.g., `"616263"`).


Parameters:
value The value to convert to a hexadecimal string.

Returns: a hexadecimal string.





_description: _

Converts a c-style string (e.g., "abc") to its equivalent hexadecimal representation (e.g., "616263").





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

_inlined_description: _

Convert a string to an integer.

Converts a `std::string` representation of an int (e.g., `"3"`) to an actual
`int`.


Parameters:
intString The string representation of the integer.

Returns: the integer represented by the string or 0 on failure.





_description: _

Converts a string representation of an int (e.g., "2012") to an actual int.





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

_inlined_description: _

Convert a value to a string.

ofToString does its best to convert any value to a string. If the data type
implements a stream << operator, then it will be converted.

Example:
~~~~{.cpp}
		std::string str = "framerate is ";
		str += ofToString(ofGetFrameRate()) + " fps";
		// The string now containes something like "framerate is 60 fps".
~~~~

\tparam T The data type of the value to convert to a string.

Parameters:
value The value to convert to a string.

Returns: A string representing the value or an empty string on failure.





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

_inlined_description: _

Convert a value to a string with a specific precision.

Like sprintf "%4f" format, in this example precision=4

\tparam T The data type of the value to convert to a string.

Parameters:
value The value to convert to a string.
precision The precision to use when converting to a string.

Returns: The string representation of the value.





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

_inlined_description: _

Convert a vector of values to a comma-delimited string.

This method will take any vector of values and output a list of the values
as a comma-delimited string.

\tparam T The data type held by the vector.

Parameters:
values The vector of values to be converted to a string.

Returns: a comma-delimited string representation of the intput values.





_description: _

Converts a vector of values to a single string representation. 
~~~~{.cpp}
vector<int> vec;
vec.push_back(1);
vec.push_back(2);
vec.push_back(3);
cout << ofToString(vec) << endl; // prints "{1, 2, 3}"
~~~~





<!----------------------------------------------------------------------------->

###string ofToString(&value, width, fill)

<!--
_syntax: ofToString(&value, width, fill)_
_name: ofToString_
_returns: string_
_returns_description: _
_parameters: const T &value, int width, char fill_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert a value to a string with a specific width and fill

Like sprintf "% 4d" or "% 4f" format, in this example width=4, fill=' '

\tparam T The data type of the value to convert to a string.

Parameters:
value The value to convert to a string.
width The width of the value to use when converting to a string.
fill The character to use when padding the converted string.

Returns: The string representation of the value.





_description: _







<!----------------------------------------------------------------------------->

###string ofToString(&value, precision, width, fill)

<!--
_syntax: ofToString(&value, precision, width, fill)_
_name: ofToString_
_returns: string_
_returns_description: _
_parameters: const T &value, int precision, int width, char fill_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert a value to a string with a specific precision, width and filll

Like sprintf "%04.2d" or "%04.2f" format, in this example precision=2, width=4, fill='0'

\tparam T The data type of the value to convert to a string.

Parameters:
value The value to convert to a string.
precision The precision to use when converting to a string.
width The width of the value to use when converting to a string.
fill The character to use when padding the converted string.

Returns: The string representation of the value.





_description: _







<!----------------------------------------------------------------------------->

###string ofVAArgsToString(*format, args)

<!--
_syntax: ofVAArgsToString(*format, args)_
_name: ofVAArgsToString_
_returns: string_
_returns_description: _
_parameters: const char *format, va_list args_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert a variable length argument to a string.

Parameters:
format A printf-style format string.
args A variable argument list.

Returns: A string representation of the argument list.





_description: _







<!----------------------------------------------------------------------------->

