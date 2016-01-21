## Create windows, start the OF application and check info about it's state

The main classes in this module are windows for each platform and settings classes that can be passed to openFrameworks when creating the window. In most projects you don't even need to use them explicitly as openFrameworks will use them under the hood, select the correct one in each case and start and end the infinite loop.

All this usually happens in the main.cpp of your application, you can check any example to see how that works.

In some cases you'll want to specify the settings of the window being created, for example if you want to use a specific version of openGL you'll have a main.cpp like:

```cpp
#include "ofMain.h"
#include "ofApp.h"

//========================================================================
int main( ){
	ofGLWindowSettings settings;
	settings.setGLVersion(3,2);
	ofCreateWindow(settings);

	// this kicks off the running of my app
	// can be OF_WINDOW or OF_FULLSCREEN
	// pass in width and height too:
	ofRunApp(new ofApp());

}
```

which explicitly creates a window that uses openGL 3.2.

Also when creating multiple windows in one application you'll need to use the different window settings classes. 

There's a base settings window that will work on any platform: [ofWindowSettings](ofWindowSettings.html) this allows to specify really basic settings like the size of the window or if we want a fullscreen application.

Then there's an specific GL window settings class for openGL based applications (almost everyone except for windowless apps right now), [ofGLWindowSettings](ofGLWindowSettings.html) for plain openGL and [ofGLESWindowSettings](ofGLESWindowSettings.html) for openGL ES, the flavour of openGL used in mobiles or linux arm boards like the rasperry.

In the desktop since GLFW is the default windowing system, you can use [ofGLFWWindowSettings](ofGLFWWindowSettings.html) which allows to specify settings more specific to a desktop environment like if the window is iconified when the application starts, it's position in the desktop or the monitor in which it should appear.

All these settings classes are used in the same way, you create an instance, set it's fields and pass it to [ofCreateWindow](ofAppRunner.html#ofCreateWindow) which creates a window, you can hold that window on a variable like:

```cpp
auto window = ofCreateWindow(settings);
```

or just ignore it if the application will only have one window. There's some examples on multiwindow applications in the examples/events folder.
