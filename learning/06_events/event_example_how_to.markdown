---
.. author: 
.. title: Listen to events
.. type: howto
---

### Introduction

In order to be able to listen to an event in  your application you need three things: a listener, an event and an handler.
The listener tells to your application to listen for a certain event, the event is the action that you want to catch, and the handler tells to your application what to do when that event is triggered.
To add a listener to your app, you have to define it in the setup method of your `App.cpp` file, using the method [ofAddListener](/documentation/events/ofEventUtils/#show_ofAddListener).

```cpp
ofAddListener(theEventThatImListening , this, &myHandler);
```

In the App.cpp file, you also have to define what `myHandler` is doing

```cpp
void myHandler(arguments & event){
  //do something
}
```

### Default events

Any openFrameworks app, comes at the beginning with handlers for a lot of events:

```cpp
void keyPressed(int key);
void keyReleased(int key);
void mouseMoved(int x, int y );
void mouseDragged(int x, int y, int button);
void mousePressed(int x, int y, int button);
void mouseReleased(int x, int y, int button);
void mouseEntered(int x, int y);
void mouseExited(int x, int y);
void windowResized(int w, int h);
void dragEvent(ofDragInfo dragInfo);
void gotMessage(ofMessage msg);
```

You don't need to add the listeners for this handlers, because they are already there for you, ready to use.

### Resources

* If you want to create listener for your class (not in `ofApp.ccp`), have a look at the example `examples/events/SimpleEventsExample`. In general, in the folder `examples/events` there are a lot of usefull resources about events, also about how to create custom events.
* The openframeworks documentation has a section for [events](/documentation/events/)
