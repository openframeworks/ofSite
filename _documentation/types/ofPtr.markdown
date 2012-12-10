#class ofPtr


##Description


ofPtr is a shared pointer implementation that allows you to dynamically allocate objects, much like a pointer, without needing to worry about when and who will free that pointers memory because the shared pointer implementation is able to sort out when a resource is no longer being used free that resource as soon as nobody is interested in it anymore. This means it's much less likely that you'll end up with dangling pointers and memory leaks in your application. Last one to leave turns out the lights. This is like garbage collection but actually better and more powerful because resources are freed immediately and not at some undetermined future time when the VM decides to do a sweep.

To create an ofPtr instance, do the following:

~~~~{.cpp}
ofPtr<Foo> ptr(new Foo());
~~~~

So it looks like you're creating a pointer to a Foo, which you are, but then the ofPtr is going to take care of it from then on out. This means that you can return it from a function, pass it to another class, generally be reckless with it, and not have to worry about when it'll be deleted.

You access the methods and properties of an ofPtr just the same as a regular pointer:

~~~~{.cpp}
fooPtr->bar();
fooPtr->fizz = PI;
~~~~

You'll see this in the OF core code in places like ofVideoPlayer:

~~~~{.cpp}
setPlayer(ofPtr<ofBaseVideoPlayer> newPlayer);
~~~~

When you should use ofPtr: 

*	When you have a resource that you need to dynamic allocate and delete and share among multiple objects and processes. 
*	When your code is not heavily multi-threaded. 
*	When you don't need blazing speed for pointer access because a shared pointer is *not* a pointer, it's more complex and slower.
*	When you don't to have multiple processes handle deleting a resource.

For more info on shared pointers this is an excellent reference:  http://ootips.org/yonat/4dev/smart-pointers.html

or you can look at the Poco implementation of shared pointers: http://pocoproject.org/slides/030-MemoryManagement.pdf (linking into their documenation isn't possible, frame fail)





##Methods



### ofPtr()

<!--
_syntax: ofPtr()_
_name: ofPtr_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofPtr(*__p)

<!--
_syntax: ofPtr(*__p)_
_name: ofPtr_
_returns: _
_returns_description: _
_parameters: Tp1 *__p_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofPtr(*__p, __d)

<!--
_syntax: ofPtr(*__p, __d)_
_name: ofPtr_
_returns: _
_returns_description: _
_parameters: Tp1 *__p, _Deleter __d_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofPtr(*__p, __d, &__a)

<!--
_syntax: ofPtr(*__p, __d, &__a)_
_name: ofPtr_
_returns: _
_returns_description: _
_parameters: Tp1 *__p, _Deleter __d, const _Alloc &__a_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofPtr(&__r, *__p)

<!--
_syntax: ofPtr(&__r, *__p)_
_name: ofPtr_
_returns: _
_returns_description: _
_parameters: const ofPtr< Tp1 > &__r, T *__p_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofPtr(&__r)

<!--
_syntax: ofPtr(&__r)_
_name: ofPtr_
_returns: _
_returns_description: _
_parameters: const ofPtr< Tp1 > &__r_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofPtr(&__r)

<!--
_syntax: ofPtr(&__r)_
_name: ofPtr_
_returns: _
_returns_description: _
_parameters: const std::tr1::weak_ptr< Tp1 > &__r_
_access: public_
_version_started: 0071_
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



