#class ofxTCPServer


##Description












##Methods



### ofxTCPServer()

<!--
_syntax: ofxTCPServer()_
_name: ofxTCPServer_
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

### ~ofxTCPServer()

<!--
_syntax: ~ofxTCPServer()_
_name: ~ofxTCPServer_
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

###bool setup(_port, blocking = false)

<!--
_syntax: setup(_port, blocking = false)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: int _port, bool blocking=false_
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

###bool disconnectClient(clientID)

<!--
_syntax: disconnectClient(clientID)_
_name: disconnectClient_
_returns: bool_
_returns_description: _
_parameters: int clientID_
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

###int getNumClients()

<!--
_syntax: getNumClients()_
_name: getNumClients_
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

###int getLastID()

<!--
_syntax: getLastID()_
_name: getLastID_
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

###int getClientPort(clientID)

<!--
_syntax: getClientPort(clientID)_
_name: getClientPort_
_returns: int_
_returns_description: _
_parameters: int clientID_
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

###string getClientIP(clientID)

<!--
_syntax: getClientIP(clientID)_
_name: getClientIP_
_returns: string_
_returns_description: _
_parameters: int clientID_
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

###bool isClientSetup(clientID)

<!--
_syntax: isClientSetup(clientID)_
_name: isClientSetup_
_returns: bool_
_returns_description: _
_parameters: int clientID_
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

###bool isClientConnected(clientID)

<!--
_syntax: isClientConnected(clientID)_
_name: isClientConnected_
_returns: bool_
_returns_description: _
_parameters: int clientID_
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

###bool send(clientID, message)

<!--
_syntax: send(clientID, message)_
_name: send_
_returns: bool_
_returns_description: _
_parameters: int clientID, string message_
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

###bool sendToAll(message)

<!--
_syntax: sendToAll(message)_
_name: sendToAll_
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

###bool sendRawBytes(clientID, *rawBytes, numBytes)

<!--
_syntax: sendRawBytes(clientID, *rawBytes, numBytes)_
_name: sendRawBytes_
_returns: bool_
_returns_description: _
_parameters: int clientID, const char *rawBytes, const int numBytes_
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

###bool sendRawBytesToAll(*rawBytes, numBytes)

<!--
_syntax: sendRawBytesToAll(*rawBytes, numBytes)_
_name: sendRawBytesToAll_
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

###int getNumReceivedBytes(clientID)

<!--
_syntax: getNumReceivedBytes(clientID)_
_name: getNumReceivedBytes_
_returns: int_
_returns_description: _
_parameters: int clientID_
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

###string receive(clientID)

<!--
_syntax: receive(clientID)_
_name: receive_
_returns: string_
_returns_description: _
_parameters: int clientID_
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

###int receiveRawBytes(clientID, *receiveBytes, numBytes)

<!--
_syntax: receiveRawBytes(clientID, *receiveBytes, numBytes)_
_name: receiveRawBytes_
_returns: int_
_returns_description: _
_parameters: int clientID, char *receiveBytes, int numBytes_
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

##Variables



###ofxTCPManager TCPServer

<!--
_name: TCPServer_
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

###ofxTCPClient TCPConnections

<!--
_name: TCPConnections_
_type: ofxTCPClient_
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

###int idCount

<!--
_name: idCount_
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

###bool bClientBlocking

<!--
_name: bClientBlocking_
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

