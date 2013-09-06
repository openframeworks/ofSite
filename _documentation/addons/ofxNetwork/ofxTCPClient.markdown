#class ofxTCPClient


##Description


The ofxTCPClient is what you used to connect to another server and request information. This other server could be a service running on your local machine, or it could somewhere out there in the internet. As of version 0.8 it doesn't do SSL or other tricky things well, nor does it handle forms or GET and POST requests but you can handle strings or raw bytes. A trivial usage might look like the following:

~~~~{.cpp}
void ofApp::setup()
{
	bool connected = tcpClient.setup("127.0.0.1", 11999);
}

void ofApp::update()
{
	if(tcpClient.isConnected()) {
		string str = tcpClient.receive(); // did anything come in
	}
}


void ofApp::keyReleased(int key)
{
	if(tcpClient.isConnected()) {
		tcpClient.send("HELLO WORLD!");
	}
}
~~~~

To receive something meaningful from a regular webserver you'll want to at least do something like the following:

~~~~{.cpp}
string msg = "GET /index.html HTTP/1.1\r\n";
tcpClient.send(msg);

~~~~

but if you're using ofxTCPServer, then you're free to invent whatever sort of low level communication you'd like. Another important element of the ofxTCPClient and of TCP communication in general, is the message delimiter. You can see that using:

tcpClient.setMessageDelimiter("\n");

This is important because the message delimiter used by your client has to match what your sever is using. If the server uses '\r\n', then your client needs to do the same so that the server knows when a message has ended.




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






Constructor. This doesn't prepare your client to send and receive information though, you need to call the setup() method for that.







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







You call this to setup what IP and port your client will try to connect to:

~~~~{.cpp}
tcpClient.setup("127.0.0.1", 11999);
~~~~

It returns whether the connection has successfully been made. Don't mistake this for a URI or URL, it comes before that, where the connection is made so that files or data streams can be requested.






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




This is important because the message delimiter used by your client has to match what your sever is using. If the server uses '\r\n', then your client needs to do the same so that the server knows when a message has ended. ofxTCPServer allows you to use whatever delimiter you want but you'll find that many servers use '\r\n'









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






This closes any open connection to a server.







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






Send the message, which can be as complex as a full GET request or as simple as raw string.







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







This sends the message as raw, i.e. not ASCII encoded. This is what you'll want to do if you're sending bitmap data or other kinds of non-text information.






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




Returns the number of bytes that a single call to receive has gotten.









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







This method sends raw bytes (i.e. not ASCII encoded bytes) to the server.






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






Receives ASCII encoded data from the server. You should make sure you check that the client is connected before calling this.

~~~~{.cpp}
if(tcpClient.isConnected()) {
        string str = tcpClient.receive();
        cout << str << endl;
}
~~~~







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




This receives the raw bytes from a server. Like with receive(), you should check that the client is connected before calling this.


~~~~{.cpp}

if(tcpClient.isConnected()) {
        string s = tcpClient.receive();
        
        cout << str << endl;


~~~~









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





Returns whether the client is currently connected to a server.








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







Returns the port number set in the setup() method of the client.






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






Returns the IP address number set in the setup() method of the client.







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

