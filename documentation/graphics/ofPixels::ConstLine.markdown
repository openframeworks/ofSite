#class ofPixels::ConstLine


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: std::iterator<std::forward_iterator_tag, Line>_
-->

##InlineDescription






##Description





##Methods



### ConstLine(*_begin, stride, componentsPerPixel, lineNum, pixelFormat)

<!--
_syntax: ConstLine(*_begin, stride, componentsPerPixel, lineNum, pixelFormat)_
_name: ConstLine_
_returns: _
_returns_description: _
_parameters: const PixelType *_begin, int stride, int componentsPerPixel, int lineNum, ofPixelFormat pixelFormat_
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

###const PixelType * begin()

<!--
_syntax: begin()_
_name: begin_
_returns: const PixelType *_
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

###const PixelType * end()

<!--
_syntax: end()_
_name: end_
_returns: const PixelType *_
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

###int getLineNum()

<!--
_syntax: getLineNum()_
_name: getLineNum_
_returns: int_
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

###ofPixels_::ConstPixel getPixel(pixel)

<!--
_syntax: getPixel(pixel)_
_name: getPixel_
_returns: ofPixels_::ConstPixel_
_returns_description: _
_parameters: int pixel_
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

###ofPixels_::ConstPixels getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: ofPixels_::ConstPixels_
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

###ofPixels_::ConstPixels getPixels(first, numPixels)

<!--
_syntax: getPixels(first, numPixels)_
_name: getPixels_
_returns: ofPixels_::ConstPixels_
_returns_description: _
_parameters: int first, int numPixels_
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

###int getStride()

<!--
_syntax: getStride()_
_name: getStride_
_returns: int_
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

###bool operator!=(&rhs)

<!--
_syntax: operator!=(&rhs)_
_name: operator!=_
_returns: bool_
_returns_description: _
_parameters: const ofPixels_::ConstLine &rhs_
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

###const ofPixels_::ConstLine & operator*()

<!--
_syntax: operator*()_
_name: operator*_
_returns: const ofPixels_::ConstLine &_
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

###ofPixels_::ConstLine operator+(int)

<!--
_syntax: operator+(int)_
_name: operator+_
_returns: ofPixels_::ConstLine_
_returns_description: _
_parameters: int _
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

###ofPixels_::ConstLine & operator++()

<!--
_syntax: operator++()_
_name: operator++_
_returns: ofPixels_::ConstLine &_
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

###ofPixels_::ConstLine operator++(int)

<!--
_syntax: operator++(int)_
_name: operator++_
_returns: ofPixels_::ConstLine_
_returns_description: _
_parameters: int _
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

###ofPixels_::ConstLine operator+=(int)

<!--
_syntax: operator+=(int)_
_name: operator+=_
_returns: ofPixels_::ConstLine_
_returns_description: _
_parameters: int _
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

###const ofPixels_::ConstLine * operator->()

<!--
_syntax: operator->()_
_name: operator->_
_returns: const ofPixels_::ConstLine *_
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

###bool operator<(&rhs)

<!--
_syntax: operator<(&rhs)_
_name: operator<_
_returns: bool_
_returns_description: _
_parameters: const ofPixels_::ConstLine &rhs_
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

##Variables



###const PixelType * _begin

<!--
_name: _begin_
_type: const PixelType *_
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

###const PixelType * _end

<!--
_name: _end_
_type: const PixelType *_
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

###int componentsPerPixel

<!--
_name: componentsPerPixel_
_type: int_
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

###int lineNum

<!--
_name: lineNum_
_type: int_
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

###ofPixelFormat pixelFormat

<!--
_name: pixelFormat_
_type: ofPixelFormat_
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

###int stride

<!--
_name: stride_
_type: int_
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

