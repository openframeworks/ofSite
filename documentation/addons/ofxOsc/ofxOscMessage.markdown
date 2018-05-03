#class ofxOscMessage


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription


an OSC message with address and arguments





##Description





##Methods



###void addBlobArg(&argument)

<!--
_syntax: addBlobArg(&argument)_
_name: addBlobArg_
_returns: void_
_returns_description: _
_parameters: const ofBuffer &argument_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a binary blog





_description: _







<!----------------------------------------------------------------------------->

###void addBoolArg(argument)

<!--
_syntax: addBoolArg(argument)_
_name: addBoolArg_
_returns: void_
_returns_description: _
_parameters: bool argument_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a bool
true sends a OFXOSC_TYPE_TRUE & false sends a OFXOSC_TYPE_FALSE





_description: _







<!----------------------------------------------------------------------------->

###void addCharArg(argument)

<!--
_syntax: addCharArg(argument)_
_name: addCharArg_
_returns: void_
_returns_description: _
_parameters: char argument_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a char





_description: _







<!----------------------------------------------------------------------------->

###void addDoubleArg(argument)

<!--
_syntax: addDoubleArg(argument)_
_name: addDoubleArg_
_returns: void_
_returns_description: _
_parameters: double argument_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a 64-bit double





_description: _







<!----------------------------------------------------------------------------->

###void addFloatArg(argument)

<!--
_syntax: addFloatArg(argument)_
_name: addFloatArg_
_returns: void_
_returns_description: _
_parameters: float argument_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a 32-bit float





_description: _







<!----------------------------------------------------------------------------->

###void addImpulseArg()

<!--
_syntax: addImpulseArg()_
_name: addImpulseArg_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a trigger impulse (has no value)
alias for addTriggerArg()





_description: _







<!----------------------------------------------------------------------------->

###void addInfinitumArg()

<!--
_syntax: addInfinitumArg()_
_name: addInfinitumArg_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a trigger impulse (has no value)
alias for addTriggerArg()





_description: _







<!----------------------------------------------------------------------------->

###void addInt32Arg(argument)

<!--
_syntax: addInt32Arg(argument)_
_name: addInt32Arg_
_returns: void_
_returns_description: _
_parameters: int32_t argument_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a 32-bit integer





_description: _







<!----------------------------------------------------------------------------->

###void addInt64Arg(argument)

<!--
_syntax: addInt64Arg(argument)_
_name: addInt64Arg_
_returns: void_
_returns_description: _
_parameters: int64_t argument_
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

add a 64-bit integer





_description: _







<!----------------------------------------------------------------------------->

###void addIntArg(argument)

<!--
_syntax: addIntArg(argument)_
_name: addIntArg_
_returns: void_
_returns_description: _
_parameters: int32_t argument_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a 32-bit integer





_description: _







<!----------------------------------------------------------------------------->

###void addMidiMessageArg(argument)

<!--
_syntax: addMidiMessageArg(argument)_
_name: addMidiMessageArg_
_returns: void_
_returns_description: _
_parameters: uint32_t argument_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a 4-byte MIDI message





_description: _







<!----------------------------------------------------------------------------->

###void addNoneArg()

<!--
_syntax: addNoneArg()_
_name: addNoneArg_
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

add a none/nil (has no value)





_description: _







<!----------------------------------------------------------------------------->

###void addRgbaColorArg(argument)

<!--
_syntax: addRgbaColorArg(argument)_
_name: addRgbaColorArg_
_returns: void_
_returns_description: _
_parameters: uint32_t argument_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a 32-bit color





_description: _







<!----------------------------------------------------------------------------->

###void addStringArg(&argument)

<!--
_syntax: addStringArg(&argument)_
_name: addStringArg_
_returns: void_
_returns_description: _
_parameters: const string &argument_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a string





_description: _







<!----------------------------------------------------------------------------->

###void addSymbolArg(&argument)

<!--
_syntax: addSymbolArg(&argument)_
_name: addSymbolArg_
_returns: void_
_returns_description: _
_parameters: const string &argument_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a symbol (string)





_description: _







<!----------------------------------------------------------------------------->

###void addTimetagArg(argument)

<!--
_syntax: addTimetagArg(argument)_
_name: addTimetagArg_
_returns: void_
_returns_description: _
_parameters: uint64_t argument_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a 64-bit NTP time tag





_description: _







<!----------------------------------------------------------------------------->

###void addTriggerArg()

<!--
_syntax: addTriggerArg()_
_name: addTriggerArg_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

add a trigger impulse (has no value)





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
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

clear this message





_description: _







<!----------------------------------------------------------------------------->

###ofxOscMessage & copy(&other)

<!--
_syntax: copy(&other)_
_name: copy_
_returns: ofxOscMessage &_
_returns_description: _
_parameters: const ofxOscMessage &other_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

for operator= and copy constructor





_description: _







<!----------------------------------------------------------------------------->

###string getAddress()

<!--
_syntax: getAddress()_
_name: getAddress_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\return the OSC address





_description: _







<!----------------------------------------------------------------------------->

###ofBuffer getArgAsBlob(index)

<!--
_syntax: getArgAsBlob(index)_
_name: getArgAsBlob_
_returns: ofBuffer_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

**Parameters:**

index The index of the queried item.
\return given argument as a binary blob





_description: _







<!----------------------------------------------------------------------------->

###bool getArgAsBool(index)

<!--
_syntax: getArgAsBool(index)_
_name: getArgAsBool_
_returns: bool_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get argument as a bool, converts numeric types automatically
this argument type matches both OFXOSC_TYPE_TRUE & OFXOSC_TYPE_FALSE

**Parameters:**

index The index of the queried item.
\return given argument value as a bool





_description: _







<!----------------------------------------------------------------------------->

###char getArgAsChar(index)

<!--
_syntax: getArgAsChar(index)_
_name: getArgAsChar_
_returns: char_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get argument as a string, converts numeric types with a warning

**Parameters:**

index The index of the queried item.
\return given argument value as a string





_description: _







<!----------------------------------------------------------------------------->

###double getArgAsDouble(index)

<!--
_syntax: getArgAsDouble(index)_
_name: getArgAsDouble_
_returns: double_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get argument as a double, converts numeric types automatically

**Parameters:**

index The index of the queried item.
\return given argument value as a double





_description: _







<!----------------------------------------------------------------------------->

###float getArgAsFloat(index)

<!--
_syntax: getArgAsFloat(index)_
_name: getArgAsFloat_
_returns: float_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get argument as a float, converts numeric types automatically
prints a warning when converting higher precision types

**Parameters:**

index The index of the queried item.
\return given argument value as a float





_description: _







<!----------------------------------------------------------------------------->

###bool getArgAsImpulse(index)

<!--
_syntax: getArgAsImpulse(index)_
_name: getArgAsImpulse_
_returns: bool_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get argument as a trigger impulse
this is an alias for getArgAsTrigger()

**Parameters:**

index The index of the queried item.
\return true if argument was a trigger





_description: _







<!----------------------------------------------------------------------------->

###bool getArgAsInfinitum(index)

<!--
_syntax: getArgAsInfinitum(index)_
_name: getArgAsInfinitum_
_returns: bool_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get argument as a trigger impulse
this is an alias for getArgAsTrigger()

**Parameters:**

index The index of the queried item.
\return true if argument was a trigger





_description: _







<!----------------------------------------------------------------------------->

###int32_t getArgAsInt(index)

<!--
_syntax: getArgAsInt(index)_
_name: getArgAsInt_
_returns: int32_t_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get argument as an integer, converts numeric types automatically
prints a warning when converting higher precision types

**Parameters:**

index The index of the queried item.
\return given argument value as a 32-bit int





_description: _







<!----------------------------------------------------------------------------->

###int32_t getArgAsInt32(index)

<!--
_syntax: getArgAsInt32(index)_
_name: getArgAsInt32_
_returns: int32_t_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get argument as an integer, converts numeric types automatically
prints a warning when converting higher precision types

**Parameters:**

index The index of the queried item.
\return given argument value as a 32-bit int





_description: _







<!----------------------------------------------------------------------------->

###int64_t getArgAsInt64(index)

<!--
_syntax: getArgAsInt64(index)_
_name: getArgAsInt64_
_returns: int64_t_
_returns_description: _
_parameters: size_t index_
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

get argument as a 64-bit integer, converts numeric types automatically
\return given argument value as a 64-bit int

**Parameters:**

index The index of the queried item.





_description: _







<!----------------------------------------------------------------------------->

###uint32_t getArgAsMidiMessage(index)

<!--
_syntax: getArgAsMidiMessage(index)_
_name: getArgAsMidiMessage_
_returns: uint32_t_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

**Parameters:**

index The index of the queried item.
\return given argument value as a 4-byte midi message





_description: _







<!----------------------------------------------------------------------------->

###bool getArgAsNone(index)

<!--
_syntax: getArgAsNone(index)_
_name: getArgAsNone_
_returns: bool_
_returns_description: _
_parameters: size_t index_
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

get argument as a none/nil

**Parameters:**

index The index of the queried item.
\return true if argument was a none/nil





_description: _







<!----------------------------------------------------------------------------->

###uint32_t getArgAsRgbaColor(index)

<!--
_syntax: getArgAsRgbaColor(index)_
_name: getArgAsRgbaColor_
_returns: uint32_t_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get an argument as an RGBA color, converts int32 automatically

**Parameters:**

index The index of the queried item.
\return given argument as a 32-bit color value





_description: _







<!----------------------------------------------------------------------------->

###string getArgAsString(index)

<!--
_syntax: getArgAsString(index)_
_name: getArgAsString_
_returns: string_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get argument as a string, converts numeric types with a warning

**Parameters:**

index The index of the queried item.
\return given argument value as a string





_description: _







<!----------------------------------------------------------------------------->

###string getArgAsSymbol(index)

<!--
_syntax: getArgAsSymbol(index)_
_name: getArgAsSymbol_
_returns: string_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get argument as a symbol (string), converts numeric types with a warning

**Parameters:**

index The index of the queried item.
\return given argument value as a symbol (string)





_description: _







<!----------------------------------------------------------------------------->

###uint64_t getArgAsTimetag(index)

<!--
_syntax: getArgAsTimetag(index)_
_name: getArgAsTimetag_
_returns: uint64_t_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

**Parameters:**

index The index of the queried item.
\return given argument as a 64-bit NTP time tag





_description: _







<!----------------------------------------------------------------------------->

###bool getArgAsTrigger(index)

<!--
_syntax: getArgAsTrigger(index)_
_name: getArgAsTrigger_
_returns: bool_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get argument as a trigger impulse

**Parameters:**

index The index of the queried item.
\return true if argument was a trigger





_description: _







<!----------------------------------------------------------------------------->

###ofxOscArgType getArgType(index)

<!--
_syntax: getArgType(index)_
_name: getArgType_
_returns: ofxOscArgType_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

**Parameters:**

index The index of the queried item.
\return argument type code for a given index





_description: _







<!----------------------------------------------------------------------------->

###string getArgTypeName(index)

<!--
_syntax: getArgTypeName(index)_
_name: getArgTypeName_
_returns: string_
_returns_description: _
_parameters: size_t index_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

**Parameters:**

index The index of the queried item.
\return argument type tag char as a string





_description: _







<!----------------------------------------------------------------------------->

###size_t getNumArgs()

<!--
_syntax: getNumArgs()_
_name: getNumArgs_
_returns: size_t_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\return number of arguments





_description: _







<!----------------------------------------------------------------------------->

###string getRemoteHost()

<!--
_syntax: getRemoteHost()_
_name: getRemoteHost_
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

\return the remote host name/ip or "" if not set





_description: _







<!----------------------------------------------------------------------------->

###int getRemotePort()

<!--
_syntax: getRemotePort()_
_name: getRemotePort_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\return the remote port or 0 if not set





_description: _







<!----------------------------------------------------------------------------->

###string getTypeString()

<!--
_syntax: getTypeString()_
_name: getTypeString_
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

**Parameters:**

index The index of the queried item.
\return type tags for all arguments as a string, 1 char for each argument





_description: _







<!----------------------------------------------------------------------------->

### ofxOscMessage(&other)

<!--
_syntax: ofxOscMessage(&other)_
_name: ofxOscMessage_
_returns: _
_returns_description: _
_parameters: const ofxOscMessage &other_
_access: public_
_version_started: 007_
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

### ofxOscMessage()

<!--
_syntax: ofxOscMessage()_
_name: ofxOscMessage_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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

###ofxOscMessage & operator=(&other)

<!--
_syntax: operator=(&other)_
_name: operator=_
_returns: ofxOscMessage &_
_returns_description: _
_parameters: const ofxOscMessage &other_
_access: public_
_version_started: 007_
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

###void setAddress(&address)

<!--
_syntax: setAddress(&address)_
_name: setAddress_
_returns: void_
_returns_description: _
_parameters: const string &address_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

set the message address, must start with a /





_description: _







<!----------------------------------------------------------------------------->

###void setRemoteEndpoint(&host, port)

<!--
_syntax: setRemoteEndpoint(&host, port)_
_name: setRemoteEndpoint_
_returns: void_
_returns_description: _
_parameters: const string &host, int port_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

set host and port of the remote endpoint,
this is mainly used by ofxOscReceiver





_description: _







<!----------------------------------------------------------------------------->

### ~ofxOscMessage()

<!--
_syntax: ~ofxOscMessage()_
_name: ~ofxOscMessage_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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



###string address

<!--
_name: address_
_type: string_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< OSC address, must start with a /





_description: _







<!----------------------------------------------------------------------------->

###ofxOscArg args

<!--
_name: args_
_type: ofxOscArg_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< current arguments





_description: _







<!----------------------------------------------------------------------------->

###string remoteHost

<!--
_name: remoteHost_
_type: string_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< host name/ip the message was sent from





_description: _







<!----------------------------------------------------------------------------->

###int remotePort

<!--
_name: remotePort_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< port the message was sent from





_description: _







<!----------------------------------------------------------------------------->

