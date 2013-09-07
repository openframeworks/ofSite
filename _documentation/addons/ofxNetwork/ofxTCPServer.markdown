#class ofxTCPServer


##Description





The ofxTCPServer creates a TCP server that will serve up TCP data to any client that can reach it. To set it up you create an instance of an ofxTCPServer and call setup() passing the port number that you want your server to listen on:

~~~~{.cpp}
TCP.setup(8080);
~~~~

Clients connect to the server and get assigned a unique ID that allows you to send or receive data from them.

That unique ID is important because when a client disconnects, its ID isn't recycled, the 100th client to connect will be 100, even if there are only currently 2 clients connected.

You can check to see how many clients are connected to your server using the getNumClients() method, but to loop through the clients, you'll want to do something like the following:

~~~~{.cpp}

for(int i = 0; i < TCP.getLastID(); i++) // getLastID is UID of all clients
{

		if( TCP.isClientConnected(i) ) { // check and see if it's still around
		  // maybe the client is sending something
		  string str = TCP.receive(i);
		  TCP.send(i, "You sent: "+str);
		}
}
~~~~

There are two send() methods for ASCII string data that both get a message delimiter attached to them (by default [/TCP]):

send(int clientID, string message) - to send to a specific client
sendToAll(string message) - to send to all clients

and there are two methods for sending raw ASCII data, i.e. without the message delimiter attached to them:

sendRawMsg(int clientID, const char * rawMsg, const int numBytes) - to send to a specific client
sendRawMsgToAll(const char * rawMsg, const int numBytes) - to send to a specific client

And finally two methods for sending raw non-ASCII data like bitmaps, sounds, or other binary data formats:

sendRawBytes(int clientID, const char * rawBytes, const int numBytes) - to send to a specific client
sendRawBytesToAll(const char * rawBytes, const int numBytes) - to send to a specific client

There are a few things to note: 
1) TCP is connection based which means it can be slower for things like video streams or lots of blobs of data, but more reliable than UDP. [A not too technical description of the differences](http://www.diffen.com/difference/TCP_vs_UDP)
2) TCP is not HTTP. You'll probably find that tools like browsers send a lot more information that you're initially expecting, but you can easily pull out the parts of their request that you might need from the strings.
3) Just because your ofxTCPServer is up and running does not mean that those ports on your computer will be open or that your IP will be visible. That's all configuration work to be done before your server can talk to the outside world.


The ofxTCPServer is threaded by default, 


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





Constructor. You need to call setup() before your server itself is ready to receive connections.








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




The port is the port that your server will serve up data on. It shouldn't be a commonly used port like 22 or 80, go with a higher number less likely to be used.
The blocking parameter signals whether the client connections will be allowed to block on the servers thread as they send a message. This becomes important when you're dealing with very large messages coming from clients.









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






This sets the message delimiter that your server will use when sending and receiving messages from clients. By default it's [\TCP] though you can have it be any value as long as it's consistent on both the client and server sides.







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






Close the server down and disconnect all clients.







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




Disconnect a particular client.









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






Returns the number of connected clients, helpful for monitoring loads on a server but not for sending messages.







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





Returns the last UID assigned to a client. As this counts upwards, it's the best way to loop through all clients:

~~~~{.cpp}

for(int i = 0; i < TCP.getLastID(); i++) // getLastID is UID of all clients
{

		if( TCP.isClientConnected(i) ) { // check and see if it's still around
		  // maybe the client is sending something
		  string str = TCP.receive(i);
		  TCP.send(i, "You sent: "+str);
		}
}
~~~~








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





Returns the port that the server is currently serving on.








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







Gets the port that the client is currently connected on.






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




Returns the ID that the client is connected from. This is useful for tracking clients that connect and disconnect.









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





Returns whether a client ID correlates to a connected client:

~~~~{.cpp}

for(int i = 0; i < TCP.getLastID(); i++) // getLastID is UID of all clients
{

		if( TCP.isClientConnected(i) ) { // check and see if it's still around
		  // maybe the client is sending something
		  string str = TCP.receive(i);
		  TCP.send(i, "You sent: "+str);
		}
}
~~~~








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






Sends a string delimited with the delimiter value to a selected client.







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





Sends a string delimited with the delimiter value to all connected clients.








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



Sends raw bytes to a selected client.










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





Sends raw bytes to all connected clients.

~~~~{.cpp}
~~~~








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




Returns the total bytes sent by a client.









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





Receives raw bytes, such as an bitmap or audio data from a client indicated with the clientID:

~~~~{.cpp}

for ( int i = 0; i < server.getLastID(); i++ ) {
  if(server.isClientConnected(i)) {
    string received = server.receive(clientID); // will end with delimiter, so make sure client is sending it
    }
}
~~~~








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



Receives raw bytes, such as an bitmap or audio data from a client indicated with the clientID:

~~~~{.cpp}

for ( int i = 0; i < server.getLastID(); i++ ) {
  if(server.isClientConnected(i)) {
    int received = server.receiveRawBytes(clientID, *receiveBytes, numBytes);
    }
}
~~~~










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

