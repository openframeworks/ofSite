#class ofxTCPManager


##Description












##Methods



### ofxTCPManager()

<!--
_syntax: ofxTCPManager()_
_name: ofxTCPManager_
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

### ~ofxTCPManager()

<!--
_syntax: ~ofxTCPManager()_
_name: ~ofxTCPManager_
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

###bool Listen(iMaxConnections)

<!--
_syntax: Listen(iMaxConnections)_
_name: Listen_
_returns: bool_
_returns_description: _
_parameters: int iMaxConnections_
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

###bool Connect(*pAddrStr, usPort)

<!--
_syntax: Connect(*pAddrStr, usPort)_
_name: Connect_
_returns: bool_
_returns_description: _
_parameters: char *pAddrStr, unsigned short usPort_
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

###bool Accept(&sock)

<!--
_syntax: Accept(&sock)_
_name: Accept_
_returns: bool_
_returns_description: _
_parameters: ofxTCPManager &sock_
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

###int ReceiveAll(*pBuff, iSize)

<!--
_syntax: ReceiveAll(*pBuff, iSize)_
_name: ReceiveAll_
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

###int Write(*pBuff, iSize)

<!--
_syntax: Write(*pBuff, iSize)_
_name: Write_
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

###bool GetRemoteAddr(pIntAddr)

<!--
_syntax: GetRemoteAddr(pIntAddr)_
_name: GetRemoteAddr_
_returns: bool_
_returns_description: _
_parameters: LPINETADDR pIntAddr_
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

###bool GetInetAddr(pInetAddr)

<!--
_syntax: GetInetAddr(pInetAddr)_
_name: GetInetAddr_
_returns: bool_
_returns_description: _
_parameters: LPINETADDR pInetAddr_
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

###void SetTimeoutAccept(timeoutInSeconds)

<!--
_syntax: SetTimeoutAccept(timeoutInSeconds)_
_name: SetTimeoutAccept_
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

###int GetTimeoutAccept()

<!--
_syntax: GetTimeoutAccept()_
_name: GetTimeoutAccept_
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

###int GetMaxConnections()

<!--
_syntax: GetMaxConnections()_
_name: GetMaxConnections_
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

###bool CheckHost(*pAddrStr)

<!--
_syntax: CheckHost(*pAddrStr)_
_name: CheckHost_
_returns: bool_
_returns_description: _
_parameters: const char *pAddrStr_
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

###void CleanUp()

<!--
_syntax: CleanUp()_
_name: CleanUp_
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

###int m_iMaxConnections

<!--
_name: m_iMaxConnections_
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

###unsigned long m_dwTimeoutAccept

<!--
_name: m_dwTimeoutAccept_
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

