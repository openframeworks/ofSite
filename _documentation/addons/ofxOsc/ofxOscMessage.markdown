#class ofxOscMessage


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description





##Methods



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








_description: _








<!----------------------------------------------------------------------------->

###void addInt64Arg(argument)

<!--
_syntax: addInt64Arg(argument)_
_name: addInt64Arg_
_returns: void_
_returns_description: _
_parameters: uint64_t argument_
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








_description: _








<!----------------------------------------------------------------------------->

###void addStringArg(argument)

<!--
_syntax: addStringArg(argument)_
_name: addStringArg_
_returns: void_
_returns_description: _
_parameters: string argument_
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

clear this message, erase all contents 








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

return the address 








_description: _








<!----------------------------------------------------------------------------->

###float getArgAsFloat(index)

<!--
_syntax: getArgAsFloat(index)_
_name: getArgAsFloat_
_returns: float_
_returns_description: _
_parameters: int index_
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

###int32_t getArgAsInt32(index)

<!--
_syntax: getArgAsInt32(index)_
_name: getArgAsInt32_
_returns: int32_t_
_returns_description: _
_parameters: int index_
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


get the argument with the given index as an int, float, or string ensure that the type matches what you're requesting (eg for an int argument, getArgType(index)==OF_TYPE_INT32 or getArgTypeName(index)=="int32") 







_description: _








<!----------------------------------------------------------------------------->

###uint64_t getArgAsInt64(index)

<!--
_syntax: getArgAsInt64(index)_
_name: getArgAsInt64_
_returns: uint64_t_
_returns_description: _
_parameters: int index_
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

###string getArgAsString(index)

<!--
_syntax: getArgAsString(index)_
_name: getArgAsString_
_returns: string_
_returns_description: _
_parameters: int index_
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

###ofxOscArgType getArgType(index)

<!--
_syntax: getArgType(index)_
_name: getArgType_
_returns: ofxOscArgType_
_returns_description: _
_parameters: int index_
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

return argument type code for argument # index 








_description: _








<!----------------------------------------------------------------------------->

###string getArgTypeName(index)

<!--
_syntax: getArgTypeName(index)_
_name: getArgTypeName_
_returns: string_
_returns_description: _
_parameters: int index_
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


return argument type name as stringeither "int", "float", or "string" 








_description: _








<!----------------------------------------------------------------------------->

###int getNumArgs()

<!--
_syntax: getNumArgs()_
_name: getNumArgs_
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

return number of argumentsļ 








_description: _








<!----------------------------------------------------------------------------->

###string getRemoteIp()

<!--
_syntax: getRemoteIp()_
_name: getRemoteIp_
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

return the remote ip 








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

return the remote port 








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

###void setAddress(_address)

<!--
_syntax: setAddress(_address)_
_name: setAddress_
_returns: void_
_returns_description: _
_parameters: string _address_
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

message construction 








_description: _








<!----------------------------------------------------------------------------->

###void setRemoteEndpoint(host, port)

<!--
_syntax: setRemoteEndpoint(host, port)_
_name: setRemoteEndpoint_
_returns: void_
_returns_description: _
_parameters: string host, int port_
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

host and port of the remote endpoint 








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

_description: _








<!----------------------------------------------------------------------------->

###string remote_host

<!--
_name: remote_host_
_type: string_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int remote_port

<!--
_name: remote_port_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

