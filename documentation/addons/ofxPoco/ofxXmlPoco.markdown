#class ofxXmlPoco


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description

The ofXmlPoco is a friendly wrapper around the xml functionality included in the Poco::XML library, in particular the Poco::XML::DOM. You can find some more information on that in the Poco Documentation, but hopefully we've wrapped up everything you might need, so that you don't need to dig into Poco itself. Conceptually you should think of an ofXmlPoco object as an XML document, because that's exactly what it is: it has a root element, some number of children, and a current element that you're pointing at. For instance, if your XML looked like this:

~~~~{.cpp}
<pictures>
	<picture id="0">
		<url>http://apicture.co.uk/pic.png</url>
		<width>100</width>
		<height>100</height>
	</picture>
	<picture id="1">
		<url>http://apicture.co.uk/pic2.png</url>
		<width>100</width>
		<height>100</height>
	</picture>
</pictures>
~~~~

You load it into an ofXmlPoco document like so:

~~~~{.cpp}
ofFile file;
file.open("pictures.xml"); // open a file
ofBuffer buffer = file.readToBuffer(); // read to a buffer

ofXmlPoco pictures;
pictures.loadFromBuffer( buffer.getText() ); // now get the buffer as a string and make XML
~~~~

Now you have an ofXmlPoco document, but you're not pointing at anything yet. The way to select which element you're looking at is by setting the current element, using setTo(const string& path), like this:

~~~~{.cpp}
pictures.setTo("pictures"); // now we're at the root
~~~~

or

~~~~{.cpp}
pictures.setTo("pictures/picture[0]"); // now we're at the first picture.
~~~~

or
~~~~{.cpp}
pictures.setTo("pictures/picture[1]"); // now we're at the second picture.
~~~~
or
~~~~{.cpp}
pictures.setTo("pictures/picture[@id=0]"); // now we're at the first picture with the id of 0
~~~~
To traverse, we can use the following methods:
~~~~{.cpp}
int children = pictures.getNumChildren(); // how many do you have?

pictures.setToParent(); // go up a level

pictures.setToSibling(); // go to the next at your level
pictures.setToPrevSibling(); // go to the previous at your level
~~~~
To get values, we use getValue(const string& path), like:
~~~~{.cpp}
pictures.getValue("pictures/picture[0]/url"); // returns "http://apicture.co.uk/pic2.png"
~~~~
To set values, we use setValue(const string& path, const string& value), like:
~~~~{.cpp}
pictures.setValue("pictures/picture[0]/url", "http://superpicks.jp/pic1.png"); // sets the element in the DOM
~~~~





##Methods



###string DOMErrorMessage(msg)

<!--
_syntax: DOMErrorMessage(msg)_
_name: DOMErrorMessage_
_returns: string_
_returns_description: _
_parameters: short msg_
_access: protected_
_version_started: 0.10.0_
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

###bool addChild(&path)

<!--
_syntax: addChild(&path)_
_name: addChild_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###bool addValue(&path, data, createEntirePath = false)

<!--
_syntax: addValue(&path, data, createEntirePath = false)_
_name: addValue_
_returns: bool_
_returns_description: _
_parameters: const string &path, T data, bool createEntirePath=false_
_access: public_
_version_started: 0.10.0_
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

###void addXml(&xml, copyAll = false)

<!--
_syntax: addXml(&xml, copyAll = false)_
_name: addXml_
_returns: void_
_returns_description: _
_parameters: ofxXmlPoco &xml, bool copyAll=false_
_access: public_
_version_started: 0.10.0_
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

###void clear()

<!--
_syntax: clear()_
_name: clear_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###bool exists(&path)

<!--
_syntax: exists(&path)_
_name: exists_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###string getAttribute(&path)

<!--
_syntax: getAttribute(&path)_
_name: getAttribute_
_returns: string_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###int getAttributes()

<!--
_syntax: getAttributes()_
_name: getAttributes_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###bool getBoolValue(&path)

<!--
_syntax: getBoolValue(&path)_
_name: getBoolValue_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###bool getBoolValue()

<!--
_syntax: getBoolValue()_
_name: getBoolValue_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###float getFloatValue(&path)

<!--
_syntax: getFloatValue(&path)_
_name: getFloatValue_
_returns: float_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###float getFloatValue()

<!--
_syntax: getFloatValue()_
_name: getFloatValue_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###int64_t getInt64Value(&path)

<!--
_syntax: getInt64Value(&path)_
_name: getInt64Value_
_returns: int64_t_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###int64_t getInt64Value()

<!--
_syntax: getInt64Value()_
_name: getInt64Value_
_returns: int64_t_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###int getIntValue(&path)

<!--
_syntax: getIntValue(&path)_
_name: getIntValue_
_returns: int_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###int getIntValue()

<!--
_syntax: getIntValue()_
_name: getIntValue_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###string getName()

<!--
_syntax: getName()_
_name: getName_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###int getNumChildren(&path)

<!--
_syntax: getNumChildren(&path)_
_name: getNumChildren_
_returns: int_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###int getNumChildren()

<!--
_syntax: getNumChildren()_
_name: getNumChildren_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###int * getPocoDocument()

<!--
_syntax: getPocoDocument()_
_name: getPocoDocument_
_returns: int *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###const int * getPocoDocument()

<!--
_syntax: getPocoDocument()_
_name: getPocoDocument_
_returns: const int *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###int * getPocoElement()

<!--
_syntax: getPocoElement()_
_name: getPocoElement_
_returns: int *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###int * getPocoElement()

<!--
_syntax: getPocoElement()_
_name: getPocoElement_
_returns: int *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###const int * getPocoElement()

<!--
_syntax: getPocoElement()_
_name: getPocoElement_
_returns: const int *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###const int * getPocoElement()

<!--
_syntax: getPocoElement()_
_name: getPocoElement_
_returns: const int *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###string getValue(&path)

<!--
_syntax: getValue(&path)_
_name: getValue_
_returns: string_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Returns the value of the current element in the ofXml.







<!----------------------------------------------------------------------------->

###T getValue(&path, returnVal)

<!--
_syntax: getValue(&path, returnVal)_
_name: getValue_
_returns: T_
_returns_description: _
_parameters: const string &path, T returnVal_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Returns the value at the node indicated by the path. This can be a path that uses an element:

~~~~{.cpp}
xml.getValue("picture/pictures[2]/url");
~~~~

or an attribute:

~~~~{.cpp}
xml.exists("picture/pictures[2][@id]");
~~~~







<!----------------------------------------------------------------------------->

###string getValue()

<!--
_syntax: getValue()_
_name: getValue_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###bool load(&path)

<!--
_syntax: load(&path)_
_name: load_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &path_
_access: public_
_version_started: 0.10.0_
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

###bool loadFromBuffer(&buffer)

<!--
_syntax: loadFromBuffer(&buffer)_
_name: loadFromBuffer_
_returns: bool_
_returns_description: _
_parameters: const string &buffer_
_access: public_
_version_started: 0.10.0_
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

### ofxXmlPoco(&path)

<!--
_syntax: ofxXmlPoco(&path)_
_name: ofxXmlPoco_
_returns: _
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

### ofxXmlPoco(&rhs)

<!--
_syntax: ofxXmlPoco(&rhs)_
_name: ofxXmlPoco_
_returns: _
_returns_description: _
_parameters: const ofxXmlPoco &rhs_
_access: public_
_version_started: 0.10.0_
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

### ofxXmlPoco()

<!--
_syntax: ofxXmlPoco()_
_name: ofxXmlPoco_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###const ofxXmlPoco & operator=(&rhs)

<!--
_syntax: operator=(&rhs)_
_name: operator=_
_returns: const ofxXmlPoco &_
_returns_description: _
_parameters: const ofxXmlPoco &rhs_
_access: public_
_version_started: 0.10.0_
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

###void releaseAll()

<!--
_syntax: releaseAll()_
_name: releaseAll_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 0.10.0_
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

###bool remove(&path)

<!--
_syntax: remove(&path)_
_name: remove_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###void remove()

<!--
_syntax: remove()_
_name: remove_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###bool removeAttribute(&path)

<!--
_syntax: removeAttribute(&path)_
_name: removeAttribute_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###bool removeAttributes(&path)

<!--
_syntax: removeAttributes(&path)_
_name: removeAttributes_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###bool removeAttributes()

<!--
_syntax: removeAttributes()_
_name: removeAttributes_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###bool removeContents(&path)

<!--
_syntax: removeContents(&path)_
_name: removeContents_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###bool removeContents()

<!--
_syntax: removeContents()_
_name: removeContents_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###bool reset()

<!--
_syntax: reset()_
_name: reset_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###bool save(&path)

<!--
_syntax: save(&path)_
_name: save_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &path_
_access: public_
_version_started: 0.10.0_
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

###bool setAttribute(&path, &value)

<!--
_syntax: setAttribute(&path, &value)_
_name: setAttribute_
_returns: bool_
_returns_description: _
_parameters: const string &path, const string &value_
_access: public_
_version_started: 0.10.0_
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

###bool setTo(&path)

<!--
_syntax: setTo(&path)_
_name: setTo_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0.10.0_
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

###bool setToChild(index)

<!--
_syntax: setToChild(index)_
_name: setToChild_
_returns: bool_
_returns_description: _
_parameters: unsigned long index_
_access: public_
_version_started: 0.10.0_
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

###bool setToParent()

<!--
_syntax: setToParent()_
_name: setToParent_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###bool setToParent(numLevelsUp)

<!--
_syntax: setToParent(numLevelsUp)_
_name: setToParent_
_returns: bool_
_returns_description: _
_parameters: int numLevelsUp_
_access: public_
_version_started: 0.10.0_
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

###bool setToPrevSibling()

<!--
_syntax: setToPrevSibling()_
_name: setToPrevSibling_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###bool setToSibling()

<!--
_syntax: setToSibling()_
_name: setToSibling_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###bool setValue(&path, &value)

<!--
_syntax: setValue(&path, &value)_
_name: setValue_
_returns: bool_
_returns_description: _
_parameters: const string &path, const string &value_
_access: public_
_version_started: 0.10.0_
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

###string toString()

<!--
_syntax: toString()_
_name: toString_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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

###int tokenize()

<!--
_syntax: tokenize()_
_name: tokenize_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

### ~ofxXmlPoco()

<!--
_syntax: ~ofxXmlPoco()_
_name: ~ofxXmlPoco_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
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



###int * document

<!--
_name: document_
_type: int *_
_access: protected_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int * element

<!--
_name: element_
_type: int *_
_access: protected_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

