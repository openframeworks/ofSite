#class ofXml


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
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

Now you have an ofXml document, but you're not pointing at anything yet. The way to select which element you're looking at is by setting the current element, using setTo(const string& path), like this:

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



###ofXml::Attribute appendAttribute(&name)

<!--
_syntax: appendAttribute(&name)_
_name: appendAttribute_
_returns: ofXml::Attribute_
_returns_description: _
_parameters: const string &name_
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

###ofXml appendChild(&xml)

<!--
_syntax: appendChild(&xml)_
_name: appendChild_
_returns: ofXml_
_returns_description: _
_parameters: const ofXml &xml_
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

###ofXml appendChild(&&xml)

<!--
_syntax: appendChild(&&xml)_
_name: appendChild_
_returns: ofXml_
_returns_description: _
_parameters: ofXml &&xml_
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

###ofXml appendChild(&name)

<!--
_syntax: appendChild(&name)_
_name: appendChild_
_returns: ofXml_
_returns_description: _
_parameters: const string &name_
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

###ofXml::Search find(&path)

<!--
_syntax: find(&path)_
_name: find_
_returns: ofXml::Search_
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

###ofXml findFirst(&path)

<!--
_syntax: findFirst(&path)_
_name: findFirst_
_returns: ofXml_
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

###ofXml::Attribute getAttribute(&name)

<!--
_syntax: getAttribute(&name)_
_name: getAttribute_
_returns: ofXml::Attribute_
_returns_description: _
_parameters: const string &name_
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

###Range<ofXmlIterator< pugi::xml_attribute_iterator>  > getAttributes()

<!--
_syntax: getAttributes()_
_name: getAttributes_
_returns: Range<ofXmlIterator< pugi::xml_attribute_iterator>  >_
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

###ofXml getChild(&name)

<!--
_syntax: getChild(&name)_
_name: getChild_
_returns: ofXml_
_returns_description: _
_parameters: const string &name_
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

###Range<ofXmlIterator< pugi::xml_node_iterator>  > getChildren()

<!--
_syntax: getChildren()_
_name: getChildren_
_returns: Range<ofXmlIterator< pugi::xml_node_iterator>  >_
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

###Range<ofXmlIterator< pugi::xml_named_node_iterator>  > getChildren(&name)

<!--
_syntax: getChildren(&name)_
_name: getChildren_
_returns: Range<ofXmlIterator< pugi::xml_named_node_iterator>  >_
_returns_description: _
_parameters: const string &name_
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

###double getDoubleValue()

<!--
_syntax: getDoubleValue()_
_name: getDoubleValue_
_returns: double_
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

###ofXml::Attribute getFirstAttribute()

<!--
_syntax: getFirstAttribute()_
_name: getFirstAttribute_
_returns: ofXml::Attribute_
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

###ofXml getFirstChild()

<!--
_syntax: getFirstChild()_
_name: getFirstChild_
_returns: ofXml_
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

###ofXml::Attribute getLastAttribute()

<!--
_syntax: getLastAttribute()_
_name: getLastAttribute_
_returns: ofXml::Attribute_
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

###ofXml getLastChild()

<!--
_syntax: getLastChild()_
_name: getLastChild_
_returns: ofXml_
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

###ofXml getNextSibling()

<!--
_syntax: getNextSibling()_
_name: getNextSibling_
_returns: ofXml_
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

###ofXml getNextSibling(&name)

<!--
_syntax: getNextSibling(&name)_
_name: getNextSibling_
_returns: ofXml_
_returns_description: _
_parameters: const string &name_
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

###ofXml getPreviousSibling()

<!--
_syntax: getPreviousSibling()_
_name: getPreviousSibling_
_returns: ofXml_
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

###ofXml getPreviousSibling(&name)

<!--
_syntax: getPreviousSibling(&name)_
_name: getPreviousSibling_
_returns: ofXml_
_returns_description: _
_parameters: const string &name_
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

###unsigned int getUintValue()

<!--
_syntax: getUintValue()_
_name: getUintValue_
_returns: unsigned int_
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

###T getValue()

<!--
_syntax: getValue()_
_name: getValue_
_returns: T_
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

###ofXml insertChildAfter(&name, &after)

<!--
_syntax: insertChildAfter(&name, &after)_
_name: insertChildAfter_
_returns: ofXml_
_returns_description: _
_parameters: const string &name, const ofXml &after_
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

###ofXml insertChildBefore(&name, &after)

<!--
_syntax: insertChildBefore(&name, &after)_
_name: insertChildBefore_
_returns: ofXml_
_returns_description: _
_parameters: const string &name, const ofXml &after_
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

###bool load(&file)

<!--
_syntax: load(&file)_
_name: load_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &file_
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

###bool load(&buffer)

<!--
_syntax: load(&buffer)_
_name: load_
_returns: bool_
_returns_description: _
_parameters: const ofBuffer &buffer_
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

### ofXml(doc, &xml)

<!--
_syntax: ofXml(doc, &xml)_
_name: ofXml_
_returns: _
_returns_description: _
_parameters: shared_ptr< pugi::xml_document > doc, const pugi::xml_node &xml_
_access: private_
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

###bool parse(&xmlStr)

<!--
_syntax: parse(&xmlStr)_
_name: parse_
_returns: bool_
_returns_description: _
_parameters: const string &xmlStr_
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

###ofXml::Attribute prependAttribute(&name)

<!--
_syntax: prependAttribute(&name)_
_name: prependAttribute_
_returns: ofXml::Attribute_
_returns_description: _
_parameters: const string &name_
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

###ofXml prependChild(&xml)

<!--
_syntax: prependChild(&xml)_
_name: prependChild_
_returns: ofXml_
_returns_description: _
_parameters: const ofXml &xml_
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

###ofXml prependChild(&&xml)

<!--
_syntax: prependChild(&&xml)_
_name: prependChild_
_returns: ofXml_
_returns_description: _
_parameters: ofXml &&xml_
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

###ofXml prependChild(&name)

<!--
_syntax: prependChild(&name)_
_name: prependChild_
_returns: ofXml_
_returns_description: _
_parameters: const string &name_
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

###bool removeChild(&name)

<!--
_syntax: removeChild(&name)_
_name: removeChild_
_returns: bool_
_returns_description: _
_parameters: const string &name_
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

###bool save(&file)

<!--
_syntax: save(&file)_
_name: save_
_returns: bool_
_returns_description: _
_parameters: const filesystem::path &file_
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

###void set(&value)

<!--
_syntax: set(&value)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const T &value_
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

###void set(&value)

<!--
_syntax: set(&value)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const unsigned char &value_
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

###ofXml::Attribute setAttribute(&name, &value)

<!--
_syntax: setAttribute(&name, &value)_
_name: setAttribute_
_returns: ofXml::Attribute_
_returns_description: _
_parameters: const string &name, const T &value_
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

###void setName(&name)

<!--
_syntax: setName(&name)_
_name: setName_
_returns: void_
_returns_description: _
_parameters: const string &name_
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

###string toString(&indent)

<!--
_syntax: toString(&indent)_
_name: toString_
_returns: string_
_returns_description: _
_parameters: const string &indent_
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

##Variables



###shared_ptr< pugi::xml_document > doc

<!--
_name: doc_
_type: shared_ptr< pugi::xml_document >_
_access: private_
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

###pugi::xml_node xml

<!--
_name: xml_
_type: pugi::xml_node_
_access: private_
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

