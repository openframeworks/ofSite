#class ofThread


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription

A threaded base class with a built in mutex for convenience. 


Users can extend this base class by public inheritance like this: class MyThreadedClass: public ofThread
{
    public:
    /// ...
    void threadedFunction()
    {
        while(isThreadRunning())
        {
            /// Threaded function here.
        }
    }
};


ofThread is a convenient wrapper for Poco::Thread, Poco::Runnable and Poco::Mutex. It represents a simplified (sometimes overly simplified - or simplified in ways that might not make sense for your project) pathway for quickly writing threaded classes. Poco::Runnable represents a class that can be "run" via its void run() method. Poco::Thread is able to spawn a thread and "run" the contents of a class that extends the Poco::Runnable interface (which ofThread does). Poco::FastMutex, (aka ofMutex) is a "mutual exclusion" object that prevents two threads from accessing the same data at the same time. It is important to know that Poco::FastMutex (aka ofMutex) is not "recursive" while Poco::Mutex is. This means that if the same thread attempts to lock a thread while it ALREADY has a lock on the mutex, the program will lock up and go nowhere. Thus, it is important that ofThread subclasses carefully their use of the mutex. Currently ofThread does not lock its own mutex at any point (e.g. ofThread's internal variables are not thread safe). This is a somewhat dangerous convenience that is (theoretically) supposed to make it easier for subclasses to avoid the recursive mutex "problem". The situation that arises from two threads simultanously reading or writing from the same shared data (shared data occupies the same physical location in memory) leads to something called a "race condition", which can lead to deadlocks. A deadlock is as bad as it sounds. It means your program just stops. ofMutex prevents race conditions, deadlocks and crashes by permitting only one thread access to shared data at a time. When using mutexes to protect data, the trick is to always be sure to unlock the mutex when finished. This problem can often be avoided by using an Poco::FastMutex::ScopedLock (aka ofScopedLock). See the the documentation for more information. Finally, there are many cases where it might make more sense to use Poco::Thread, Poco::Runnable and Poco::FastMutex directly rather than using ofThread. Further, cross platform thread management will be alleviated with the std::thread support library included with C++11. 





##Description

ofThread is a thread base class with a built in mutex. A [thread](http://en.wikipedia.org/wiki/Thread_(computing)) is essentially a mini processing object you can run in parallel to your main application loop and is useful for running time intensive operations without slowing down your app.

####Implementing a Thread

For instance, you have to grab from a camera and waiting for an image slows down your app. You can offload this wait to a thread which tells the main app when an image is ready. To do this, you create a class that inherits from the ofThread class and implement the threadedFunction() function.

Declaration in a .h file:

~~~~{.cpp}

class MyThread : public ofThread {

	...

	// the thread function
	void MyThread::threadedFunction() {
	
		// start
	
		while(isThreadRunning()) {
	
			cam.update();
			if(cam.isFrameNew()) {
		
				// load the image
				image.setFromPixels(cam.getPixelsRef());
			}
		}
	
		// done
	}
	
	ofVideoGrabber cam;	// the cam
	ofImage image;
};

~~~~

In the application .h inside the ofApp class declare an object of type MyThread like:

~~~~{.cpp}
// create object
MyThread thread;
~~~~

then in the .cpp file:

~~~~{.cpp}

void ofApp::setup() {

	// start the thread
	thread.startThread(true, false);	// blocking, non verbose
}

void ofApp::update() {
	
	// do something with the thread is running
}

void ofApp::exit() {

	// stop the thread
	thread.stopThread();
}

~~~~

####Shared Resources

With this great power, however, comes great responsibility. If both the thread and your main app loop try to access the image at the same time, bad things happen inside your computer and the app will crash. The image is a considered a "shared resource" and you need to make sure to lock access to it so that only 1 thread can access it a time. You can do this using a ["mutal exclusion" object](http://en.wikipedia.org/wiki/Mutex) by called lock() when you want to access the resource, then unlock() when you are done.

Declaration in a .h file:

~~~~{.cpp}

class MyThread : public ofThread {

	...

	// the thread function
	void MyThread::threadedFunction() {
	
		// start
	
		while(isThreadRunning()) {
	
			cam.update();
			if(cam.isFrameNew()) {
	
				// lock access to the resource
				lock();
				
				// load the image
				image.setFromPixels(cam.getPixelsRef());	
				// done with the resource
				unlock();
			}	
		}
	
		// done
	}

	ofVideoGrabber cam;	// the cam
	ofImage image;		// the shared resource
};

~~~~

In the .cpp file:

~~~~{.cpp}

void ofApp::setup() {
	
	// start the thread
	thread.startThread(true, false);	// blocking, non verbose
}

void ofApp::update() {
	
	// lock access to the resource
	thread.lock();
	
	// copy image
	myImage = thread.image;
	
	// done with the resource
	thread.unlock();
}

void ofApp::exit() {

	// stop the thread
	thread.stopThread();
}

~~~~

####Exiting Nicely

As a thread is running in parallel with your application main loop, it's important to remember to tell it to stop before exiting the app. If you don't, you'll get weird errors or hangs because you aren't being nice to your threads. Depending on how you started your thread (blocking or non-blocking mode), you will either stop it for wait for it to finish. See the stopThread() & waitForThread() functions.

####Debugging

Thread errors are *notoriously* difficult to debug sometimes. You will probably see a "Bad Access" runtime error or something similar if multiple threads are trying to access a shared resource simultaneously. Other times, nothing will happen as the thread may be stuck in an infinite loop and you can't stop it. Wee! We assume if you've read this far, you probably accept the difficulties in order to reap the thread speed rewards. 

A useful tool in debugging thread timing and access is the ofThread verbose mode which prints thread events such as starting, stopping, and mutex locking/unlocking. Simply set verbose=true when calling startThread(). Another trick is to use an ofSleepMillis() inside the thread to slow it down so you can see the timing better while debugging it.

####HOO RAH

Ok soldier, lock and load ... good luck!





##Methods



###Poco::Thread * getCurrentPocoThread()

<!--
_syntax: getCurrentPocoThread()_
_name: getCurrentPocoThread_
_returns: Poco::Thread *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the current Poco thread. 


In most cases, it is more appropriate to query the current thread by calling isCurrentThread() on an active thread or by calling ofThread::isMainThread(). See the method documentation for more information on those methods.

***return:*** 
	A pointer to the current active thread OR 0 iff the main application thread is active. 










_description: _







<!----------------------------------------------------------------------------->

###Poco::Thread & getPocoThread()

<!--
_syntax: getPocoThread()_
_name: getPocoThread_
_returns: Poco::Thread &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get a reference to the underlying Poco thread. 


Poco::Thread provides a clean cross-platform wrapper for threads. On occasion, it may be useful to interact with the underlying Poco::Thread directly.

***return:*** 
	A reference to the backing Poco thread. 










_description: _








<!----------------------------------------------------------------------------->

###const Poco::Thread & getPocoThread()

<!--
_syntax: getPocoThread()_
_name: getPocoThread_
_returns: const Poco::Thread &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get a const reference to the underlying Poco thread. 


Poco::Thread provides a clean cross-platform wrapper for threads. On occasion, it may be useful to interact with the underlying Poco::Thread directly.

***return:*** 
	A reference to the backing Poco thread. 










_description: _







<!----------------------------------------------------------------------------->

###int getThreadId()

<!--
_syntax: getThreadId()_
_name: getThreadId_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the unique thread id. 


***note:*** 
	This is NOT the the same as the operating thread id! 










_description: _








<!----------------------------------------------------------------------------->

###std::string getThreadName()

<!--
_syntax: getThreadName()_
_name: getThreadName_
_returns: std::string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the unique thread name, in the form of "Thread id#". 


***return:*** 
	the Thread ID string. 










_description: _







<!----------------------------------------------------------------------------->

###bool isCurrentThread()

<!--
_syntax: isCurrentThread()_
_name: isCurrentThread_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Query whether the current thread is active. 


In multithreaded situations, it can be useful to know which thread is currently running some code in order to make sure only certain threads can do certain things. For example, OpenGL can only run in the main execution thread. Thus, situations where a thread is responsible for interacting with graphics resources may need to prevent graphics updates unless the main thread is accessing or updating resources shared with this ofThread (or its subclass). if(myThread.isCurrentThread())
{
    // do some myThread things,
    // but keep your hands off my resources!
}
else if(ofThread::isMainThread())
{
    // pheew! ok, update those graphics resources
}


By way of another example, a subclass of ofThread may have an update() method that is called from ofBaseApp during the execution of the main application thread. In these cases, the ofThread subclass might want to ask itself whether it can, for instance, call update() on an ofImage, in order to send copy some ofPixels to an ofTexture on the graphics card.

***return:*** 
	True iff this ofThread the currently active thread. 










_description: _








<!----------------------------------------------------------------------------->

###bool isMainThread()

<!--
_syntax: isMainThread()_
_name: isMainThread_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

A query to see if the current thread is the main thread. 


Some functions (e.g. OpenGL calls) can only be executed the main thread. This static function will tell the user what thread is currently active at the moment the method is called. if (ofThread::isMainThread())
{
    ofLogNotice() << "This is the main thread!";
}
else
{
    ofLogNotice() << "This is NOT the main thread.";
}


***return:*** 
	true iff the current thread is the main thread. 










_description: _








<!----------------------------------------------------------------------------->

###bool isThreadRunning()

<!--
_syntax: isThreadRunning()_
_name: isThreadRunning_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Check the running status of the thread. 


***return:*** 
	true iff the thread is currently running. 










_description: _


Returns true if the thread is currently running. This is especially useful inside the thread's threadedFunction() when you want it to loop continuously until it's told to exit:

~~~~{.cpp}

class MyThread : public ofThread {

	...

	// the thread function
	void MyThread::threadedFunction() {
	
		// start
	
		while(isThreadRunning()) {
	
			// do stuff
		}
	
		// done
	}

};

~~~~







<!----------------------------------------------------------------------------->

###bool lock()

<!--
_syntax: lock()_
_name: lock_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Try to lock the mutex. 


If the thread was started startThread(true), then this call will wait until the mutex is available and return true. If the thread was started startThread(false), this call will return true iff the mutex is was successfully acquired.

***return:*** 
	true iff the lock was successfully acquired. 










_description: _


Try to lock the mutex.

If the thread was started in blocking mode in startThread(), any thread (including your app main loop) will wait until the mutex is unlocked.

If the thread is non-blocking, this call will immediately return a true or false if the mutex is available. It is up to you to make sure the resource is not being used when accessing it. See the [Wikipedia article on Non-blocking](http://en.wikipedia.org/wiki/Non-blocking_algorithm) for reasons as to why using a non-blocking thread might be more advantageous.







<!----------------------------------------------------------------------------->

### ofThread()

<!--
_syntax: ofThread()_
_name: ofThread_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _

Create an ofThread. 








_description: _








<!----------------------------------------------------------------------------->

###void run()

<!--
_syntax: run()_
_name: run_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Implements Poco::Runnable::run(). 








_description: _








<!----------------------------------------------------------------------------->

###void sleep(milliseconds)

<!--
_syntax: sleep(milliseconds)_
_name: sleep_
_returns: void_
_returns_description: _
_parameters: long milliseconds_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Tell the thread to sleep for a certain amount of milliseconds. 


This is useful inside the threadedFunction() when a thread is waiting for input to process: void MyThreadedClass::threadedFunction()
{
    // start
    while(isThreadRunning())
    {
        // bReadyToProcess can be set from outside the threadedFuntion.
        // perhaps by another thread that downloads data, or loads
        // some media, etc.

        if(bReadyToProcess == true)
        {
            // do some time intensive processing
            bReadyToProcess = false;
        }
        else
        {
            // sleep the thread to give up some cpu
            sleep(20);
        }
    }
    // done
}


If the user does not give the thread a chance to sleep, the thread may take 100% of the CPU core while it's looping as it waits for something to do. This may lead to poor application performance.










_description: _







<!----------------------------------------------------------------------------->

###void startThread(mutexBlocks = true)

<!--
_syntax: startThread(mutexBlocks = true)_
_name: startThread_
_returns: void_
_returns_description: _
_parameters: bool mutexBlocks=true_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Start the thread with options. 



***note:*** 
	Subclasses can directly access the mutex and employ thier own locking strategy. 










_description: _







<!----------------------------------------------------------------------------->

###void stopThread()

<!--
_syntax: stopThread()_
_name: stopThread_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Stop the thread. 


This does immediately stop the thread from processing, but will only set a flag that must be checked from within your threadedFunction() by calling isThreadRunning(). If the user wants to both stop the thread AND wait for the thread to finish processing, the user should call waitForThread(true, ...). 







_description: _








<!----------------------------------------------------------------------------->

###void threadedFunction()

<!--
_syntax: threadedFunction()_
_name: threadedFunction_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

The thread's run function. 


Users must overide this in your their derived class and then implement their threaded activity inside the loop. If the the users's threadedFunction does not have a loop, the contents of the threadedFunction will be executed once and the thread will then exit.

For tasks that must be repeated, the user can use a while loop that will run repeatedly until the thread's threadRunning is set to false via the stopThread() method. void MyThreadedClass::threadedFunction()
{
    // Start the loop and continue until
    // isThreadRunning() returns false.
    while(isThreadRunning())
    {
        // Do activity repeatedly here:

        // int j = 1 + 1;

        // This while loop will run as fast as it possibly
        // can, consuming as much processor speed as it can.
        // To help the processor stay cool, users are
        // encouraged to let the while loop sleep via the
        // sleep() method, or call the yield() method to let
        // other threads have a turn.  See the sleep() and
        // yield() methods for more information.

        // sleep(100);
    }
 







_description: _


This is the thread run function, the heart of your thread.

You need to override this in your derived class and implement your thread stuff inside. If you do not have a loop inside this function, it will run once then exit. If you want the thread to run until you signal it to stop, use a while loop inside that checks if the thread is should keep running.

Declaration in a .h file:

~~~~{.cpp}

class MyThread : public ofThread {

	...

	// the thread function
	void MyThread::threadedFunction() {
	
		// start
	
		while(isThreadRunning()) {
	
			// do stuff
		}
	
		// done
	}

};

~~~~

In the .cpp file:

~~~~{.cpp}

void ofApp::setup() {

	// create object
	MyThread thread;
	
	// start the thread
	thread.startThread(true, false);	// blocking, non verbose
}

void ofApp::update() {

	// do something else while the thread is running
}

void ofApp::exit() {
	
	// stop the thread
	thread.stopThread();
}

~~~~







<!----------------------------------------------------------------------------->

###void unlock()

<!--
_syntax: unlock()_
_name: unlock_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Unlock the mutex. 


This will only unlocks the mutex if it was previously by the same calling thread. 







_description: _


Unlock the mutex.

This only unlocks the mutex if the calling thread had previously locked it, otherwise the functions does nothing and does not block.







<!----------------------------------------------------------------------------->

###void waitForThread(callStopThread = true, milliseconds = INFINITE_JOIN_TIMEOUT)

<!--
_syntax: waitForThread(callStopThread = true, milliseconds = INFINITE_JOIN_TIMEOUT)_
_name: waitForThread_
_returns: void_
_returns_description: _
_parameters: bool callStopThread=true, long milliseconds=INFINITE_JOIN_TIMEOUT_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Wait for the thread to exit (aka "joining" the thread). 


This method waits for a thread will "block" and wait for the thread (aka "join" the thread) before it returns. This allows the user to be sure that the thread is properly cleaned up. An example of when this might be particularly important is if the threadedFunction() is opening a set of network sockets, or downloading data from the web. Destroying an ofThread subclass without releasing those sockets (or other resources), may result in segmentation faults, error signals or other undefined behaviors.


***see:*** 
	[http://pocoproject.org/slides/090-NotificationsEvents.pdf](http://pocoproject.org/slides/090-NotificationsEvents.pdf) 

[http://pocoproject.org/docs/Poco.Condition.html](http://pocoproject.org/docs/Poco.Condition.html) 

[http://pocoproject.org/docs/Poco.Event.html](http://pocoproject.org/docs/Poco.Event.html) 

[http://pocoproject.org/docs/Poco.Semaphore.html](http://pocoproject.org/docs/Poco.Semaphore.html) 










_description: _







<!----------------------------------------------------------------------------->

###void yield()

<!--
_syntax: yield()_
_name: yield_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Tell the thread to give up its CPU time other threads. 


This method is similar to sleep() and can often be used in the same way. The main difference is that 1 millisecond (the minimum sleep time available with sleep()) is a very long time on modern processors and yield() simply gives up processing time to the next thread, instead of waiting for number of milliseconds. In some cases, this behavior will be preferred. 







_description: _








<!----------------------------------------------------------------------------->

### ~ofThread()

<!--
_syntax: ~ofThread()_
_name: ~ofThread_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _

Destroy the ofThread. 


***warning:*** 
	The destructor WILL NOT stop the thread or wait for the underlying Poco::Thread to finish. For threads that require the correct deallocation of resources, the user MUST call waitForThread(...); to ensure that the thread is stopped and the thread's resources are released. Improper release of resources or memory can lead to segementation faults and other errors. 










_description: _








<!----------------------------------------------------------------------------->

##Variables



###Poco::AtomicCounter  _mutexBlocks

<!--
_name: _mutexBlocks_
_type: Poco::AtomicCounter _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###Poco::AtomicCounter  _threadRunning

<!--
_name: _threadRunning_
_type: Poco::AtomicCounter _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofMutex mutex

<!--
_name: mutex_
_type: ofMutex_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


This is the internal [mutex](http://en.wikipedia.org/wiki/Mutex) called through lock() & unlock(). You can use it manually inside your derived class.







<!----------------------------------------------------------------------------->

###Poco thread

<!--
_name: thread_
_type: Poco_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

