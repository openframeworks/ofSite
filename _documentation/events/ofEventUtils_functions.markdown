#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






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

