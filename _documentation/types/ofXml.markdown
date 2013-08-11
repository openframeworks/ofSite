#class ofXml


##Description


The ofXml is a friendly wrapper around the xml functionality included in the Poco::XML library, in particular the Poco::XML::DOM. You can find some more information on that in the Poco Documentation, but hopefully we've wrapped up everything you might need, so that you don't need to dig into Poco itself. Conceptually you should think of an ofXml object as an XML document, because that's exactly what it is: it has a root element, some number of children, and a current element that you're pointing at. For instance, if your XML looked like this:

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


You load it into an ofXml document like so:

ofFile file; 
file.open("pictures.xml"); // open a file
ofBuffer buffer = file.readToBuffer(); // read to a buffer

ofXml pictures;
pictures.loadFromBuffer( buffer.getText() ); // now get the buffer as a string and make XML

Now you have an ofXml document, but you're not pointing at anything yet. The way to select which element you're looking at it by setting the current element, using setCurrentElement(const string& path), like this:

pictures.setCurrentElement("pictures"); // now we're at the root

or

pictures.setCurrentElement("pictures/picture[0]"); // now we're at the first picture.

or

pictures.setCurrentElement("pictures/picture[1]"); // now we're at the second picture.

or

pictures.setCurrentElement("pictures/picture[@id=0]"); // now we're at the first picture with the id of 0

To traverse, we can use the following methods:

int children = pictures.getNumChildren(); // how many do you have?

pictures.setCurrentElementToParent(); // go up a level

pictures.setCurrentElementToSibling(); // go to the next at your level
pictures.setCurrentElementToPrevSibling(); // go to the previous at your level

To get values, we use getValue(const string& path), like:

pictures.getValue("pictures/picture[0]/url"); // returns "http://apicture.co.uk/pic2.png"

To set values, we use setValue(const string& path, const string& value), like:

pictures.setValue("pictures/picture[0]/url", "http://superpicks.jp/pic1.png"); // sets the element in the DOM


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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Adds a child to the ofXml object. So if you have:

----
<pictures>
	<picture id="0">
		<url>http://apicture.co.uk/pic.png</url>
		<width>100</width>
		<height>100</height>
	</picture>
</pictures>
----

you can add a path like so:

----
xml.addPath("pictures/picture/views");
----

and that would create:

----
<pictures>
	<picture id="0">
		<url>http://apicture.co.uk/pic.png</url>
		<width>100</width>
		<height>100</height>
		<views/>
	</picture>
</pictures>
----

<!----------------------------------------------------------------------------->

###bool addValue(&path, &value, createEntirePath = false)

<!--
_syntax: addValue(&path, &value, createEntirePath = false)_
_name: addValue_
_returns: bool_
_returns_description: _
_parameters: const string &path, const string &value, bool createEntirePath=false_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Adds a child to the ofXml object. So if you have:

----
<pictures>
	<picture id="0">
		<url>http://apicture.co.uk/pic.png</url>
		<width>100</width>
		<height>100</height>
	</picture>
</pictures>
----

you can add a path like so:

----
xml.addPath("pictures/picture/views", "100");
----

and that would create:

----
<pictures>
	<picture id="0">
		<url>http://apicture.co.uk/pic.png</url>
		<width>100</width>
		<height>100</height>
		<views>100</views>
	</picture>
</pictures>
----





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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Adds one ofXml object to another.

----
firstXml.addXml(secondXml, true);
----

The second parameter tells the ofXml whether to add the entire XML document or whether to only add the current element of the XML being added.



<!----------------------------------------------------------------------------->

###bool clearAttributes(&path)

<!--
_syntax: clearAttributes(&path)_
_name: clearAttributes_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Removes all the attributes from a node.

----
<picture id="0" x="100" y="200">
----

would become

----
<picture>
----

<!----------------------------------------------------------------------------->

###bool clearAttributes()

<!--
_syntax: clearAttributes()_
_name: clearAttributes_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Removes all the attributes from a node.

----
<picture id="0" x="100" y="200">
----

would become

----
<picture>
----




<!----------------------------------------------------------------------------->

###bool clearContents(&path)

<!--
_syntax: clearContents(&path)_
_name: clearContents_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool clearContents()

<!--
_syntax: clearContents()_
_name: clearContents_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Removes all the contents from a node.

----
<picture id="0">
	<url>http://apicture.co.uk/pic.png</url>
	<width>100</width>
	<height>100</height>
	<views>100</views>
</picture>
----

would become

----
<picture>
</picture>
----




<!----------------------------------------------------------------------------->

###void copyXmlToString(&str)

<!--
_syntax: copyXmlToString(&str)_
_name: copyXmlToString_
_returns: void_
_returns_description: _
_parameters: string &str_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Copies the XML document to a string.





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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Returns whether a path exists. This can be a path to a node, like:

xml.exists("picture/pictures[2]/url");

or to an attribute:

xml.exists("picture/pictures[2][@id]");

or even a particular attribute anywhere in the DOM

xml.exists("//[@id='9']");

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _




Returns a map of all the attributes of the current node.



<!----------------------------------------------------------------------------->

###Element * getCurrentElement()

<!--
_syntax: getCurrentElement()_
_name: getCurrentElement_
_returns: Element *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the current Poco::XML::Element of the XML





<!----------------------------------------------------------------------------->

###string getCurrentElementName()

<!--
_syntax: getCurrentElementName()_
_name: getCurrentElementName_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the name of the current element in the XML.





<!----------------------------------------------------------------------------->

###Document * getDocument()

<!--
_syntax: getDocument()_
_name: getDocument_
_returns: Document *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the Poco::XML::Document that the ofXml object wraps.






<!----------------------------------------------------------------------------->

###Element * getElement(&path)

<!--
_syntax: getElement(&path)_
_name: getElement_
_returns: Element *_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Returns the element at the path or a null Element* if nothing is present at the path.




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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the number of children of the current node. Very useful for looping through children or for walking the DOM.





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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the value at the node indicated by the path. This can be a path that uses an element:

xml.getValue("picture/pictures[2]/url");

or an attribute:

xml.exists("picture/pictures[2][@id]");




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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Returns the value of the current element in the ofXml.




<!----------------------------------------------------------------------------->

###bool loadFromBuffer(buffer)

<!--
_syntax: loadFromBuffer(buffer)_
_name: loadFromBuffer_
_returns: bool_
_returns_description: _
_parameters: string buffer_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Constructor. On construction a Poco::XML::Document is created, but not an element, so you'll need to append new elements using addChild() and addAttribute().




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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Copy constructor. This clones the Poco::XML::Document so can be a little bit slow but is very safe.





<!----------------------------------------------------------------------------->

###ofXml operator=(&rhs)

<!--
_syntax: operator=(&rhs)_
_name: operator=_
_returns: ofXml_
_returns_description: _
_parameters: const ofXml &rhs_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Copy constructor. This clones the Poco::XML::Document so can be a little bit slow but is very safe.





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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Removes an element or attribute using the path. Returns false if the path is not valid. All children of the element are also removed.





<!----------------------------------------------------------------------------->

###bool resetCurrentElement()

<!--
_syntax: resetCurrentElement()_
_name: resetCurrentElement_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Sets the current element back to the root node of the document, i.e. the first child after the <xml> declaration.





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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Sets attribute at the path indicated. If the attribute doesn't already exist, it's created.




<!----------------------------------------------------------------------------->

###bool setCurrentElement(&path)

<!--
_syntax: setCurrentElement(&path)_
_name: setCurrentElement_
_returns: bool_
_returns_description: _
_parameters: const string &path_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Sets the current element to the path indicated. This can be up or down the DOM:

xml.setCurrentElement("pictures[1]/url"); // go down
xml.setCurrentElement("../"); // go up
xml.setCurrentElement("../pictures[0]/url"); // go up and then down



<!----------------------------------------------------------------------------->

###bool setCurrentElementToParent()

<!--
_syntax: setCurrentElementToParent()_
_name: setCurrentElementToParent_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Sets the current element to the parent of the current element. This returns false if the parent does not exist.




<!----------------------------------------------------------------------------->

###bool setCurrentElementToParent(numLevelsUp)

<!--
_syntax: setCurrentElementToParent(numLevelsUp)_
_name: setCurrentElementToParent_
_returns: bool_
_returns_description: _
_parameters: int numLevelsUp_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Sets the current element to the numLevelsUp-th parent of the current element.

xml.setCurrentElementToParent(3); // this is the same as xml.setCurrentElementToParent("../../../");





<!----------------------------------------------------------------------------->

###bool setCurrentElementToPrevSibling()

<!--
_syntax: setCurrentElementToPrevSibling()_
_name: setCurrentElementToPrevSibling_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



This sets the current element to the previous sibling element. If your document looks like this:

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

Then you could do the following:

xml.setCurrentElement("pictures/picture[1]"); // now current element is picture with id=1
xml.setCurrentElementToPrevSibling(); // now current element is picture with id=0



<!----------------------------------------------------------------------------->

###bool setCurrentElementToSibling()

<!--
_syntax: setCurrentElementToSibling()_
_name: setCurrentElementToSibling_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



This sets the current element to the previous sibling element. If your document looks like this:

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

Then you could do the following:

xml.setCurrentElement("pictures/picture[0]"); // now current element is picture with id=0
xml.setCurrentElementToSibling(); // now current element is picture with id=1




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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Sets the value of the element pointed at by the path. If the value, or any other element along the path, does not exist then it is created. This means that:

xml.setPath("/foo/bar/baz/quux", "qiix");

will create:

<foo>
	<bar>
		<baz>
			<quux>qiix</quux>
		</baz>
	</bar>
</foo>




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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Creates a string from the XML document. Useful for when you want to send or save the document.





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
_static: no_
_visible: True_
_advanced: False_
-->

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

###Element * element

<!--
_name: element_
_type: Element *_
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

