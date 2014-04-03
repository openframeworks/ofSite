#class ofURLFileLoader


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

This class provides several convenient methods for making HTTP requests.

~~~~{.cpp}
ofHttpResponse resp = ofLoadURL("http://www.google.com/robots.txt");
cout << resp.data << endl;
~~~~





##Methods



###void clear()

<!--
_syntax: clear()_
_name: clear_
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








_description: _








<!----------------------------------------------------------------------------->

###ofHttpResponse get(url)

<!--
_syntax: get(url)_
_name: get_
_returns: ofHttpResponse_
_returns_description: _
_parameters: string url_
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








_description: _








<!----------------------------------------------------------------------------->

###int getAsync(url, name = "")

<!--
_syntax: getAsync(url, name = "")_
_name: getAsync_
_returns: int_
_returns_description: _
_parameters: string url, string name=""_
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








_description: _








<!----------------------------------------------------------------------------->

###ofHttpResponse handleRequest(request)

<!--
_syntax: handleRequest(request)_
_name: handleRequest_
_returns: ofHttpResponse_
_returns_description: _
_parameters: ofHttpRequest request_
_access: private_
_version_started: 007_
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

### ofURLFileLoader()

<!--
_syntax: ofURLFileLoader()_
_name: ofURLFileLoader_
_returns: _
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








_description: _








<!----------------------------------------------------------------------------->

###void remove(id)

<!--
_syntax: remove(id)_
_name: remove_
_returns: void_
_returns_description: _
_parameters: int id_
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








_description: _








<!----------------------------------------------------------------------------->

###int saveAsync(url, path)

<!--
_syntax: saveAsync(url, path)_
_name: saveAsync_
_returns: int_
_returns_description: _
_parameters: string url, string path_
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








_description: _








<!----------------------------------------------------------------------------->

###ofHttpResponse saveTo(url, path)

<!--
_syntax: saveTo(url, path)_
_name: saveTo_
_returns: ofHttpResponse_
_returns_description: _
_parameters: string url, string path_
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








_description: _








<!----------------------------------------------------------------------------->

###void start()

<!--
_syntax: start()_
_name: start_
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








_description: _








<!----------------------------------------------------------------------------->

###void stop()

<!--
_syntax: stop()_
_name: stop_
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








<!----------------------------------------------------------------------------->

###void update(&args)

<!--
_syntax: update(&args)_
_name: update_
_returns: void_
_returns_description: _
_parameters: ofEventArgs &args_
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








_description: _








<!----------------------------------------------------------------------------->

##Variables



###Poco condition

<!--
_name: condition_
_type: Poco_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofHttpRequest requests

<!--
_name: requests_
_type: ofHttpRequest_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofHttpResponse responses

<!--
_name: responses_
_type: ofHttpResponse_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

