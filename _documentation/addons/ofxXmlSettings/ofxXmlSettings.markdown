#class ofxXmlSettings


##Description

ofxXmlSettings addon allows for reading and writing of xml files in openFrameworks. Most commonly xml settings are used for storing settings between closing and launching apps. XML has the advantage of being easy for people to read and edit but still convenient for manipulating with code.

An xml document is composed of tags with values and other tags inside of them. A tag has a name, attributes, values. If a tag contains other tags they are called its children. If a tag is inside of another, the enclosing tag is called its parent. The tags next to one another are siblings.  

~~~~{.xml}
<parentTagName>
	<tagName attributeName="attributeValue">TagValue</tagName>
	<siblingTag />
</parentName> 
~~~~

A very simple example for saving and loading values using ofxXmlSettings variable would look like this:
~~~~{.cpp}
//put some some settings into a file
ofxXmlSettings settings;
settings.setValue("settings:blinkRate", 10);
settings.setValue("settings:gravity", 9.8);
settings.setValue("settings:sceneName", "field");
settings.saveFile("settings.xml"); //puts settings.xml file in the bin/data folder
~~~~

The file this generates would look like this
~~~~{.xml}
<settings>
	<blinkRate>10</blinkRate>
	<gravity>9.8</gravity>
	<sceneName>field</sceneName>
</settings>
~~~~

To load the file again, use a snippet like the following
~~~~{.cpp}
//now load that same file and get the values out
ofxXmlSettings settings;
settings.loadFile("settings.xml");
int blinkRate = settings.getValue("settings:blinkRate", 0.0);
float gravity = settings.getValue("settings:gravity", 0);
string sceneName = settings.getValue("settings:sceneName", "defaultScene");
~~~~

A more complex example involving saving an array.
~~~~{.cpp}
ofxXmlSettings positions;
positions.addTag("positions");
positions.pushTag("positions");
//points is a vector<ofPoint> that we want to save to a file
for(int i = 0; i < points.size(); i++){
	//each position tag represents one point
	positions.addTag("position");
	positions.pushTag("position",i);
	//so set the three values in the file
	positions.addValue("X", points[i].x);
	positions.addValue("Y", points[i].y);
	positions.addValue("Z", points[i].z);
	positions.popTag();//pop position
}
positions.popTag(); //pop position
positions.saveFile("positions.xml");

//This is how you would load that very same file	
ofxXmlSettings settings;
if(settings.loadFile("positions.xml")){
	settings.pushTag("positions");
	int numberOfSavedPoints = settings.getNumTags("position");
	for(int i = 0; i < numberOfSavedPoints; i++){
		settings.pushTag("position", i);
		
		ofPoint p;
		p.x = settings.getValue("X", 0);
		p.y = settings.getValue("Y", 0);
		p.z = settings.getValue("Z", 0);
		
		points.push_back(p);
		settings.popTag();
	}
	
	settings.popTag(); //pop position
}
else{
	ofLogError("Position file did not load!");
}
~~~~

What is this "which" argument I see everywhere used for?

Most of the time you can ignore this and treat it as if it weren't there. But if specified it selects the nth tag with the same tag name at the current root of the document Normally this just means the top level tags in the document - but if you use the pushTag and popTag you can temporarily set the root of the document to be that specified tag. The main idea is to allow you to have multiple tags with the same name.

Here is an example:

~~~~{.xml}
<time>102229</time>  <-- which = 0
<time>298292</time>  <-- which = 1
<time>393393</time>  <-- which = 2
<time>447373</time>  <-- which = 3
~~~~

But if we wanted to group these into multiple <recording> tags and have multiple time values inside
we can use push and pop to move into the recording tags as if they were the document root
~~~~{.xml}
<recording> <-- we temporarily push into here with pushTag("recording", 0);
	<time>19222</time>  <-- to set this we call setValue("time", 19222, 0);   ( which = 0 )
	<time>23232</time>  <-- to set this we call setValue("time", 23232, 1);   ( which = 1 )
</recording> <-- we pop back out here with popTag();
~~~~

~~~~{.xml}
<recording>  <-- we temporarily push into here with pushTag("recording", 1); <-- now we use 1 to select the 2nd recording tag
	<time>33342</time>  <-- setValue("time", 33342, 0);   ( which = 0 )
	<time>22722</time>  <-- setValue("time", 22722, 0);   ( which = 1 )
</recording>
~~~~



##Methods



### ofxXmlSettings()

<!--
_syntax: ofxXmlSettings()_
_name: ofxXmlSettings_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Default constructor for ofxXmlSettings.  Initializes an empty object with no file set or loaded and no contents.











<!----------------------------------------------------------------------------->

### ofxXmlSettings(&xmlFile)

<!--
_syntax: ofxXmlSettings(&xmlFile)_
_name: ofxXmlSettings_
_returns: _
_returns_description: _
_parameters: const string &xmlFile_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Initializes an xml settings object and loads the file at xmlFile path.











<!----------------------------------------------------------------------------->

### ~ofxXmlSettings()

<!--
_syntax: ~ofxXmlSettings()_
_name: ~ofxXmlSettings_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: False_
_advanced: False_
-->

_description: _













<!----------------------------------------------------------------------------->

###void setVerbose(_verbose)

<!--
_syntax: setVerbose(_verbose)_
_name: setVerbose_
_returns: void_
_returns_description: _
_parameters: bool _verbose_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: False_
_advanced: False_
-->

_description: _










<!----------------------------------------------------------------------------->

###bool loadFile(&xmlFile)

<!--
_syntax: loadFile(&xmlFile)_
_name: loadFile_
_returns: bool_
_returns_description: _
_parameters: const string &xmlFile_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Loads and parses the xml file at the given path.  Returns true if the file is found and is correctly formatted xml.












<!----------------------------------------------------------------------------->

###bool saveFile(&xmlFile)

<!--
_syntax: saveFile(&xmlFile)_
_name: saveFile_
_returns: bool_
_returns_description: _
_parameters: const string &xmlFile_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Saves the current state of the xml settings object to file at xmlFile path.  












<!----------------------------------------------------------------------------->

###bool saveFile()

<!--
_syntax: saveFile()_
_name: saveFile_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Saves the current state of the xml file to its current path. The current path is defined by whatever path was specified when loadFile(xmlFile) or saveFile(xmlFile) was last called.












<!----------------------------------------------------------------------------->

###void clearTagContents(&tag, which = 0)

<!--
_syntax: clearTagContents(&tag, which = 0)_
_name: clearTagContents_
_returns: void_
_returns_description: _
_parameters: const string &tag, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

If the given tag exists at the current pushTag level set its contents to empty.











<!----------------------------------------------------------------------------->

###void removeTag(&tag, which = 0)

<!--
_syntax: removeTag(&tag, which = 0)_
_name: removeTag_
_returns: void_
_returns_description: _
_parameters: const string &tag, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Removes a tag from the current level. This differs from clearing it in that the entire tag is removed, rather than just its contents being set to empty.












<!----------------------------------------------------------------------------->

###bool tagExists(&tag, which = 0)

<!--
_syntax: tagExists(&tag, which = 0)_
_name: tagExists_
_returns: bool_
_returns_description: _
_parameters: const string &tag, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns true if the given tag exists at the current pushTag level.












<!----------------------------------------------------------------------------->

###void clear()

<!--
_syntax: clear()_
_name: clear_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Removes all tags at the current document level.














<!----------------------------------------------------------------------------->

###int getValue(&tag, defaultValue, which = 0)

<!--
_syntax: getValue(&tag, defaultValue, which = 0)_
_name: getValue_
_returns: int_
_returns_description: _
_parameters: const string &tag, int defaultValue, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the value stored by the requested tag. The data type returned depends on the type provided as the defaultArgument. For example, if the tag is:
~~~~{.xml}
<myTag>9.8</myTag>   
~~~~

The value can be interpreted in three different ways, as a float, int, or string by changing the default type provided to the call.

~~~~{.cpp}
//returns "9.8"
string myString = settings.getValue("myTag", "");
//returns the integer value 9
int myInt = settings.getValue("myTag", 0);
//returns the double value 9.8
double myDouble = settings.getValue("myTag", 0.0);
~~~~



<!----------------------------------------------------------------------------->

###double getValue(&tag, defaultValue, which = 0)

<!--
_syntax: getValue(&tag, defaultValue, which = 0)_
_name: getValue_
_returns: double_
_returns_description: _
_parameters: const string &tag, double defaultValue, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the value stored by the requested tag as a double. Refer above for description of how this method works.












<!----------------------------------------------------------------------------->

###string getValue(&tag, &defaultValue, which = 0)

<!--
_syntax: getValue(&tag, &defaultValue, which = 0)_
_name: getValue_
_returns: string_
_returns_description: _
_parameters: const string &tag, const string &defaultValue, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the value stored by the requested tag as a string. Refer above for description of how this method works.












<!----------------------------------------------------------------------------->

###int setValue(&tag, value, which = 0)

<!--
_syntax: setValue(&tag, value, which = 0)_
_name: setValue_
_returns: int_
_returns_description: _
_parameters: const string &tag, int value, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Sets the value of a tag to an integer value.  If the tag already exists, the current value is replaced with value. Otherwise a new tag is created.

The number of tags with the same name at the current document level is returned.










<!----------------------------------------------------------------------------->

###int setValue(&tag, value, which = 0)

<!--
_syntax: setValue(&tag, value, which = 0)_
_name: setValue_
_returns: int_
_returns_description: _
_parameters: const string &tag, double value, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Sets the value of a tag to an integer value.  If the tag already exists, the current value is replaced with value otherwise a new tag is created.

The number of tags with the same name at the current document level is returned.











<!----------------------------------------------------------------------------->

###int setValue(&tag, &value, which = 0)

<!--
_syntax: setValue(&tag, &value, which = 0)_
_name: setValue_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &value, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Sets the value of a tag to a string value.  If the tag already exists, the current value is replaced with value otherwise a new tag is created.

The number of tags with the same name at the current document level is returned.













<!----------------------------------------------------------------------------->

###bool pushTag(&tag, which = 0)

<!--
_syntax: pushTag(&tag, which = 0)_
_name: pushTag_
_returns: bool_
_returns_description: _
_parameters: const string &tag, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Pushing and Popping operations are used to set the current document level. Most of the methods in ofxXmlSettings are done in relationship to just the top level tags, so pushing tags is necessary to go deeper into documents. Every pushTag should be matched with a popTag after operations at that level are finished.  

pushingTag pushes the given tag which is then treated as the tag as as the document root.








<!----------------------------------------------------------------------------->

###int popTag()

<!--
_syntax: popTag()_
_name: popTag_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

popTag restores the current document root after a call to pushTag.












<!----------------------------------------------------------------------------->

###int getPushLevel()

<!--
_syntax: getPushLevel()_
_name: getPushLevel_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

getPushLevel returns the number of tags that have been pushed. Starting at 0 when the file is first populated (eg a call to loadFile). Each time pushTag is called push level increases by one. Each time popTag is called it decreases.












<!----------------------------------------------------------------------------->

###int getNumTags(&tag)

<!--
_syntax: getNumTags(&tag)_
_name: getNumTags_
_returns: int_
_returns_description: _
_parameters: const string &tag_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the number of tags with the given name at the current document level. Useful for iterating through a list of sibling tags with the same name.  












<!----------------------------------------------------------------------------->

###int addValue(&tag, value)

<!--
_syntax: addValue(&tag, value)_
_name: addValue_
_returns: int_
_returns_description: _
_parameters: const string &tag, int value_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Adds a tag with tag name and integer value to the document, returning the number of tags with the same name.

addValue and setValue are very similar, both add new tags to the current document with the given name and value.  The distinction is that if tags exist with the same name at the current document level, addValue will create additional tags, while setValue will replace contents of the tags based on the 'which' parameter.














<!----------------------------------------------------------------------------->

###int addValue(&tag, value)

<!--
_syntax: addValue(&tag, value)_
_name: addValue_
_returns: int_
_returns_description: _
_parameters: const string &tag, double value_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Adds a tag with tag name and double value to the document, returning the number of tags with the same name.










<!----------------------------------------------------------------------------->

###int addValue(&tag, &value)

<!--
_syntax: addValue(&tag, &value)_
_name: addValue_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &value_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Adds a tag with tag name and string value to the document, returning the number of tags with the same name.













<!----------------------------------------------------------------------------->

###int addTag(&tag)

<!--
_syntax: addTag(&tag)_
_name: addTag_
_returns: int_
_returns_description: _
_parameters: const string &tag_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Adds an empty tag at the current document level. If you want to add children tags, call pushTag afterwords to begin editing the document with the new tag as root.

Return the number of tags with the same name at the current level.










<!----------------------------------------------------------------------------->

###int addAttribute(&tag, &attribute, value, which = 0)

<!--
_syntax: addAttribute(&tag, &attribute, value, which = 0)_
_name: addAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, int value, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Adds a new attribute to the tag with with the given int value. If the tag doesn't exist it is created. If an attribute at index 'which' already exists its value replaced by the provided value












<!----------------------------------------------------------------------------->

###int addAttribute(&tag, &attribute, value, which = 0)

<!--
_syntax: addAttribute(&tag, &attribute, value, which = 0)_
_name: addAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, double value, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Adds a new attribute to the tag with the given double value. 












<!----------------------------------------------------------------------------->

###int addAttribute(&tag, &attribute, &value, which = 0)

<!--
_syntax: addAttribute(&tag, &attribute, &value, which = 0)_
_name: addAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, const string &value, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Adds a new attribute to the tag with the given string value. 












<!----------------------------------------------------------------------------->

###int addAttribute(&tag, &attribute, value)

<!--
_syntax: addAttribute(&tag, &attribute, value)_
_name: addAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, int value_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Adds a new attribute to the tag with with the given int value.












<!----------------------------------------------------------------------------->

###int addAttribute(&tag, &attribute, value)

<!--
_syntax: addAttribute(&tag, &attribute, value)_
_name: addAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, double value_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Adds a new attribute to the tag with with the given double value.












<!----------------------------------------------------------------------------->

###int addAttribute(&tag, &attribute, &value)

<!--
_syntax: addAttribute(&tag, &attribute, &value)_
_name: addAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, const string &value_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Adds a new attribute to the tag with with the given string value.












<!----------------------------------------------------------------------------->

###void removeAttribute(&tag, &attribute, which = 0)

<!--
_syntax: removeAttribute(&tag, &attribute, which = 0)_
_name: removeAttribute_
_returns: void_
_returns_description: _
_parameters: const string &tag, const string &attribute, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Removes the attribute from tag name at index specified by 'which'.












<!----------------------------------------------------------------------------->

###void clearTagAttributes(&tag, which = 0)

<!--
_syntax: clearTagAttributes(&tag, which = 0)_
_name: clearTagAttributes_
_returns: void_
_returns_description: _
_parameters: const string &tag, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Clears all attributes from the given tag name and tag index which.













<!----------------------------------------------------------------------------->

###int getNumAttributes(&tag, which = 0)

<!--
_syntax: getNumAttributes(&tag, which = 0)_
_name: getNumAttributes_
_returns: int_
_returns_description: _
_parameters: const string &tag, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the number of attributes on a tag at index which.









<!----------------------------------------------------------------------------->

###bool attributeExists(&tag, &attribute, which = 0)

<!--
_syntax: attributeExists(&tag, &attribute, which = 0)_
_name: attributeExists_
_returns: bool_
_returns_description: _
_parameters: const string &tag, const string &attribute, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns true if a tag has any attributes.












<!----------------------------------------------------------------------------->

###bool getAttributeNames(&tag, &outNames, which = 0)

<!--
_syntax: getAttributeNames(&tag, &outNames, which = 0)_
_name: getAttributeNames_
_returns: bool_
_returns_description: _
_parameters: const string &tag, vector< string > &outNames, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns an array of strings containing all attribute names on the tag.  This is useful in conjunction with a loop to get all values of the tags one by one with calls to getAttribute.












<!----------------------------------------------------------------------------->

###int getAttribute(&tag, &attribute, defaultValue, which = 0)

<!--
_syntax: getAttribute(&tag, &attribute, defaultValue, which = 0)_
_name: getAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, int defaultValue, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the value of the attribute on tag at index which as an int.












<!----------------------------------------------------------------------------->

###double getAttribute(&tag, &attribute, defaultValue, which = 0)

<!--
_syntax: getAttribute(&tag, &attribute, defaultValue, which = 0)_
_name: getAttribute_
_returns: double_
_returns_description: _
_parameters: const string &tag, const string &attribute, double defaultValue, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the value of the attribute on tag at index which as a double.












<!----------------------------------------------------------------------------->

###string getAttribute(&tag, &attribute, &defaultValue, which = 0)

<!--
_syntax: getAttribute(&tag, &attribute, &defaultValue, which = 0)_
_name: getAttribute_
_returns: string_
_returns_description: _
_parameters: const string &tag, const string &attribute, const string &defaultValue, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the value of the attribute on tag at index which as a string.












<!----------------------------------------------------------------------------->

###int setAttribute(&tag, &attribute, value, which = 0)

<!--
_syntax: setAttribute(&tag, &attribute, value, which = 0)_
_name: setAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, int value, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the value of the attribute on tag as a double.












<!----------------------------------------------------------------------------->

###int setAttribute(&tag, &attribute, value, which = 0)

<!--
_syntax: setAttribute(&tag, &attribute, value, which = 0)_
_name: setAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, double value, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Refer to addAttribute












<!----------------------------------------------------------------------------->

###int setAttribute(&tag, &attribute, &value, which = 0)

<!--
_syntax: setAttribute(&tag, &attribute, &value, which = 0)_
_name: setAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, const string &value, int which=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Refer to addAttribute












<!----------------------------------------------------------------------------->

###int setAttribute(&tag, &attribute, value)

<!--
_syntax: setAttribute(&tag, &attribute, value)_
_name: setAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, int value_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Refer to addAttribute













<!----------------------------------------------------------------------------->

###int setAttribute(&tag, &attribute, value)

<!--
_syntax: setAttribute(&tag, &attribute, value)_
_name: setAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, double value_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Refer to addAttribute













<!----------------------------------------------------------------------------->

###int setAttribute(&tag, &attribute, &value)

<!--
_syntax: setAttribute(&tag, &attribute, &value)_
_name: setAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, const string &value_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Refer to addAttribute












<!----------------------------------------------------------------------------->

###bool loadFromBuffer(buffer)

<!--
_syntax: loadFromBuffer(buffer)_
_name: loadFromBuffer_
_returns: bool_
_returns_description: _
_parameters: string buffer_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Populates the ofxXmlSettings object from a string of containing xml.












<!----------------------------------------------------------------------------->

###void copyXmlToString(&str)

<!--
_syntax: copyXmlToString(&str)_
_name: copyXmlToString_
_returns: void_
_returns_description: _
_parameters: string &str_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Copies the contents of the ofxXmlSettings into the string str.












<!----------------------------------------------------------------------------->

###int writeTag(&tag, &valueString, which = 0)

<!--
_syntax: writeTag(&tag, &valueString, which = 0)_
_name: writeTag_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &valueString, int which=0_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool readTag(&tag, &valHandle, which = 0)

<!--
_syntax: readTag(&tag, &valHandle, which = 0)_
_name: readTag_
_returns: bool_
_returns_description: _
_parameters: const string &tag, TiXmlHandle &valHandle, int which=0_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###int writeAttribute(&tag, &attribute, &valueString, which = 0)

<!--
_syntax: writeAttribute(&tag, &attribute, &valueString, which = 0)_
_name: writeAttribute_
_returns: int_
_returns_description: _
_parameters: const string &tag, const string &attribute, const string &valueString, int which=0_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###TiXmlElement * getElementForAttribute(&tag, which)

<!--
_syntax: getElementForAttribute(&tag, which)_
_name: getElementForAttribute_
_returns: TiXmlElement *_
_returns_description: _
_parameters: const string &tag, int which_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool readIntAttribute(&tag, &attribute, &valueString, which)

<!--
_syntax: readIntAttribute(&tag, &attribute, &valueString, which)_
_name: readIntAttribute_
_returns: bool_
_returns_description: _
_parameters: const string &tag, const string &attribute, int &valueString, int which_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool readDoubleAttribute(&tag, &attribute, &outValue, which)

<!--
_syntax: readDoubleAttribute(&tag, &attribute, &outValue, which)_
_name: readDoubleAttribute_
_returns: bool_
_returns_description: _
_parameters: const string &tag, const string &attribute, double &outValue, int which_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool readStringAttribute(&tag, &attribute, &outValue, which)

<!--
_syntax: readStringAttribute(&tag, &attribute, &outValue, which)_
_name: readStringAttribute_
_returns: bool_
_returns_description: _
_parameters: const string &tag, const string &attribute, string &outValue, int which_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

##Variables



###TiXmlDocument doc

<!--
_name: doc_
_type: TiXmlDocument_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool bDocLoaded

<!--
_name: bDocLoaded_
_type: bool_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###TiXmlHandle storedHandle

<!--
_name: storedHandle_
_type: TiXmlHandle_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###int level

<!--
_name: level_
_type: int_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

