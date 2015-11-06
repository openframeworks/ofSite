#class ofEvent


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofBaseEvent<of::priv::Function<T, Mutex>, Mutex>_
-->

##InlineDescription

/*! \endcond */





##Description

Class for creating custom events. Also used inside oF for its own events (see ofCoreEvents).

ie: To create a new event:

~~~~{.cpp}
ofEvent<float> onVolumeChange;
~~~~

To notify an event of that type:

~~~~{.cpp}
ofNotifyEvent(onVolumeChange, 10.0);
~~~~

To add a listener to that event, if the event is for example in an object called mySoundObject, and you want to register ofApp as a listener for that event:

~~~~{.cpp}
ofAddListener(mySoundObject.onVolumeChange,this, &ofApp::onVolumeChange);
~~~~

where ofApp::onVolumeChange is a function with the following signature:

~~~~{.cpp}
void onVolumeChange(float & volume);
~~~~

See the advancedEventsExample to see a complete example of how to work with events in oF.

Be careful when using events, it's a powerful structure but can also lead to really confusing code as there's no direct calls to an object. 

It's important to unregister events in the destruction of listeners, if not an object that has already been destroyed can get called and the application will crash.

~~~~{.cpp}
ofRemoveListener(mySoundObject.onVolumeChange,this, &ofApp:onVolumeChange);
~~~~

Events have a private copy constructor to avoid that a copy of an object with an event gets all the registered listeners of the original. To be able to create a copy of an object that contains an event, use a pointer to an event instead of a normal var. This also means that you cannot store events directly in a vector or any other collection, the solution is the same, just use a pointer to an event.

ie:

wrong:  
~~~~{.cpp}
vector< ofEvent<int> > events;
~~~~

right:  
~~~~{.cpp}
vector< ofEvent<int>* > events;
~~~~





##Methods



###void add(*listener, method, priority)

<!--
_syntax: add(*listener, method, priority)_
_name: add_
_returns: void_
_returns_description: _
_parameters: TObj *listener, TMethod method, int priority_
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







_description: _







<!----------------------------------------------------------------------------->

###void add(function, priority)

<!--
_syntax: add(function, priority)_
_name: add_
_returns: void_
_returns_description: _
_parameters: TFunction function, int priority_
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







_description: _







<!----------------------------------------------------------------------------->

###FunctionPtr make_function(*listener, method, priority)

<!--
_syntax: make_function(*listener, method, priority)_
_name: make_function_
_returns: FunctionPtr_
_returns_description: _
_parameters: TObj *listener, bool (TObj::*)(T &) method, int priority_
_access: protected_
_version_started: 0.9.0_
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

###FunctionPtr make_function(*listener, method, priority)

<!--
_syntax: make_function(*listener, method, priority)_
_name: make_function_
_returns: FunctionPtr_
_returns_description: _
_parameters: TObj *listener, void (TObj::*)(T &) method, int priority_
_access: protected_
_version_started: 0.9.0_
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

###FunctionPtr make_function(*listener, *, method, priority)

<!--
_syntax: make_function(*listener, *, method, priority)_
_name: make_function_
_returns: FunctionPtr_
_returns_description: _
_parameters: TObj *listener, bool (TObj::*)(const void *, T &) method, int priority_
_access: protected_
_version_started: 0.9.0_
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

###FunctionPtr make_function(*listener, *, method, priority)

<!--
_syntax: make_function(*listener, *, method, priority)_
_name: make_function_
_returns: FunctionPtr_
_returns_description: _
_parameters: TObj *listener, void (TObj::*)(const void *, T &) method, int priority_
_access: protected_
_version_started: 0.9.0_
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

###FunctionPtr make_function(function, priority)

<!--
_syntax: make_function(function, priority)_
_name: make_function_
_returns: FunctionPtr_
_returns_description: _
_parameters: bool (*)(T &) function, int priority_
_access: protected_
_version_started: 0.9.0_
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

###FunctionPtr make_function(function, priority)

<!--
_syntax: make_function(function, priority)_
_name: make_function_
_returns: FunctionPtr_
_returns_description: _
_parameters: void (*)(T &) function, int priority_
_access: protected_
_version_started: 0.9.0_
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

###FunctionPtr make_function(*, function, priority)

<!--
_syntax: make_function(*, function, priority)_
_name: make_function_
_returns: FunctionPtr_
_returns_description: _
_parameters: bool (*)(const void *, T &) function, int priority_
_access: protected_
_version_started: 0.9.0_
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

###FunctionPtr make_function(*, function, priority)

<!--
_syntax: make_function(*, function, priority)_
_name: make_function_
_returns: FunctionPtr_
_returns_description: _
_parameters: void (*)(const void *, T &) function, int priority_
_access: protected_
_version_started: 0.9.0_
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

###unique_ptr<FunctionId< TObj, TMethod>  > make_function_id(*listener, method)

<!--
_syntax: make_function_id(*listener, method)_
_name: make_function_id_
_returns: unique_ptr<FunctionId< TObj, TMethod>  >_
_returns_description: _
_parameters: TObj *listener, TMethod method_
_access: protected_
_version_started: 0.9.0_
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

###void notify(*sender, &param)

<!--
_syntax: notify(*sender, &param)_
_name: notify_
_returns: void_
_returns_description: _
_parameters: const void *sender, T &param_
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







_description: _







<!----------------------------------------------------------------------------->

###void remove(*listener, method, priority)

<!--
_syntax: remove(*listener, method, priority)_
_name: remove_
_returns: void_
_returns_description: _
_parameters: TObj *listener, TMethod method, int priority_
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







_description: _







<!----------------------------------------------------------------------------->

###void remove(function, priority)

<!--
_syntax: remove(function, priority)_
_name: remove_
_returns: void_
_returns_description: _
_parameters: TFunction function, int priority_
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







_description: _







<!----------------------------------------------------------------------------->

##Variables



