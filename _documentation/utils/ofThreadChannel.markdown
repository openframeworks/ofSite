#class ofThreadChannel


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

Safely send data between threads without additional synchronization.

ofThreadChannel makes it easy to safely and efficiently share data between
threads without the need for shared memory, mutexes, or other
synchronization techniques. Additionally, ofThreadChannel employs a
signalling system that allows receiving threads to sleep until new data
arrives or the ofThreadChannel is closed.

A single ofThreadChannel class is desgined for one-way communication. In
most cases an additional ofThreadChannel can be used for two-way
communication.

Data is sent through the ofThreadChannel in a FIFO (first in, first out)
order, guaranteeing that that data will be received in the same order that
it was sent.

If multiple threads attempt to send data using the same ofThreadChannel, the
send method will block the calling thread until it is free.


See also: https://github.com/openframeworks/ofBook/blob/master/chapters/threads/chapter.md
\tparam T The data type sent by the ofThreadChannel.





##Description





##Methods



###void close()

<!--
_syntax: close()_
_name: close_
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

Close the ofThreadChannel.

Closing the ofThreadChannel means that no new messages can be sent or
received. All threads waiting to receive new values will be notified and
all ofThreadChannel::receive and ofThreadChannel::tryReceive methods
will return false.





_description: _







<!----------------------------------------------------------------------------->

###bool empty()

<!--
_syntax: empty()_
_name: empty_
_returns: bool_
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

Queries empty channel.

This call is only an approximation, since messages come from a different
thread the channel can return true when calling empty() and then receive
a message right afterwards





_description: _







<!----------------------------------------------------------------------------->

### ofThreadChannel()

<!--
_syntax: ofThreadChannel()_
_name: ofThreadChannel_
_returns: _
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

Create a default ofThreadChannel.

ofThreadChannel must be instantiated with a template parameter such as:
~~~~{.cpp}
	ofThreadChannel<ofPixels> myThreadChannel;
~~~~





_description: _







<!----------------------------------------------------------------------------->

###bool receive(&sentValue)

<!--
_syntax: receive(&sentValue)_
_name: receive_
_returns: bool_
_returns_description: _
_parameters: T &sentValue_
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

Block the receiving thread until a new sent value is available.

The receiving thread will block until a new sent value is available. In
order to receive data, the user must create an instance of the data
type, and pass it to the receive method to be set.

ofThreadChannel::receive will not make a copy or reallocate data.

~~~~{.cpp}
ofThreadChannel<ofPixels> myThreadChannel;

// ofThreadChannel<ofPixels> declared elsewhere.

ofPixels myPixelsToSet;

if (myThreadChannel.receive(myPixelsToSet)) {
		// If true, `myPixelsToSet` can be used.
} else {
		// If false, thread channel was closed and the value of
		// `myPixelsToSet` may be invalid depending on the scope of
		// `myPixelsToSet`.
}
~~~~


Parameters:
sentValue A reference to a sent value.

Returns: True if a new value was received or false if the ofThreadChannel was closed.





_description: _







<!----------------------------------------------------------------------------->

###bool send(&value)

<!--
_syntax: send(&value)_
_name: send_
_returns: bool_
_returns_description: _
_parameters: const T &value_
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

Send a value to the receiver by making a copy.

This method copies the contents of the sent value, leaving the original
data unchanged.

~~~~{.cpp}
ofThreadChannel<ofPixels> myThreadChannel;

// ofThreadChannel<ofPixels> initialized elsewhere.

ofPixels myPixelsToSend;

// Fill the pixels with valid data, an image for example.

ofLoadImage(myPixelsToSend, "myImage.jpg");

// Send `myPixelsToSend` by copying it. `myPixelsToSend` is still valid
// after sending.
if (myThreadChannel.send(myPixelsToSend)) {
		// If true, `myPixelsToSend` was sent successfully.
} else {
		// If false, the thread channel was closed.
}
~~~~


Returns: true if the value was sent successfully or false if the channel was closed.





_description: _







<!----------------------------------------------------------------------------->

###bool send(&&value)

<!--
_syntax: send(&&value)_
_name: send_
_returns: bool_
_returns_description: _
_parameters: T &&value_
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

Send a value to the receiver without making a copy.

This method moves the contents of the sent value using `std::move`
semantics. This avoids copying the data, but the original data data will
be invalidated. Note that the original data will be invalideated even if
the send fails because the channel is already closed.

~~~~{.cpp}
ofThreadChannel<ofPixels> myThreadChannel;

// ofThreadChannel<ofPixels> initialized elsewhere.

ofPixels myPixelsToSend;

// Fill the pixels with valid data, an image for example.

ofLoadImage(myPixelsToSend, "myImage.jpg");

// Send `myPixelsToSend` by moving it. `myPixelsToSend` will no longer
// be valid, even if the send fails because the channel is closed.
if (myThreadChannel.send(std::move(myPixelsToSend))) {
		// If true, `myPixelsToSend` was sent successfully.
		// `myPixelsToSend` is no longer valid because it was moved.
} else {
		// If false, the thread channel was closed.
		// `myPixelsToSend` is no longer valid because it was moved.
}

~~~~


Returns: true if the value was sent successfully or false if the channel was closed.





_description: _







<!----------------------------------------------------------------------------->

###bool tryReceive(&sentValue)

<!--
_syntax: tryReceive(&sentValue)_
_name: tryReceive_
_returns: bool_
_returns_description: _
_parameters: T &sentValue_
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

If available, receive a new sent value without blocking.

ofThreadChannel::tryReceive is similar to ofThreadChannel::receive,
except that it will not block the receiving thread.  If no data is
available, it will return false and continue immediately.

ofThreadChannel::tryReceive will not make a copy or reallocate data.

Like ofThreadChannel::receive, in order to receive data, the user must
create an instance of the data type, and pass it to the receive method
to be set.

~~~~{.cpp}
ofThreadChannel<ofPixels> myThreadChannel;

// ofThreadChannel<ofPixels> initialized elsewhere.

ofPixels myPixelsToSet;

if (myThreadChannel.tryReceive(myPixelsToSet)) {
		// If true, `myPixelsToSet` can be used.
} else {
		// If false, there was no new data OR the thread channel was closed.
		// Either way, the value of `myPixelsToSet` may be invalid depending
		// on the scope of `myPixelsToSet`.
}
~~~~


Parameters:
sentValue A reference to a sent value.

Returns: True if a new value was received or false if the ofThreadChannel was closed.





_description: _







<!----------------------------------------------------------------------------->

###bool tryReceive(&sentValue, timeoutMs)

<!--
_syntax: tryReceive(&sentValue, timeoutMs)_
_name: tryReceive_
_returns: bool_
_returns_description: _
_parameters: T &sentValue, int64_t timeoutMs_
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

If available, receive a new sent value or wait for a user-specified duration.

ofThreadChannel::tryReceive is similar to ofThreadChannel::receive,
except that it will block the receiving thread for a maximum of
`timeoutMs` while it waits for sent data.  If no data is available
during that time, it will return false and continue.

ofThreadChannel::tryReceive will not make a copy or reallocate data.

Like ofThreadChannel::receive, in order to receive data, the user must
create an instance of the data type, and pass it to the receive method
to be set.

~~~~{.cpp}
ofThreadChannel<ofPixels> myThreadChannel;

// ofThreadChannel<ofPixels> initialized elsewhere.

ofPixels myPixelsToSet;

if (myThreadChannel.tryReceive(myPixelsToSet)) {
		// If true, `myPixelsToSet` can be used.
} else {
		// If false, there was no new data OR the thread channel was closed.
		// Either way, the value of `myPixelsToSet` may be invalid depending
		// on the scope of `myPixelsToSet`.
}
~~~~


Parameters:
sentValue A reference to a sent value.
timeoutMs The number of milliseconds to wait for new data before continuing.

Returns: True if a new value was received or false if the ofThreadChannel was closed.





_description: _







<!----------------------------------------------------------------------------->

##Variables



###bool closed

<!--
_name: closed_
_type: bool_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

True if the channel is closed.





_description: _







<!----------------------------------------------------------------------------->

###condition_variable condition

<!--
_name: condition_
_type: condition_variable_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The condition even to notify receivers.





_description: _







<!----------------------------------------------------------------------------->

###mutex mutex

<!--
_name: mutex_
_type: mutex_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The mutext to protect the data.





_description: _







<!----------------------------------------------------------------------------->

###queue< T > queue

<!--
_name: queue_
_type: queue< T >_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The FIFO data queue.





_description: _







<!----------------------------------------------------------------------------->

