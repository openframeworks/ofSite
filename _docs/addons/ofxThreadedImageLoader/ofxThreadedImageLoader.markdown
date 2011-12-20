#class ofxThreadedImageLoader


##Description












##Methods



### ofxThreadedImageLoader()

<!--
_syntax: ofxThreadedImageLoader()_
_name: ofxThreadedImageLoader_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void loadFromDisk(*image, file)

<!--
_syntax: loadFromDisk(*image, file)_
_name: loadFromDisk_
_returns: void_
_returns_description: _
_parameters: ofImage *image, string file_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void loadFromURL(*image, url)

<!--
_syntax: loadFromURL(*image, url)_
_name: loadFromURL_
_returns: void_
_returns_description: _
_parameters: ofImage *image, string url_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void start()

<!--
_syntax: start()_
_name: start_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void update(&a)

<!--
_syntax: update(&a)_
_name: update_
_returns: void_
_returns_description: _
_parameters: ofEventArgs &a_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void threadedFunction()

<!--
_syntax: threadedFunction()_
_name: threadedFunction_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void urlResponse(&response)

<!--
_syntax: urlResponse(&response)_
_name: urlResponse_
_returns: void_
_returns_description: _
_parameters: ofHttpResponse &response_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###entry_iterator getEntryFromAsyncQueue(name)

<!--
_syntax: getEntryFromAsyncQueue(name)_
_name: getEntryFromAsyncQueue_
_returns: entry_iterator_
_returns_description: _
_parameters: string name_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool shouldLoadImages()

<!--
_syntax: shouldLoadImages()_
_name: shouldLoadImages_
_returns: bool_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###ofImageLoaderEntry getNextImageToLoad()

<!--
_syntax: getNextImageToLoad()_
_name: getNextImageToLoad_
_returns: ofImageLoaderEntry_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###ofImageLoaderEntry getNextImageToUpdate()

<!--
_syntax: getNextImageToUpdate()_
_name: getNextImageToUpdate_
_returns: ofImageLoaderEntry_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

##Variables



###ofImageLoaderEntry images_async_loading

<!--
_name: images_async_loading_
_type: ofImageLoaderEntry_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###ofImageLoaderEntry images_to_load

<!--
_name: images_to_load_
_type: ofImageLoaderEntry_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###ofImageLoaderEntry images_to_update

<!--
_name: images_to_update_
_type: ofImageLoaderEntry_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###int num_loading

<!--
_name: num_loading_
_type: int_
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

