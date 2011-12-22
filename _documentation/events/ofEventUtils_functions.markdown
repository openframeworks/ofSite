#functions

##Description





<!----------------------------------------------------------------------------->

###void ofAddListener(event, listenerInstance, &listenerClass::listenerMethod)

<!--
_syntax: ofAddListener(event, listenerInstance, &listenerClass::listenerMethod)_
_name: ofAddListener_
_returns: void_
_returns_description: _
_parameters: ofEvent        event
ListenerClass  instance
ListenerMethod method_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: 1_
_advanced: 1_
-->

_description: _

Allows to add a listener method to an event. Use it whenever you want a class to be notified about an event.

This is a templated function so the types of the parameters are not predefined types but can be any type as lons as the method is one of the listener class' and it has a particular signature.

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







<!----------------------------------------------------------------------------->

###void ofRemoveListener(event, listenerInstance, &listenerClass::listenerMethod)

<!--
_syntax: ofRemoveListener(event, listenerInstance, &listenerClass::listenerMethod)_
_name: ofRemoveListener_
_returns: void_
_returns_description: _
_parameters: ofEvent event
ListenerClass instance
ListenerMethod method_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: 1_
_advanced: 1_
-->

_description: _

Removes a listener method from an event. Use it whenever you want a class to stop being notified about an event after having registered it to the method with ofAddListener.

Don't forget to call this before deleting any instance that is listening to an event, if not the event will try to notify a non existent instance and the application will crash.

The syntax is just the same as that of ofAddListener.







<!----------------------------------------------------------------------------->

###void ofNotifyEvent(event, arguments)

<!--
_syntax: ofNotifyEvent(event, arguments)_
_name: ofNotifyEvent_
_returns: void_
_returns_description: _
_parameters: ofEvent event
ArgumentsType & arguments_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: 1_
_advanced: 1_
-->

_description: _

Notifies an event, what makes all it's registered method listeners to be called with the same argument.

This is a templated function so the type of the parameters is not predefined and can be anything as long as the listener methods use the same type for the parameter.

The arguments are passed to the listeners by reference so they can modify them. 

The listener methods are called in the same order they were registered using ofAddListener.







<!----------------------------------------------------------------------------->

###void ofNotifyEvent(event, arguments, sender)

<!--
_syntax: ofNotifyEvent(event, arguments, sender)_
_name: ofNotifyEvent_
_returns: void_
_returns_description: _
_parameters: ofEvent event
ArgumentsType arguments
const void * sender_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: 1_
_advanced: 1_
-->

_description: _

Notifies an event, what makes all it's registered method listeners to be called with the same argument.

This is a templated function so the type of the parameters is not predefined and can be anything as long as the listener methods use the same type for the parameter.

The arguments are passed to the listeners by reference so they can modify them.

The listener methods are called in the same order they were registered using ofAddListener.

With this version the listeners also receive a pointer to the notifying class in case the listener method specifies that parameter.







<!----------------------------------------------------------------------------->

