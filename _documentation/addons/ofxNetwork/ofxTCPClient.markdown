#class ofxTCPClient


##Description












##Methods



### ofxTCPClient()

<!--
_syntax: ofxTCPClient()_
_name: ofxTCPClient_
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














<!----------------------------------------------------------------------------->

### ~ofxTCPClient()

<!--
_syntax: ~ofxTCPClient()_
_name: ~ofxTCPClient_
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














<!----------------------------------------------------------------------------->

###void threadedFunction()

<!--
_syntax: threadedFunction()_
_name: threadedFunction_
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
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool setup(ip, _port, blocking = false)

<!--
_syntax: setup(ip, _port, blocking = false)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: string ip, int _port, bool blocking=false_
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














<!----------------------------------------------------------------------------->

###void setMessageDelimiter(delim)

<!--
_syntax: setMessageDelimiter(delim)_
_name: setMessageDelimiter_
_returns: void_
_returns_description: _
_parameters: string delim_
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














<!----------------------------------------------------------------------------->

###bool close()

<!--
_syntax: close()_
_name: close_
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














<!----------------------------------------------------------------------------->

###bool send(message)

<!--
_syntax: send(message)_
_name: send_
_returns: bool_
_returns_description: _
_parameters: string message_
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














<!----------------------------------------------------------------------------->

###bool sendRaw(message)

<!--
_syntax: sendRaw(message)_
_name: sendRaw_
_returns: bool_
_returns_description: _
_parameters: string message_
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














<!----------------------------------------------------------------------------->

###int getNumReceivedBytes()

<!--
_syntax: getNumReceivedBytes()_
_name: getNumReceivedBytes_
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














<!----------------------------------------------------------------------------->

###bool sendRawBytes(*rawBytes, numBytes)

<!--
_syntax: sendRawBytes(*rawBytes, numBytes)_
_name: sendRawBytes_
_returns: bool_
_returns_description: _
_parameters: const char *rawBytes, const int numBytes_
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














<!----------------------------------------------------------------------------->

###string receive()

<!--
_syntax: receive()_
_name: receive_
_returns: string_
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














<!----------------------------------------------------------------------------->

###string receiveRaw()

<!--
_syntax: receiveRaw()_
_name: receiveRaw_
_returns: string_
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














<!----------------------------------------------------------------------------->

###int receiveRawBytes(*receiveBytes, numBytes)

<!--
_syntax: receiveRawBytes(*receiveBytes, numBytes)_
_name: receiveRawBytes_
_returns: int_
_returns_description: _
_parameters: char *receiveBytes, int numBytes_
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














<!----------------------------------------------------------------------------->

###bool isConnected()

<!--
_syntax: isConnected()_
_name: isConnected_
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














<!----------------------------------------------------------------------------->

###int getPort()

<!--
_syntax: getPort()_
_name: getPort_
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














<!----------------------------------------------------------------------------->

###string getIP()

<!--
_syntax: getIP()_
_name: getIP_
_returns: string_
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














<!----------------------------------------------------------------------------->

###bool setup(_index, blocking)

<!--
_syntax: setup(_index, blocking)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: int _index, bool blocking_
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














<!----------------------------------------------------------------------------->

##Variables



###ofxTCPManager TCPClient

<!--
_name: TCPClient_
_type: ofxTCPManager_
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

###char tmpBuff

<!--
_name: tmpBuff_
_type: char_
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

###string str

<!--
_name: str_
_type: string_
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

###string tmpStr

<!--
_name: tmpStr_
_type: string_
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

###string ipAddr

<!--
_name: ipAddr_
_type: string_
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

###int index

<!--
_name: index_
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

###int messageSize

<!--
_name: messageSize_
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

###int port

<!--
_name: port_
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

###bool connected

<!--
_name: connected_
_type: bool_
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

###bool verbose

<!--
_name: verbose_
_type: bool_
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

###string partialPrevMsg

<!--
_name: partialPrevMsg_
_type: string_
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

###string messageDelimiter

<!--
_name: messageDelimiter_
_type: string_
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

