## Application and custom events using the observer pattern.

The events module in openFrameworks has some classes and functions that allow the user to work with events. Events allow a listener to receive a notification whenever something happens in another part of the code or in the hardware. 

For example when the mouse is moved you can use the mouseMoved function in your ofApp to respond. If you want to know when the mouse is moved in any other object in your code you can simply call from your ofApp to your object or you can register a method of that object as a listener to the mouseMoved event.

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

The syntax is kind of strange, mostly the ofAddListener and ofRemoveListener calls, let's see what it means:

[ofAddListener](ofEventUtils.html#ofAddListener) registers a method of an object or a function as a listener to an event such that the method or function will be called whenever that event occurs.

The first parameter to ofAddListener is the event to which we want to add a listener, in this case `ofEvents().mouseMoved`

The second parameter, `this`, indicates that the listening method or function exists in this object; the event can also be sent to another object, but using `this` is a common pattern.

The third parameter, `&SomeClass::mouseMoved` is the method `mouseMoved` in the class `SomeClass`. The `&` operator is used to pass a pointer to that function.

Another important aspect of event handling is to remove the listener before the object is destroyed. In this example, we place a call to [ofRemoveListener](ofEventUtils.html#ofRemoveListener) in the destructor to ensure that happens. The syntax is identical to the [ofAddListener](ofEventUtils.html#ofAddListener) function.

The last thing to notice is the signature (i.e., the syntax) of the event or function that will receive the event. In this case, the event expects to be passed to a method that recieves one parameter: a reference to the event type. The `&` operator is used to specify that the event type object is passed by reference.

You can also create your own events using the [ofEvent](ofEvent.html) class. If thread saftey is not important for your application, you can also use [ofFastEvent](ofFastEvent), which has the same syntax but is much faster than the normal [ofEvent](ofEvent.html)

Events in OF are an implementation of the [Observer](https://en.wikipedia.org/wiki/Observer_pattern) pattern. Use it with care and try to avoid using it unless required. The main usage for an event (rather than a direct call from one object to another) is to provide independence from the caller to the callee. Note that custom events must also be "unregistered" before an objects are destroyed, and that registration is not transfered or duplicated if a registered object is copied. However, transferall of the registration may be accomplished by implementing your own copy constructor.
