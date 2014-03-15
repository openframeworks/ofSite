#class ofXml


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

The ofXml is a friendly wrapper around the xml functionality included in the Poco::XML library, in particular the Poco::XML::DOM. You can find some more information on that in the Poco Documentation, but hopefully we've wrapped up everything you might need, so that you don't need to dig into Poco itself. Conceptually you should think of an ofXml object as an XML document, because that's exactly what it is: it has a root element, some number of children, and a current element that you're pointing at. For instance, if your XML looked like this:

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

You load it into an ofXml document like so:

~~~~{.cpp}
ofFile file; 
file.open("pictures.xml"); // open a file
ofBuffer buffer = file.readToBuffer(); // read to a buffer

ofXml pictures;
pictures.loadFromBuffer( buffer.getText() ); // now get the buffer as a string and make XML
~~~~

Now you have an ofXml document, but you're not pointing at anything yet. The way to select which element you're looking at it by setting the current element, using setTo(const string& path), like this:

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
_version_started: 0073_
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
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Adds a child to the ofXml object. So if you have:

~~~~{.cpp}
<pictures>
	<picture id="0">
		<url>http://apicture.co.uk/pic.png</url>
		<width>100</width>
		<height>100</height>
	</picture>
</pictures>
~~~~

you can add a path like so:

~~~~{.cpp}
xml.addPath("pictures/picture/views");
~~~~

and that would create:

~~~~{.cpp}
<pictures>
	<picture id="0">
		<url>http://apicture.co.uk/pic.png</url>
		<width>100</width>
		<height>100</height>
		<views/>
	</picture>
</pictures>
~~~~







<!----------------------------------------------------------------------------->

###bool addValue(&path, data = T(), createEntirePath = false)

<!--
_syntax: addValue(&path, data = T(), createEntirePath = false)_
_name: addValue_
_returns: bool_
_returns_description: _
_parameters: const string &path, T data=T(), bool createEntirePath=false_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Adds a child to the ofXml object. So if you have:

~~~~{.cpp}
<pictures>
	<picture id="0">
		<url>http://apicture.co.uk/pic.png</url>
		<width>100</width>
		<height>100</height>
	</picture>
</pictures>
~~~~

you can add a path like so:

~~~~{.cpp}
xml.addPath("pictures/picture/views", "100");
~~~~

and that would create:

~~~~{.cpp}
<pictures>
	<picture id="0">
		<url>http://apicture.co.uk/pic.png</url>
		<width>100</width>
		<height>100</height>
		<views>100</views>
	</picture>
</pictures>
~~~~







<!----------------------------------------------------------------------------->

###void addXml(&xml, copyAll = false)

<!--
_syntax: addXml(&xml, copyAll = false)_
_name: addXml_
_returns: void_
_returns_description: _
_parameters: ofXml &xml, bool copyAll=false_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Adds one ofXml object to another.

~~~~{.cpp}
firstXml.addXml(secondXml, true);
~~~~

The second parameter tells the ofXml whether to add the entire XML document or whether to only add the current element of the XML being added.







<!----------------------------------------------------------------------------->

###void clear()

<!--
_syntax: clear()_
_name: clear_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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

###void deserialize(&parameter)

<!--
_syntax: deserialize(&parameter)_
_name: deserialize_
_returns: void_
_returns_description: _
_parameters: ofAbstractParameter &parameter_
_access: public_
_version_started: 0073_
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
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns whether a path exists. This can be a path to a node, like:
~~~~{.cpp}
xml.exists("picture/pictures[2]/url");
~~~~
or to an attribute:
~~~~{.cpp}
xml.exists("picture/pictures[2][@id]");
~~~~
or even a particular attribute anywhere in the DOM
~~~~{.cpp}
xml.exists("//[@id='9']");
~~~~







<!----------------------------------------------------------------------------->

###string getAttribute(&path)

<!--
_syntax: getAttribute(&path)_
_name: getAttribute_
_returns: string_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns the value of an attribute or an empty string if it doesn't exist.







<!----------------------------------------------------------------------------->

###map< string, string > getAttributes()

<!--
_syntax: getAttributes()_
_name: getAttributes_
_returns: map< string, string >_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns a map of all the attributes of the current node.







<!----------------------------------------------------------------------------->

###bool getBoolValue()

<!--
_syntax: getBoolValue()_
_name: getBoolValue_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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
_version_started: 0073_
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
_version_started: 0073_
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
_version_started: 0073_
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
_version_started: 0073_
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
_version_started: 0073_
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
_version_started: 0073_
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
_version_started: 0073_
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
_version_started: 0073_
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

###Poco::XML::Document * getPocoDocument()

<!--
_syntax: getPocoDocument()_
_name: getPocoDocument_
_returns: Poco::XML::Document *_
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

###const Poco::XML::Document * getPocoDocument()

<!--
_syntax: getPocoDocument()_
_name: getPocoDocument_
_returns: const Poco::XML::Document *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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

###Poco::XML::Element * getPocoElement()

<!--
_syntax: getPocoElement()_
_name: getPocoElement_
_returns: Poco::XML::Element *_
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

###Poco::XML::Element * getPocoElement(&path)

<!--
_syntax: getPocoElement(&path)_
_name: getPocoElement_
_returns: Poco::XML::Element *_
_returns_description: _
_parameters: const string &path_
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

###const Poco::XML::Element * getPocoElement()

<!--
_syntax: getPocoElement()_
_name: getPocoElement_
_returns: const Poco::XML::Element *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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

###const Poco::XML::Element * getPocoElement(&path)

<!--
_syntax: getPocoElement(&path)_
_name: getPocoElement_
_returns: const Poco::XML::Element *_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0073_
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

###string getValue()

<!--
_syntax: getValue()_
_name: getValue_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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

###string getValue(&path)

<!--
_syntax: getValue(&path)_
_name: getValue_
_returns: string_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0073_
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

###T getValue(&path, returnVal = T())

<!--
_syntax: getValue(&path, returnVal = T())_
_name: getValue_
_returns: T_
_returns_description: _
_parameters: const string &path, T returnVal=T()_
_access: public_
_version_started: 0073_
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
_parameters: const string &path_
_access: public_
_version_started: 0073_
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
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Loads the XML file from a string. This string needs to be a properly formatted XML document. The method returns false if the document is not correctly created and true if it does.







<!----------------------------------------------------------------------------->

### ofXml()

<!--
_syntax: ofXml()_
_name: ofXml_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Constructor. On construction a Poco::XML::Document is created, but not an element, so you'll need to append new elements using addChild() and addAttribute().







<!----------------------------------------------------------------------------->

### ofXml(&path)

<!--
_syntax: ofXml(&path)_
_name: ofXml_
_returns: _
_returns_description: _
_parameters: const string &path_
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

### ofXml(&rhs)

<!--
_syntax: ofXml(&rhs)_
_name: ofXml_
_returns: _
_returns_description: _
_parameters: const ofXml &rhs_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Copy constructor. This clones the Poco::XML::Document so can be a little bit slow but is very safe.







<!----------------------------------------------------------------------------->

###const ofXml & operator=(&rhs)

<!--
_syntax: operator=(&rhs)_
_name: operator=_
_returns: const ofXml &_
_returns_description: _
_parameters: const ofXml &rhs_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Copy constructor. This clones the Poco::XML::Document so can be a little bit slow but is very safe.







<!----------------------------------------------------------------------------->

###void releaseAll()

<!--
_syntax: releaseAll()_
_name: releaseAll_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 0073_
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
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Removes an element or attribute using the path. Returns false if the path is not valid. All children of the element are also removed.







<!----------------------------------------------------------------------------->

###void remove()

<!--
_syntax: remove()_
_name: remove_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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

###bool removeAttributes(&path)

<!--
_syntax: removeAttributes(&path)_
_name: removeAttributes_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Removes all the attributes from a node.

~~~~{.cpp}
<picture id="0" x="100" y="200">
~~~~

would become

~~~~{.cpp}
<picture>
~~~~







<!----------------------------------------------------------------------------->

###bool removeAttributes()

<!--
_syntax: removeAttributes()_
_name: removeAttributes_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Removes all the attributes from a node.

~~~~{.cpp}
<picture id="0" x="100" y="200">
~~~~

would become

~~~~{.cpp}
<picture>
~~~~







<!----------------------------------------------------------------------------->

###bool removeContents(&path)

<!--
_syntax: removeContents(&path)_
_name: removeContents_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Removes all the contents from a node.

~~~~{.cpp}
<picture id="0">
	<url>http://apicture.co.uk/pic.png</url>
	<width>100</width>
	<height>100</height>
	<views>100</views>
</picture>
~~~~

would become

~~~~{.cpp}
<picture>
</picture>
~~~~







<!----------------------------------------------------------------------------->

###bool removeContents()

<!--
_syntax: removeContents()_
_name: removeContents_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Sets the current element back to the root node of the document, i.e. the first child after the <xml> declaration.







<!----------------------------------------------------------------------------->

###bool save(&path)

<!--
_syntax: save(&path)_
_name: save_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Save the XML object to a file.







<!----------------------------------------------------------------------------->

###void serialize(&parameter)

<!--
_syntax: serialize(&parameter)_
_name: serialize_
_returns: void_
_returns_description: _
_parameters: const ofAbstractParameter &parameter_
_access: public_
_version_started: 0073_
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
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Sets attribute at the path indicated. If the attribute doesn't already exist, it's created.







<!----------------------------------------------------------------------------->

###bool setTo(&path)

<!--
_syntax: setTo(&path)_
_name: setTo_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Sets the current element to the path indicated. This can be up or down the DOM:

~~~~{.cpp}
xml.setTo("pictures[1]/url"); // go down
xml.setTo("../"); // go up
xml.setTo("../pictures[0]/url"); // go up and then down
~~~~







<!----------------------------------------------------------------------------->

###bool setToChild(index)

<!--
_syntax: setToChild(index)_
_name: setToChild_
_returns: bool_
_returns_description: _
_parameters: int index_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Sets the current element to the index-th child.







<!----------------------------------------------------------------------------->

###bool setToParent()

<!--
_syntax: setToParent()_
_name: setToParent_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Sets the current element to the parent of the current element. This returns false if the parent does not exist.







<!----------------------------------------------------------------------------->

###bool setToParent(numLevelsUp)

<!--
_syntax: setToParent(numLevelsUp)_
_name: setToParent_
_returns: bool_
_returns_description: _
_parameters: int numLevelsUp_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Sets the current element to the numLevelsUp-th parent of the current element.
~~~~{.cpp}
xml.setCurrentElementToParent(3); // this is the same as xml.setCurrentElementToParent("../../../");
~~~~







<!----------------------------------------------------------------------------->

###bool setToPrevSibling()

<!--
_syntax: setToPrevSibling()_
_name: setToPrevSibling_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This sets the current element to the previous sibling element. If your document looks like this:

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

Then you could do the following:

~~~~{.cpp}
xml.setCurrentElement("pictures/picture[1]"); // now current element is picture with id=1
xml.setCurrentElementToPrevSibling(); // now current element is picture with id=0
~~~~







<!----------------------------------------------------------------------------->

###bool setToSibling()

<!--
_syntax: setToSibling()_
_name: setToSibling_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This sets the current element to the previous sibling element. If your document looks like this:

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

Then you could do the following:

~~~~{.cpp}
xml.setCurrentElement("pictures/picture[0]"); // now current element is picture with id=0
xml.setCurrentElementToSibling(); // now current element is picture with id=1
~~~~







<!----------------------------------------------------------------------------->

###bool setValue(&path, &value)

<!--
_syntax: setValue(&path, &value)_
_name: setValue_
_returns: bool_
_returns_description: _
_parameters: const string &path, const string &value_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Sets the value of the element pointed at by the path. If the value, or any other element along the path, does not exist then it is created. This means that:

xml.setPath("/foo/bar/baz/quux", "qiix");

will create:

~~~~{.cpp}
<foo>
	<bar>
		<baz>
			<quux>qiix</quux>
		</baz>
	</bar>
</foo>
~~~~







<!----------------------------------------------------------------------------->

###string toString()

<!--
_syntax: toString()_
_name: toString_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Creates a string from the XML document. Useful for when you want to send or save the document.







<!----------------------------------------------------------------------------->

###vector< string > tokenize(&str, &delim)

<!--
_syntax: tokenize(&str, &delim)_
_name: tokenize_
_returns: vector< string >_
_returns_description: _
_parameters: const string &str, const string &delim_
_access: public_
_version_started: 0073_
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

### ~ofXml()

<!--
_syntax: ~ofXml()_
_name: ~ofXml_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Destructor. Deletes both the current element and the current document.







<!----------------------------------------------------------------------------->

##Variables



###Poco::XML::Document * document

<!--
_name: document_
_type: Poco::XML::Document *_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


This is the XML document that the ofXml object wraps.







<!----------------------------------------------------------------------------->

###Poco::XML::Element * element

<!--
_name: element_
_type: Poco::XML::Element *_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


This is the current element that the ofXml object points at.







<!----------------------------------------------------------------------------->

