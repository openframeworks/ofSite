#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###void ofAddListener(event, listenerInstance, &listenerClass::listenerMethod)

<!--
_syntax: ofAddListener(event, listenerInstance, &listenerClass::listenerMethod)_
_name: ofAddListener_
_returns: void_
_returns_description: _
_parameters: ofEvent        even_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Allows you to add a listener method to an event, use it whenever you want a class to be notified about an event.

This is a templated function so the types of the parameters are not predefined types but can be any type as long as the method is one of the listener class' and it has a particular signature.

The signature of the listener method depends on the event type. Every event is defined as:

~~~~{.cpp}
ofEvent<type> event;
~~~~

where type is the type of the parameter that is going to be passed when the event is notified. The listener method can have one of this two signatures:

~~~~{.cpp}
void listenerMethod(type & parameter);
~~~~

~~~~{.cpp}
void listenerMethod(const void * sender, type parameter);
~~~~

Where type must be the same as that of the event it listens to, and sender will be a pointer to the notifying class.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~

The general pattern is:

A notifying class that will notify defines an ofEvent.
A listening class that will listen for that ofEvent calls ofAddListener() using the name of the event, the "this" keyword to refer to itself, and a pointer to the method that you want called when the event occurs
The notifying class calls ofNotifyEvent() when it's time to send the event.
The listening class has its notification method called with the parameters of the ofEvent passed to it.







<!----------------------------------------------------------------------------->

###void ofAddListener(&event, *listener, *, &), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofAddListener(&event, *listener, *, &), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofAddListener_
_returns: void_
_returns_description: _
_parameters: EventType &event, ListenerClass *listener, void(ListenerClass::*listenerMethod)(const void *, ArgumentsType &), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Allows you to add a listener method to an event, use it whenever you want a class to be notified about an event.

This is a templated function so the types of the parameters are not predefined types but can be any type as long as the method is one of the listener class' and it has a particular signature.

The signature of the listener method depends on the event type. Every event is defined as:

~~~~{.cpp}
ofEvent<type> event;
~~~~

where type is the type of the parameter that is going to be passed when the event is notified. The listener method can have one of this two signatures:

~~~~{.cpp}
void listenerMethod(type & parameter);
~~~~

~~~~{.cpp}
void listenerMethod(const void * sender, type parameter);
~~~~

Where type must be the same as that of the event it listens to, and sender will be a pointer to the notifying class.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~

The general pattern is:

A notifying class that will notify defines an ofEvent.
A listening class that will listen for that ofEvent calls ofAddListener() using the name of the event, the "this" keyword to refer to itself, and a pointer to the method that you want called when the event occurs
The notifying class calls ofNotifyEvent() when it's time to send the event.
The listening class has its notification method called with the parameters of the ofEvent passed to it.

Note that the event is a reference, which means it needs to a member of your class that will not go away in the lifetime of the object.

This version of the method allows you to use the prio to set whether the event should be called before the application events (mouse and key events, for example) with OF_EVENT_ORDER_BEFORE_APP or after with OF_EVENT_ORDER_AFTER_APP.







<!----------------------------------------------------------------------------->

###void ofAddListener(&event, *listener, &), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofAddListener(&event, *listener, &), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofAddListener_
_returns: void_
_returns_description: _
_parameters: EventType &event, ListenerClass *listener, void(ListenerClass::*listenerMethod)(ArgumentsType &), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Allows you to add a listener method to an event, use it whenever you want a class to be notified about an event.

This is a templated function so the types of the parameters are not predefined types but can be any type as long as the method is one of the listener class' and it has a particular signature.

The signature of the listener method depends on the event type. Every event is defined as:

~~~~{.cpp}
ofEvent<type> event;
~~~~

where type is the type of the parameter that is going to be passed when the event is notified. The listener method can have one of this two signatures:

~~~~{.cpp}
void listenerMethod(type & parameter);
~~~~

~~~~{.cpp}
void listenerMethod(const void * sender, type parameter);
~~~~

Where type must be the same as that of the event it listens to, and sender will be a pointer to the notifying class.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~

The general pattern is:

A notifying class that will notify defines an ofEvent.
A listening class that will listen for that ofEvent calls ofAddListener() using the name of the event, the "this" keyword to refer to itself, and a pointer to the method that you want called when the event occurs
The notifying class calls ofNotifyEvent() when it's time to send the event.
The listening class has its notification method called with the parameters of the ofEvent passed to it.

This version of the method allows you to use the prio to set whether the event should be called before the application events (mouse and key events, for example) with OF_EVENT_ORDER_BEFORE_APP or after with OF_EVENT_ORDER_AFTER_APP.







<!----------------------------------------------------------------------------->

###void ofAddListener(&event, *listener, *), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofAddListener(&event, *listener, *), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofAddListener_
_returns: void_
_returns_description: _
_parameters: ofEvent< void > &event, ListenerClass *listener, void(ListenerClass::*listenerMethod)(const void *), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Allows you to add a listener method to an event, use it whenever you want a class to be notified about an event.

This is a templated function so the types of the parameters are not predefined types but can be any type as long as the method is one of the listener class' and it has a particular signature.

The signature of the listener method depends on the event type. Every event is defined as:

~~~~{.cpp}
ofEvent<type> event;
~~~~

where type is the type of the parameter that is going to be passed when the event is notified. The listener method can have one of this two signatures:

~~~~{.cpp}
void listenerMethod(type & parameter);
~~~~

~~~~{.cpp}
void listenerMethod(const void * sender, type parameter);
~~~~

Where type must be the same as that of the event it listens to, and sender will be a pointer to the notifying class.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~

The general pattern is:

A notifying class that will notify defines an ofEvent.
A listening class that will listen for that ofEvent calls ofAddListener() using the name of the event, the "this" keyword to refer to itself, and a pointer to the method that you want called when the event occurs
The notifying class calls ofNotifyEvent() when it's time to send the event.
The listening class has its notification method called with the parameters of the ofEvent passed to it.

This version of the method allows you to use the prio to set whether the event should be called before the application events (mouse and key events, for example) with OF_EVENT_ORDER_BEFORE_APP or after with OF_EVENT_ORDER_AFTER_APP.







<!----------------------------------------------------------------------------->

###void ofAddListener(&event, *listener, void(ListenerClass::*listenerMethod)(), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofAddListener(&event, *listener, void(ListenerClass::*listenerMethod)(), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofAddListener_
_returns: void_
_returns_description: _
_parameters: ofEvent< void > &event, ListenerClass *listener, bool(ListenerClass::*listenerMethod)(), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Allows you to add a listener method to an event, use it whenever you want a class to be notified about an event.

This is a templated function so the types of the parameters are not predefined types but can be any type as long as the method is one of the listener class' and it has a particular signature.

The signature of the listener method depends on the event type. Every event is defined as:

~~~~{.cpp}
ofEvent<type> event;
~~~~

where type is the type of the parameter that is going to be passed when the event is notified. The listener method can have one of this two signatures:

~~~~{.cpp}
void listenerMethod(type & parameter);
~~~~

~~~~{.cpp}
void listenerMethod(const void * sender, type parameter);
~~~~

Where type must be the same as that of the event it listens to, and sender will be a pointer to the notifying class.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~

The general pattern is:

A notifying class that will notify defines an ofEvent.
A listening class that will listen for that ofEvent calls ofAddListener() using the name of the event, the "this" keyword to refer to itself, and a pointer to the method that you want called when the event occurs
The notifying class calls ofNotifyEvent() when it's time to send the event.
The listening class has its notification method called with the parameters of the ofEvent passed to it.

This version of the method allows you to use the prio to set whether the event should be called before the application events (mouse and key events, for example) with OF_EVENT_ORDER_BEFORE_APP or after with OF_EVENT_ORDER_AFTER_APP.







<!----------------------------------------------------------------------------->

###void ofAddListener(&event, *listener, *, &), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofAddListener(&event, *listener, *, &), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofAddListener_
_returns: void_
_returns_description: _
_parameters: EventType &event, ListenerClass *listener, bool(ListenerClass::*listenerMethod)(const void *, ArgumentsType &), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Allows you to add a listener method to an event, use it whenever you want a class to be notified about an event.

This is a templated function so the types of the parameters are not predefined types but can be any type as long as the method is one of the listener class' and it has a particular signature.

The signature of the listener method depends on the event type. Every event is defined as:

~~~~{.cpp}
ofEvent<type> event;
~~~~

where type is the type of the parameter that is going to be passed when the event is notified. The listener method can have one of this two signatures:

~~~~{.cpp}
void listenerMethod(type & parameter);
~~~~

~~~~{.cpp}
void listenerMethod(const void * sender, type parameter);
~~~~

Where type must be the same as that of the event it listens to, and sender will be a pointer to the notifying class.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~

The general pattern is:

A notifying class that will notify defines an ofEvent.
A listening class that will listen for that ofEvent calls ofAddListener() using the name of the event, the "this" keyword to refer to itself, and a pointer to the method that you want called when the event occurs
The notifying class calls ofNotifyEvent() when it's time to send the event.
The listening class has its notification method called with the parameters of the ofEvent passed to it.

This version of the method allows you to use the prio to set whether the event should be called before the application events (mouse and key events, for example) with OF_EVENT_ORDER_BEFORE_APP or after with OF_EVENT_ORDER_AFTER_APP.







<!----------------------------------------------------------------------------->

###void ofAddListener(&event, *listener, &), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofAddListener(&event, *listener, &), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofAddListener_
_returns: void_
_returns_description: _
_parameters: EventType &event, ListenerClass *listener, bool(ListenerClass::*listenerMethod)(ArgumentsType &), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Allows you to add a listener method to an event, use it whenever you want a class to be notified about an event.

This is a templated function so the types of the parameters are not predefined types but can be any type as long as the method is one of the listener class' and it has a particular signature.

The signature of the listener method depends on the event type. Every event is defined as:

~~~~{.cpp}
ofEvent<type> event;
~~~~

where type is the type of the parameter that is going to be passed when the event is notified. The listener method can have one of this two signatures:

~~~~{.cpp}
void listenerMethod(type & parameter);
~~~~

~~~~{.cpp}
void listenerMethod(const void * sender, type parameter);
~~~~

Where type must be the same as that of the event it listens to, and sender will be a pointer to the notifying class.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~

The general pattern is:

A notifying class that will notify defines an ofEvent.
A listening class that will listen for that ofEvent calls ofAddListener() using the name of the event, the "this" keyword to refer to itself, and a pointer to the method that you want called when the event occurs
The notifying class calls ofNotifyEvent() when it's time to send the event.
The listening class has its notification method called with the parameters of the ofEvent passed to it.

This version of the method allows you to use the prio to set whether the event should be called before the application events (mouse and key events, for example) with OF_EVENT_ORDER_BEFORE_APP or after with OF_EVENT_ORDER_AFTER_APP.







<!----------------------------------------------------------------------------->

###void ofAddListener(&event, *listener, *), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofAddListener(&event, *listener, *), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofAddListener_
_returns: void_
_returns_description: _
_parameters: ofEvent< void > &event, ListenerClass *listener, bool(ListenerClass::*listenerMethod)(const void *), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Allows you to add a listener method to an event, use it whenever you want a class to be notified about an event.

This is a templated function so the types of the parameters are not predefined types but can be any type as long as the method is one of the listener class' and it has a particular signature.

The signature of the listener method depends on the event type. Every event is defined as:

~~~~{.cpp}
ofEvent<type> event;
~~~~

where type is the type of the parameter that is going to be passed when the event is notified. The listener method can have one of this two signatures:

~~~~{.cpp}
void listenerMethod(type & parameter);
~~~~

~~~~{.cpp}
void listenerMethod(const void * sender, type parameter);
~~~~

Where type must be the same as that of the event it listens to, and sender will be a pointer to the notifying class.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~

The general pattern is:

A notifying class that will notify defines an ofEvent.
A listening class that will listen for that ofEvent calls ofAddListener() using the name of the event, the "this" keyword to refer to itself, and a pointer to the method that you want called when the event occurs
The notifying class calls ofNotifyEvent() when it's time to send the event.
The listening class has its notification method called with the parameters of the ofEvent passed to it.

This version of the method allows you to use the prio to set whether the event should be called before the application events (mouse and key events, for example) with OF_EVENT_ORDER_BEFORE_APP or after with OF_EVENT_ORDER_AFTER_APP.







<!----------------------------------------------------------------------------->

###void ofNotifyEvent(event, arguments)

<!--
_syntax: ofNotifyEvent(event, arguments)_
_name: ofNotifyEvent_
_returns: void_
_returns_description: _
_parameters: ofEvent even_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Notifies an event, what makes all it's registered method listeners to be called with the same argument.

This is a templated function so the type of the parameters is not predefined and can be anything as long as the listener methods use the same type for the parameter.

The arguments are passed to the listeners by reference so they can modify them. 

The listener methods are called in the same order they were registered using ofAddListener.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~







<!----------------------------------------------------------------------------->

###void ofNotifyEvent(event, arguments, sender)

<!--
_syntax: ofNotifyEvent(event, arguments, sender)_
_name: ofNotifyEvent_
_returns: void_
_returns_description: _
_parameters: ofEvent even_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Notifies an event, what makes all it's registered method listeners to be called with the same argument.

This is a templated function so the type of the parameters is not predefined and can be anything as long as the listener methods use the same type for the parameter.

The arguments are passed to the listeners by reference so they can modify them.

The listener methods are called in the same order they were registered using ofAddListener.

With this version the listeners also receive a pointer to the notifying class in case the listener method specifies that parameter.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~







<!----------------------------------------------------------------------------->

###void ofNotifyEvent(&event, &args, *sender)

<!--
_syntax: ofNotifyEvent(&event, &args, *sender)_
_name: ofNotifyEvent_
_returns: void_
_returns_description: _
_parameters: EventType &event, const ArgumentsType &args, SenderType *sender_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Notifies an event, what makes all it's registered method listeners to be called with the same argument.

This is a templated function so the type of the parameters is not predefined and can be anything as long as the listener methods use the same type for the parameter.

The arguments are passed to the listeners by reference so they can modify them.

The listener methods are called in the same order they were registered using ofAddListener.

With this version the listeners also receive a pointer to the notifying class in case the listener method specifies that parameter.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~







<!----------------------------------------------------------------------------->

###void ofNotifyEvent(&event, &args)

<!--
_syntax: ofNotifyEvent(&event, &args)_
_name: ofNotifyEvent_
_returns: void_
_returns_description: _
_parameters: EventType &event, const ArgumentsType &args_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Notifies an event, what makes all it's registered method listeners to be called with the same argument.

This is a templated function so the type of the parameters is not predefined and can be anything as long as the listener methods use the same type for the parameter.

The arguments are passed to the listeners by reference so they can modify them.

The listener methods are called in the same order they were registered using ofAddListener.

With this version the listeners also receive an event args object that can be used to send additional data to the listening class.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef()); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~







<!----------------------------------------------------------------------------->

###void ofNotifyEvent(&event, *sender)

<!--
_syntax: ofNotifyEvent(&event, *sender)_
_name: ofNotifyEvent_
_returns: void_
_returns_description: _
_parameters: ofEvent< void > &event, SenderType *sender_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Notifies an event, what makes all it's registered method listeners to be called with the same argument.

This is a templated function so the type of the parameters is not predefined and can be anything as long as the listener methods use the same type for the parameter.

The arguments are passed to the listeners by reference so they can modify them.

The listener methods are called in the same order they were registered using ofAddListener.

With this version the listeners also receive a pointer to the notifying class in case the listener method specifies that parameter.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

~~~~







<!----------------------------------------------------------------------------->

###void ofNotifyEvent(&event)

<!--
_syntax: ofNotifyEvent(&event)_
_name: ofNotifyEvent_
_returns: void_
_returns_description: _
_parameters: ofEvent< void > &event_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Notifies an event, what makes all it's registered method listeners to be called with the same argument.

This is a templated function so the type of the parameters is not predefined and can be anything as long as the listener methods use the same type for the parameter.

The arguments are passed to the listeners by reference so they can modify them.

The listener methods are called in the same order they were registered using ofAddListener.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

~~~~{.cpp}

class SimpleEventNotifier {
	ofEvent notify;	// will send an event with no data

	void sendEvent() {
		ofNotifyEvent(notify); 
	}

};

~~~~

We can listen for that in our ofApp:

~~~~{.cpp}
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(){
    ofLog() << " event at " << ofGetElapsedTimef() << endl;
}

~~~~







<!----------------------------------------------------------------------------->

###void ofRemoveListener(event, listenerInstance, &listenerClass::listenerMethod)

<!--
_syntax: ofRemoveListener(event, listenerInstance, &listenerClass::listenerMethod)_
_name: ofRemoveListener_
_returns: void_
_returns_description: _
_parameters: ofEvent even_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Removes a listener method from an event. Use it whenever you want a class to stop being notified about an event after having registered it to the method with ofAddListener.

Don't forget to call this before deleting any instance that is listening to an event, if not the event will try to notify a non existent instance and the application will crash.

The syntax is just the same as that of ofAddListener.







<!----------------------------------------------------------------------------->

###void ofRemoveListener(&event, *listener, *, &), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofRemoveListener(&event, *listener, *, &), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofRemoveListener_
_returns: void_
_returns_description: _
_parameters: EventType &event, ListenerClass *listener, void(ListenerClass::*listenerMethod)(const void *, ArgumentsType &), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Removes a listener method from an event. Use it whenever you want a class to stop being notified about an event after having registered it to the method with ofAddListener.

Don't forget to call this before deleting any instance that is listening to an event, if not the event will try to notify a non existent instance and the application will crash.

The syntax is just the same as that of ofAddListener.







<!----------------------------------------------------------------------------->

###void ofRemoveListener(&event, *listener, &), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofRemoveListener(&event, *listener, &), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofRemoveListener_
_returns: void_
_returns_description: _
_parameters: EventType &event, ListenerClass *listener, void(ListenerClass::*listenerMethod)(ArgumentsType &), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Removes a listener method from an event. Use it whenever you want a class to stop being notified about an event after having registered it to the method with ofAddListener.

Don't forget to call this before deleting any instance that is listening to an event, if not the event will try to notify a non existent instance and the application will crash.

The syntax is just the same as that of ofAddListener.







<!----------------------------------------------------------------------------->

###void ofRemoveListener(&event, *listener, *), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofRemoveListener(&event, *listener, *), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofRemoveListener_
_returns: void_
_returns_description: _
_parameters: ofEvent< void > &event, ListenerClass *listener, void(ListenerClass::*listenerMethod)(const void *), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Removes a listener method from an event. Use it whenever you want a class to stop being notified about an event after having registered it to the method with ofAddListener.

Don't forget to call this before deleting any instance that is listening to an event, if not the event will try to notify a non existent instance and the application will crash.

The syntax is just the same as that of ofAddListener.







<!----------------------------------------------------------------------------->

###void ofRemoveListener(&event, *listener, void(ListenerClass::*listenerMethod)(), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofRemoveListener(&event, *listener, void(ListenerClass::*listenerMethod)(), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofRemoveListener_
_returns: void_
_returns_description: _
_parameters: ofEvent< void > &event, ListenerClass *listener, bool(ListenerClass::*listenerMethod)(), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Removes a listener method from an event. Use it whenever you want a class to stop being notified about an event after having registered it to the method with ofAddListener.

Don't forget to call this before deleting any instance that is listening to an event, if not the event will try to notify a non existent instance and the application will crash.

The syntax is just the same as that of ofAddListener.







<!----------------------------------------------------------------------------->

###void ofRemoveListener(&event, *listener, *, &), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofRemoveListener(&event, *listener, *, &), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofRemoveListener_
_returns: void_
_returns_description: _
_parameters: EventType &event, ListenerClass *listener, bool(ListenerClass::*listenerMethod)(const void *, ArgumentsType &), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Removes a listener method from an event. Use it whenever you want a class to stop being notified about an event after having registered it to the method with ofAddListener.

Don't forget to call this before deleting any instance that is listening to an event, if not the event will try to notify a non existent instance and the application will crash.

The syntax is just the same as that of ofAddListener.







<!----------------------------------------------------------------------------->

###void ofRemoveListener(&event, *listener, &), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofRemoveListener(&event, *listener, &), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofRemoveListener_
_returns: void_
_returns_description: _
_parameters: EventType &event, ListenerClass *listener, bool(ListenerClass::*listenerMethod)(ArgumentsType &), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Removes a listener method from an event. Use it whenever you want a class to stop being notified about an event after having registered it to the method with ofAddListener.

Don't forget to call this before deleting any instance that is listening to an event, if not the event will try to notify a non existent instance and the application will crash.

The syntax is just the same as that of ofAddListener.







<!----------------------------------------------------------------------------->

###void ofRemoveListener(&event, *listener, *), prio = OF_EVENT_ORDER_AFTER_APP)

<!--
_syntax: ofRemoveListener(&event, *listener, *), prio = OF_EVENT_ORDER_AFTER_APP)_
_name: ofRemoveListener_
_returns: void_
_returns_description: _
_parameters: ofEvent< void > &event, ListenerClass *listener, bool(ListenerClass::*listenerMethod)(const void *), int prio=OF_EVENT_ORDER_AFTER_APP_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Removes a listener method from an event. Use it whenever you want a class to stop being notified about an event after having registered it to the method with ofAddListener.

Don't forget to call this before deleting any instance that is listening to an event, if not the event will try to notify a non existent instance and the application will crash.

The syntax is just the same as that of ofAddListener.







<!----------------------------------------------------------------------------->

