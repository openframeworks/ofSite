#class ofxUDPManager


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

UDP is a network protocol that is faster and less rigid in its packet transmission requirements. Unlike TCP, UDP has no notion of connections nor does it check to see if a packet has been successfuly recieved by the client. A UDP socket can receive datagrams from any server on the network and send datagrams to any host on the network. In addition, datagrams may arrive in any order, never arrive at all, or be duplicated in transit. There are three modes of UDP servers: socket (aka unicast), broadcast, and multicast. 

Unicast refers to a unique host-client. This is a one-to one connection between the client and the server 

Multicast is the delivery of a message or information to a group of destination computers simultaneously in a single transmission. A packet sent to a unicast or broadcast address is only delivered to the host identified by that address. To the contrary, when packet is send to a multicast address, all interfaces identified by that address receive the data. However, multicast has the drawback that it is not well supported by routers and NAT.

Broadcast allows you to call every host within a subnet. It's like Multicast but doesn't require that your network infrastructure support it.

A very simple unicast server looks like this:

~~~~{.cpp}

void ofApp::setup()
{

	//create the socket and set to send to 127.0.0.1:11999
	udpConnection.Create();
	udpConnection.Connect("127.0.0.1",11999);
	udpConnection.SetNonBlocking(true);
}

void ofApp::keyPressed(int key)
{
	string message = "You pressed a key";
	udpConnection.Send(message.c_str(), message.length());
}
~~~~

A very simple unicast client looks like this:

~~~~{.cpp}

void ofApp::setup()
{

	//create the socket and bind to port 11999
	udpConnection.Create();
	udpConnection.Bind(11999);
	udpConnection.SetNonBlocking(true);
}

void ofApp::update()
{
	char udpMessage[1000];
	udpConnection.Receive(udpMessage,1000);
	string message=udpMessage;
}
~~~~

Notice that these are quite different than the creation of TCP servers and clients which you might be more familiar with.

The basic usage of UDP for socket servers and clients looks like so:

UDP Socket Server (sending):
1) Create() - initialize the server
2) Connect() - connect to an IP and a Port that you'll be sending messages on
3) Send() - send the message

UDP Socket Client (receiving):
1) Create() - intialize the client
2) Bind() - bind the client to a port and listen for any UDP messages on that port
3) Receive() - receive any data broadcast over UDP on the port set up to receive on

The basic usage of UDP for multicast looks like so:

UDP Multicast (sending):
1) Create() - initialize the server
2) ConnectMcast() - connect to an IP and a Port that you'll broadcast on
3) Send() - send a message to any listening clients

UDP Multicast (receiving):
1) Create() - initialize the client
2) BindMcast() - bind to a port
3) Receive() - check to see if any data has been received





##Methods



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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Bind a port to receive socket/unicast UDP:

~~~~{.cpp}
udpConnection.Create();
udpConnection.Bind(11999);
udpConnection.SetNonBlocking(true);
~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Bind to multicast address to receive data:

~~~~{.cpp}
udpConnection.Create();
udpConnection.BindMcast("224.0.0.1", 11999);
~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


Closes an open socket. NOTE: A closed socket cannot be reused again without a call to "Create()". 







_description: _


Stop listening on a given port. Works with both socket and multicast.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Connect to a socket client to send information.

~~~~{.cpp}

udpConnection.Create();
udpConnection.Connect("127.0.0.1",11999);
udpConnection.SetNonBlocking(true);

~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Connect to a multicast address. 

~~~~{.cpp}

udpConnection.Create();
udpConnection.Connect("224.0.0.1",11999);

~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Create the UDP manager. Must be called before binding to any IP or sockets.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Get the size of the receive buffer. The minimum (doubled) value for this option is 256. The max is determined by your OS.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns the dots and numbers remote address in a string, 







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Get the size of the send buffer. The minimum (doubled) value for this option is 256. The max is determined by your OS.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

returns -1 on failure 








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Return the current receive timeout.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Return the current send timeout.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


Return values: SOCKET_TIMEOUT indicates timeout SOCKET_ERROR in case of a problem. 







_description: _


Receives a message to a buffer of size iSize. Receive() returns the number of bytes actually received.

~~~~{.cpp}
char udpMessage[100000];
udpConnection.Receive(udpMessage,100000);
string message=udpMessage;
~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


Return values: SOCKET_TIMEOUT indicates timeout SOCKET_ERROR in case of a problem. 







_description: _


Send a char* of data with length of iSize to all listeners.

~~~~{.cpp}
string message = "A message";
udpConnection.Send(message.c_str(),message.length());

~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


Return values: SOCKET_TIMEOUT indicates timeout SOCKET_ERROR in case of a problem. 







_description: _


The SendAll() method is useful for extremely large data objects that may need multiple sendto() calls to actually be completely.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Broadcast allows sending of packets to a particular network layer. If you're only using a single local network without a large number of attached machines, using broadcast may make more sense than trying to use multicast.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Theo added - Choose to set nonBLocking - default mode is to block. 








_description: _


Determines whether calls to send or receive are allowed to block their thread until they've completed. If your network infrastructure is time critical, then this may be a good choice. Usually though, you should leave it off.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Set the size of the receive buffer. The minimum (doubled) value for this option is 256. The max is determined by your OS.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Set the size of the send buffer. The minimum (doubled) value for this option is 256. The max is determined by your OS.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


The TTL (Time To Live) field in the IP header has a double significance in multicast. As always, it controls the live time of the datagram to avoid it being looped forever due to routing errors. Routers decrement the TTL of every datagram as it traverses from one network to another and when its value reaches 0 the packet is dropped.

A list of TTL thresholds and their associated scope follows:

TTL     Scope
----------------------------------------------------------------------
   0    Restricted to the same host. Won't be output by any interface.
   1    Restricted to the same subnet. Won't be forwarded by a router.
 <32         Restricted to the same site, organization or department.
 <64 Restricted to the same region.
<128 Restricted to the same continent.
<255 Unrestricted in scope. Global.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Set a timeout for any receive operations in seconds.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Set a timeout for any send operations in seconds.







<!----------------------------------------------------------------------------->

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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

##Variables



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

