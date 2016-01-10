## Application and custom events using the observer pattern.

The events module in openFrameworks has some classes and functions that allow to work with events. Events allow to receive a notification whenever something happens in another part of the code or in the hardware. 

For example when the mouse is moved you can use the mouseMoved function in your ofApp to do something. If you want to know when the mouse is moved in any other object in your code you can simply call from your ofApp to your object or you can register a method of that object as a listener to the mouseMoved event.

```cpp
class SomeClass{
public:
    void setup(){
        ofAddListener(ofEvents().mouseMoved, this, &SomeClass::mouseMoved);
    }
    
    ~SomeClass(){
        ofRemoveListener(ofEvents().mouseMoved, this, &SomeClass::mouseMoved);
    }
    
    void mouseMoved(ofMouseEventArgs & mouse){
        // do something when the mouse moves
    }
}
```

The syntax is kind of strange, mostly the ofAddListener and ofRemoveListener calls, lets see what it means:

[ofAddListener](ofEventUtils.html#ofAddListener), allows to register a method of an object or a function as a listener to an event, that way whenever that event is notified the method or function will be called.

The first parameter to ofAddListener is the event to which we want to add a listener, in this case `ofEvents().mouseMoved`

The second parameter, this, means that we want the notifications to be sent, the method which will be called, to happen in this object. We could have set it to another object but using `this` is a pretty common pattern.

The third parameter, `&SomeClass::mouseMoved` is the method mouseMoved in the class SomeClass and we use an `&` because we are passing a pointer to that function.

Another thing that is important is to remove the listener at least before the class is completely destroyed, that's why in the destructor of our class we use [ofRemoveListener](ofEventUtils.html#ofRemoveListener) which has the same syntax as [ofAddListener](ofEventUtils.html#ofAddListener) to remove the method as a listener to the mouseMoved event. Otherwise OF could try to call our object after it's been destroyed and the application would crash.

The last thing to notice is the signature, the syntax, of the event or function that will receive the event. By now that method has to receive 1 parameter which is a reference to the type of the event, that's why we use `&`

You can also create your own events using the [ofEvent](ofEvent.html) class. And in case you don't need a thread safe event, if you are going to work from only one thread, you can also use [ofFastEvent](ofFastEvent) which has the same syntax but is much faster than the normal [ofEvent](ofEvent.html)

Events in OF are an implementation of the [Observer](https://en.wikipedia.org/wiki/Observer_pattern) pattern which has it's pros and cons, use it with care but try not to use it unless really needed. The main usage for an event instead of a direct call from one object to another is to provide independence from the caller to the callee so if you don't really need that or plan to need it in the future you can probably use a direct call beter.

One of the biggest problems of events are that you need to take care of unregistering every listener before it's destroyed, also if you copy an object and it was registered to an event the copy won't be,  so you'll need to implement the copy constructor which is better to avoid since it's more error prone than letting the default copy constructor copy the whole object.

