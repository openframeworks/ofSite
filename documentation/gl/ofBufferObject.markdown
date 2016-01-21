#class ofBufferObject


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description





##Methods



###void allocate()

<!--
_syntax: allocate()_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

creates a buffer without allocating any memory yet
glGenBuffers, allocates a GL buffer





_description: _







<!----------------------------------------------------------------------------->

###void allocate(bytes, usage)

<!--
_syntax: allocate(bytes, usage)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: GLsizeiptr bytes, GLenum usage_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

creates a buffer and allocates the required number of bytes
glGenBuffers + glNamedBufferData: https://www.opengl.org/sdk/docs/man4/html/glBufferData.xhtml
before GL 4.5 emulates glNamedBufferData by binding to last known target
for this buffer uploading data to that target and unbinding again





_description: _







<!----------------------------------------------------------------------------->

###void allocate(bytes, *data, usage)

<!--
_syntax: allocate(bytes, *data, usage)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: GLsizeiptr bytes, const void *data, GLenum usage_
_access: public_
_version_started: 0.9.0_
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

###void allocate(&data, usage)

<!--
_syntax: allocate(&data, usage)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const vector< T > &data, GLenum usage_
_access: public_
_version_started: 0.9.0_
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

###void allocate(&data, usage)

<!--
_syntax: allocate(&data, usage)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const ofPixels_< T > &data, GLenum usage_
_access: public_
_version_started: 0.9.0_
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

###void bind(target)

<!--
_syntax: bind(target)_
_name: bind_
_returns: void_
_returns_description: _
_parameters: GLenum target_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

glBindBuffer: https://www.opengl.org/sdk/docs/man4/html/glBindBuffer.xhtml





_description: _







<!----------------------------------------------------------------------------->

###void bindBase(target, index)

<!--
_syntax: bindBase(target, index)_
_name: bindBase_
_returns: void_
_returns_description: _
_parameters: GLenum target, GLuint index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

glBindBufferBase: https://www.opengl.org/sdk/docs/man4/html/glBindBufferBase.xhtml





_description: _







<!----------------------------------------------------------------------------->

###void bindRange(target, index, offset, size)

<!--
_syntax: bindRange(target, index, offset, size)_
_name: bindRange_
_returns: void_
_returns_description: _
_parameters: GLenum target, GLuint index, GLintptr offset, GLsizeiptr size_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

glBindBufferRange: https://www.opengl.org/sdk/docs/man4/html/glBindBufferRange.xhtml





_description: _







<!----------------------------------------------------------------------------->

###void copyTo(&dstBuffer)

<!--
_syntax: copyTo(&dstBuffer)_
_name: copyTo_
_returns: void_
_returns_description: _
_parameters: ofBufferObject &dstBuffer_
_access: public_
_version_started: 0.9.0_
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

###GLuint getId()

<!--
_syntax: getId()_
_name: getId_
_returns: GLuint_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

returns the id of the buffer if it's allocated or 0 otherwise





_description: _







<!----------------------------------------------------------------------------->

###bool isAllocated()

<!--
_syntax: isAllocated()_
_name: isAllocated_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

true if allocate was called before





_description: _







<!----------------------------------------------------------------------------->

###void * map(access)

<!--
_syntax: map(access)_
_name: map_
_returns: void *_
_returns_description: _
_parameters: GLenum access_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

glMapNamedBuffer: https://www.opengl.org/sdk/docs/man4/html/glMapBuffer.xhtml
before GL 4.5 emulates glMapNamedBuffer by binding to last known target
for this buffer and mapping that target





_description: _







<!----------------------------------------------------------------------------->

###T * map(access)

<!--
_syntax: map(access)_
_name: map_
_returns: T *_
_returns_description: _
_parameters: GLenum access_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

typed version of map, returns an array of T when used like:
buffer.map<Type>(access)





_description: _







<!----------------------------------------------------------------------------->

###void * mapRange(offset, length, access)

<!--
_syntax: mapRange(offset, length, access)_
_name: mapRange_
_returns: void *_
_returns_description: _
_parameters: GLintptr offset, GLsizeiptr length, GLenum access_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

glMapNamedBufferRange: https://www.opengl.org/sdk/docs/man4/html/glMapBufferRange.xhtml
before GL 4.5 emulates glMapNamedBufferRange by binding to last known target
for this buffer and mapping that target





_description: _







<!----------------------------------------------------------------------------->

###T * mapRange(offset, length, access)

<!--
_syntax: mapRange(offset, length, access)_
_name: mapRange_
_returns: T *_
_returns_description: _
_parameters: GLintptr offset, GLsizeiptr length, GLenum access_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

typed version of mapRange, returns an array of T when used like:
buffer.mapRange<Type>(access)





_description: _







<!----------------------------------------------------------------------------->

### ofBufferObject()

<!--
_syntax: ofBufferObject()_
_name: ofBufferObject_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###void setData(bytes, *data, usage)

<!--
_syntax: setData(bytes, *data, usage)_
_name: setData_
_returns: void_
_returns_description: _
_parameters: GLsizeiptr bytes, const void *data, GLenum usage_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

glNamedBufferData: https://www.opengl.org/sdk/docs/man4/html/glBufferData.xhtml
before GL 4.5 emulates glNamedBufferData by binding to last known target
for this buffer uploading data to that target and unbinding again





_description: _







<!----------------------------------------------------------------------------->

###void setData(&data, usage)

<!--
_syntax: setData(&data, usage)_
_name: setData_
_returns: void_
_returns_description: _
_parameters: const vector< T > &data, GLenum usage_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

typed version of setData, same functionality but guesses the size from the size
of the passed vector and size of the type





_description: _







<!----------------------------------------------------------------------------->

###void setData(&data, usage)

<!--
_syntax: setData(&data, usage)_
_name: setData_
_returns: void_
_returns_description: _
_parameters: const ofPixels_< T > &data, GLenum usage_
_access: public_
_version_started: 0.9.0_
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

###GLsizeiptr size()

<!--
_syntax: size()_
_name: size_
_returns: GLsizeiptr_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###void unbind(target)

<!--
_syntax: unbind(target)_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: GLenum target_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

binds the passed target to buffer 0





_description: _







<!----------------------------------------------------------------------------->

###void unbindBase(target, index)

<!--
_syntax: unbindBase(target, index)_
_name: unbindBase_
_returns: void_
_returns_description: _
_parameters: GLenum target, GLuint index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

binds the given target and index to buffer 0





_description: _







<!----------------------------------------------------------------------------->

###void unbindRange(target, index)

<!--
_syntax: unbindRange(target, index)_
_name: unbindRange_
_returns: void_
_returns_description: _
_parameters: GLenum target, GLuint index_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

binds the given target and index to 0





_description: _







<!----------------------------------------------------------------------------->

###void unmap()

<!--
_syntax: unmap()_
_name: unmap_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

glUnmapNamedBuffer: https://www.opengl.org/sdk/docs/man4/html/glUnmapBuffer.xhtml
before GL 4.5 emulates glUnmapNamedBuffer by unmapping and unbinding
the last known target for this buffer





_description: _







<!----------------------------------------------------------------------------->

###void unmapRange()

<!--
_syntax: unmapRange()_
_name: unmapRange_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

same as unmap, just to make the api more clear





_description: _







<!----------------------------------------------------------------------------->

###void updateData(offset, bytes, *data)

<!--
_syntax: updateData(offset, bytes, *data)_
_name: updateData_
_returns: void_
_returns_description: _
_parameters: GLintptr offset, GLsizeiptr bytes, const void *data_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

glNamedBufferSubData: https://www.opengl.org/sdk/docs/man4/html/glBufferSubData.xhtml
before GL 4.5 emulates glNamedBufferSubData by binding to last known target
for this buffer uploading data to that target and unbinding again





_description: _







<!----------------------------------------------------------------------------->

###void updateData(bytes, *data)

<!--
_syntax: updateData(bytes, *data)_
_name: updateData_
_returns: void_
_returns_description: _
_parameters: GLsizeiptr bytes, const void *data_
_access: public_
_version_started: 0.9.0_
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

###void updateData(offset, &data)

<!--
_syntax: updateData(offset, &data)_
_name: updateData_
_returns: void_
_returns_description: _
_parameters: GLintptr offset, const vector< T > &data_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

typed version of updateData, same functionality but guesses the size from the size
of the passed vector and size of the type





_description: _







<!----------------------------------------------------------------------------->

###void updateData(&data)

<!--
_syntax: updateData(&data)_
_name: updateData_
_returns: void_
_returns_description: _
_parameters: const vector< T > &data_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

typed version of updateData, same functionality but guesses the size from the size
of the passed vector and size of the type





_description: _







<!----------------------------------------------------------------------------->

##Variables



###shared_ptr< ofBufferObject::Data > data

<!--
_name: data_
_type: shared_ptr< ofBufferObject::Data >_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

