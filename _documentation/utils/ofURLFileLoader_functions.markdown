#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###ofHttpResponse ofLoadURL(url)

<!--
_syntax: ofLoadURL(url)_
_name: ofLoadURL_
_returns: ofHttpResponse_
_returns_description: _
_parameters: string url_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Loads content from the specified URL. It makes a synchronous HTTP request and returns the response as an instance of the `ofHttpResponse` class.

For example, this will retrieve the contents of a text file and print the output to the console.

~~~~{.cpp}
ofHttpResponse resp = ofLoadURL("http://www.google.com/robots.txt");
cout << resp.data << endl;
~~~~







<!----------------------------------------------------------------------------->

###int ofLoadURLAsync(url, name = "")

<!--
_syntax: ofLoadURLAsync(url, name = "")_
_name: ofLoadURLAsync_
_returns: int_
_returns_description: _
_parameters: string url, string name=""_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Loads content asynchronously from the specified URL and
returns the ID of the process. You need to listen for URL notifications
in `testApp::urlResponse(ofHttpResponse&)`

Step 1. Declare urlResponse in the header of the class which should receive
notifications:

~~~~{.cpp}
class testApp : public ofBaseApp {
    public:
        void urlResponse(ofHttpResponse & response);
}
~~~~

Step 2. Define urlResponse in the class which should receive notifications:

~~~~{.cpp}
void testApp::urlResponse(ofHttpResponse & response) {
    if (response.status==200 && response.request.name == "async_req") {
        img.loadImage(response.data);
        loading = false;
    } else {
      cout << response.status << " " << response.error << endl;
      if (response.status != -1) loading = false;
    }
}
~~~~

Step 3. Enable URL notifications

~~~~{.cpp}
void testApp::setup() {
  ofRegisterURLNotification(this);
}
~~~~

Step 4. Submit the asynchronous request
~~~~{.cpp}
int id = ofLoadURLAsync("http://www.openframeworks.cc/images/ofw-logo.png",
                        "async_req");
~~~~

Examples based on [http://www.slideshare.net/roxlu/openframworks-007-utils](http://www.slideshare.net/roxlu/openframworks-007-utils)







<!----------------------------------------------------------------------------->

###void ofRegisterURLNotification(*obj)

<!--
_syntax: ofRegisterURLNotification(*obj)_
_name: ofRegisterURLNotification_
_returns: void_
_returns_description: _
_parameters: T *obj_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Registers a listener to receive notifications from `ofLoadURLAsync()` .

~~~~{.cpp}
void testApp::setup() {
  ofRegisterURLNotification(this);
}
~~~~







<!----------------------------------------------------------------------------->

###void ofRemoveAllURLRequests()

<!--
_syntax: ofRemoveAllURLRequests()_
_name: ofRemoveAllURLRequests_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Removes all asynchronously loaded URL requests initiated by
`ofLoadURLAsync()` .







<!----------------------------------------------------------------------------->

###void ofRemoveURLRequest(id)

<!--
_syntax: ofRemoveURLRequest(id)_
_name: ofRemoveURLRequest_
_returns: void_
_returns_description: _
_parameters: int id_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Removes a single request initiated by `ofLoadURLAsync()` . The request is
specified by its ID.







<!----------------------------------------------------------------------------->

###int ofSaveURLAsync(url, path)

<!--
_syntax: ofSaveURLAsync(url, path)_
_name: ofSaveURLAsync_
_returns: int_
_returns_description: _
_parameters: string url, string path_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Asynchronously saves a file from a URL. The returned int is the id of
the request. This allows you to remove the request if it keeps failing, and also
to identify when it has finished.







<!----------------------------------------------------------------------------->

###ofHttpResponse ofSaveURLTo(url, path)

<!--
_syntax: ofSaveURLTo(url, path)_
_name: ofSaveURLTo_
_returns: ofHttpResponse_
_returns_description: _
_parameters: string url, string path_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Retrieves a file from a remote URL and saves it locally. This is a synchronous method.

See also: `ofSaveURLAsync()`







<!----------------------------------------------------------------------------->

###void ofStopURLLoader()

<!--
_syntax: ofStopURLLoader()_
_name: ofStopURLLoader_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
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

###ofEvent ofURLResponseEvent()

<!--
_syntax: ofURLResponseEvent()_
_name: ofURLResponseEvent_
_returns: ofEvent_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Used internally for registering and unregistering URL notifications, and
also by `ofThreadedImageLoader` and `ofURLFileLoader`.







<!----------------------------------------------------------------------------->

###void ofUnregisterURLNotification(*obj)

<!--
_syntax: ofUnregisterURLNotification(*obj)_
_name: ofUnregisterURLNotification_
_returns: void_
_returns_description: _
_parameters: T *obj_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Unregisters a notification for an `ofLoadURLAsync()` operation.







<!----------------------------------------------------------------------------->

