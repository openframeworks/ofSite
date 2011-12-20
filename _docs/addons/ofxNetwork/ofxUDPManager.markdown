#class ofxUDPManager


##Description












##Methods



### ofxUDPManager()

<!--
_syntax: ofxUDPManager()_
_name: ofxUDPManager_
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

### ~ofxUDPManager()

<!--
_syntax: ~ofxUDPManager()_
_name: ~ofxUDPManager_
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

###bool Close()

<!--
_syntax: Close()_
_name: Close_
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

###bool Create()

<!--
_syntax: Create()_
_name: Create_
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

###bool Connect(*pHost, usPort)

<!--
_syntax: Connect(*pHost, usPort)_
_name: Connect_
_returns: bool_
_returns_description: _
_parameters: const char *pHost, unsigned short usPort_
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

###bool ConnectMcast(*pMcast, usPort)

<!--
_syntax: ConnectMcast(*pMcast, usPort)_
_name: ConnectMcast_
_returns: bool_
_returns_description: _
_parameters: char *pMcast, unsigned short usPort_
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

###bool Bind(usPort)

<!--
_syntax: Bind(usPort)_
_name: Bind_
_returns: bool_
_returns_description: _
_parameters: unsigned short usPort_
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

###bool BindMcast(*pMcast, usPort)

<!--
_syntax: BindMcast(*pMcast, usPort)_
_name: BindMcast_
_returns: bool_
_returns_description: _
_parameters: char *pMcast, unsigned short usPort_
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

###int Send(*pBuff, iSize)

<!--
_syntax: Send(*pBuff, iSize)_
_name: Send_
_returns: int_
_returns_description: _
_parameters: const char *pBuff, const int iSize_
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

###int SendAll(*pBuff, iSize)

<!--
_syntax: SendAll(*pBuff, iSize)_
_name: SendAll_
_returns: int_
_returns_description: _
_parameters: const char *pBuff, const int iSize_
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

###int Receive(*pBuff, iSize)

<!--
_syntax: Receive(*pBuff, iSize)_
_name: Receive_
_returns: int_
_returns_description: _
_parameters: char *pBuff, const int iSize_
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

###void SetTimeoutSend(timeoutInSeconds)

<!--
_syntax: SetTimeoutSend(timeoutInSeconds)_
_name: SetTimeoutSend_
_returns: void_
_returns_description: _
_parameters: int timeoutInSeconds_
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

###void SetTimeoutReceive(timeoutInSeconds)

<!--
_syntax: SetTimeoutReceive(timeoutInSeconds)_
_name: SetTimeoutReceive_
_returns: void_
_returns_description: _
_parameters: int timeoutInSeconds_
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

###int GetTimeoutSend()

<!--
_syntax: GetTimeoutSend()_
_name: GetTimeoutSend_
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

###int GetTimeoutReceive()

<!--
_syntax: GetTimeoutReceive()_
_name: GetTimeoutReceive_
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

###bool GetRemoteAddr(*address)

<!--
_syntax: GetRemoteAddr(*address)_
_name: GetRemoteAddr_
_returns: bool_
_returns_description: _
_parameters: char *address_
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

###bool SetReceiveBufferSize(sizeInByte)

<!--
_syntax: SetReceiveBufferSize(sizeInByte)_
_name: SetReceiveBufferSize_
_returns: bool_
_returns_description: _
_parameters: int sizeInByte_
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

###bool SetSendBufferSize(sizeInByte)

<!--
_syntax: SetSendBufferSize(sizeInByte)_
_name: SetSendBufferSize_
_returns: bool_
_returns_description: _
_parameters: int sizeInByte_
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

###int GetReceiveBufferSize()

<!--
_syntax: GetReceiveBufferSize()_
_name: GetReceiveBufferSize_
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

###int GetSendBufferSize()

<!--
_syntax: GetSendBufferSize()_
_name: GetSendBufferSize_
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

###bool SetReuseAddress(allowReuse)

<!--
_syntax: SetReuseAddress(allowReuse)_
_name: SetReuseAddress_
_returns: bool_
_returns_description: _
_parameters: bool allowReuse_
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

###bool SetEnableBroadcast(enableBroadcast)

<!--
_syntax: SetEnableBroadcast(enableBroadcast)_
_name: SetEnableBroadcast_
_returns: bool_
_returns_description: _
_parameters: bool enableBroadcast_
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

###bool SetNonBlocking(useNonBlocking)

<!--
_syntax: SetNonBlocking(useNonBlocking)_
_name: SetNonBlocking_
_returns: bool_
_returns_description: _
_parameters: bool useNonBlocking_
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

###int GetMaxMsgSize()

<!--
_syntax: GetMaxMsgSize()_
_name: GetMaxMsgSize_
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

###int GetTTL()

<!--
_syntax: GetTTL()_
_name: GetTTL_
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

###bool SetTTL(nTTL)

<!--
_syntax: SetTTL(nTTL)_
_name: SetTTL_
_returns: bool_
_returns_description: _
_parameters: int nTTL_
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



###int m_iListenPort

<!--
_name: m_iListenPort_
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

###int m_hSocket

<!--
_name: m_hSocket_
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

###unsigned long m_dwTimeoutReceive

<!--
_name: m_dwTimeoutReceive_
_type: unsigned long_
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

###unsigned long m_dwTimeoutSend

<!--
_name: m_dwTimeoutSend_
_type: unsigned long_
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

###bool nonBlocking

<!--
_name: nonBlocking_
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

###struct sockaddr_in saServer

<!--
_name: saServer_
_type: struct sockaddr_in_
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

###struct sockaddr_in saClient

<!--
_name: saClient_
_type: struct sockaddr_in_
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

###bool canGetRemoteAddress

<!--
_name: canGetRemoteAddress_
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

###bool m_bWinsockInit

<!--
_name: m_bWinsockInit_
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

