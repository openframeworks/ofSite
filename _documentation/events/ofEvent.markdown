#class ofEvent

##Description



Class for creating custom events. Also used inside oF for it's own events (see ofCoreEvents).

ie: To create a new event:


~~~~{.cpp}
ofEvent<float> onVolumeChange;
~~~~


To notify an event of that type:


~~~~{.cpp}
ofNotifyEvent(onVolumeChange, 10.0);
~~~~


To add a listener to that event, if the event is for example in an object called mySoundObject, and you want to register testApp as a listener for that event:


~~~~{.cpp}
ofAddListener(mySoundObject.onVolumeChange,this, &testApp:onVolumeChange);
~~~~


where testApp::onVolumeChange is a function with the following signature:


~~~~{.cpp}
void onVolumeChange(float & volume);
~~~~


See the advancedEventsExample to see a complete example on how to work with events in oF.

Be careful when using events, it's a powerful structure but can also lead to really confusing code as there's no direct calls to an object. 

It's important to unregister events in the destruction of listeners, if not an object that has already been destroyed can get called and the application will crash.

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



##Variables



