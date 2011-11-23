#class ofEventUtils


##Description


define ofEvent as a poco FIFOEvent to create your own events use: ofEvent<argType> myEvent





##Methods



### ofEvent()

_syntax: ofEvent()_

_name: ofEvent_

_returns: _

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


 ### ofEvent(const ofEvent<ArgumentsType> & mom) ### 
 allow copy of events, by copying everything except the mutex

 ### ofEvent<ArgumentsType> & operator=(const ofEvent<ArgumentsType> & mom) ### 








### void ofAddListener(event, listener, void)

_syntax: ofAddListener(event, listener, void)_

_name: ofAddListener_

_returns:  void_

_returns_description: _

_parameters: EventType & event, ListenerClass  * listener, void_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


register any method of any class to an event. the method must provide one of the following
signatures:
     void method(ArgumentsType & args)
     void method(const void * sender, ArgumentsType &args)
ie:
     ofAddListener(addon.newIntEvent, this, &Class::method)










### void ofRemoveListener(event, listener, void)

_syntax: ofRemoveListener(event, listener, void)_

_name: ofRemoveListener_

_returns:  void_

_returns_description: _

_parameters: EventType & event, ListenerClass  * listener, void_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


unregister any method of any class to an event.
the method must provide one the following
signatures:
    void method(ArgumentsType & args)
    void method(const void * sender, ArgumentsType &args)
ie:
    ofAddListener(addon.newIntEvent, this, &Class::method)








### void ofNotifyEvent(event, args, sender)

_syntax: ofNotifyEvent(event, args, sender)_

_name: ofNotifyEvent_

_returns:  void_

_returns_description: _

_parameters: EventType & event, ArgumentsType & args, SenderType * sender_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

notifies an event so all the registered listeners
get called
ie:
	ofNotifyEvent(addon.newIntEvent, intArgument, this)
or in case there's no sender:
	ofNotifyEvent(addon.newIntEvent, intArgument)







### void ofNotifyEvent(event, args)

_syntax: ofNotifyEvent(event, args)_

_name: ofNotifyEvent_

_returns:  void_

_returns_description: _

_parameters: EventType & event, ArgumentsType & args_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







##Variables



