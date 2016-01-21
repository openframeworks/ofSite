#class InetAddr


<!--
_visible: False_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description





##Methods



###char * DottedDecimal()

<!--
_syntax: DottedDecimal()_
_name: DottedDecimal_
_returns: char *_
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

returns the address in dotted-decimal format 








_description: _








<!----------------------------------------------------------------------------->

###unsigned long GetIpAddr()

<!--
_syntax: GetIpAddr()_
_name: GetIpAddr_
_returns: unsigned long_
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

###unsigned short GetPort()

<!--
_syntax: GetPort()_
_name: GetPort_
_returns: unsigned short_
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

### InetAddr()

<!--
_syntax: InetAddr()_
_name: InetAddr_
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

### InetAddr(&sockAddr)

<!--
_syntax: InetAddr(&sockAddr)_
_name: InetAddr_
_returns: _
_returns_description: _
_parameters: const sockaddr &sockAddr_
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

### InetAddr(&sin)

<!--
_syntax: InetAddr(&sin)_
_name: InetAddr_
_returns: _
_returns_description: _
_parameters: const sockaddr_in &sin_
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

### InetAddr(ulAddr, ushPort = 0)

<!--
_syntax: InetAddr(ulAddr, ushPort = 0)_
_name: InetAddr_
_returns: _
_returns_description: _
_parameters: const unsigned long ulAddr, const unsigned short ushPort=0_
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

### InetAddr(*pStrIP, usPort = 0)

<!--
_syntax: InetAddr(*pStrIP, usPort = 0)_
_name: InetAddr_
_returns: _
_returns_description: _
_parameters: const wchar_t *pStrIP, const unsigned short usPort=0_
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

### InetAddr(*pStrIP, usPort = 0)

<!--
_syntax: InetAddr(*pStrIP, usPort = 0)_
_name: InetAddr_
_returns: _
_returns_description: _
_parameters: const char *pStrIP, const unsigned short usPort=0_
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

### operator sockaddr()

<!--
_syntax: operator sockaddr()_
_name: operator sockaddr_
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

### operator sockaddr *()

<!--
_syntax: operator sockaddr *()_
_name: operator sockaddr *_
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

### operator sockaddr_in *()

<!--
_syntax: operator sockaddr_in *()_
_name: operator sockaddr_in *_
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

###const InetAddr & operator=(&sa)

<!--
_syntax: operator=(&sa)_
_name: operator=_
_returns: const InetAddr &_
_returns_description: _
_parameters: const sockaddr &sa_
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

operators added for efficiency 








_description: _








<!----------------------------------------------------------------------------->

###const InetAddr & operator=(&sin)

<!--
_syntax: operator=(&sin)_
_name: operator=_
_returns: const InetAddr &_
_returns_description: _
_parameters: const sockaddr_in &sin_
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



