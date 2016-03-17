---
.. title: Introdution Math api
.. type: documentation
.. translator: jongun won
.. translator_site: http://scripter.co.kr
---
## Vector math classes, geometry utils and other mathematical functions
## 벡터 (수학) 클래스, 기하학 유틸 및 기타 수학관련 함수들

This module contains classes and functions that provide mathematical utilities helpful to work with graphics and other media. 
이 모듈은 그래픽과 미디어작업에 도움을 주는 수학과 관련된 유틸리티 클래스와 함수들을 포함 하고 있습니다. 

The classes in this module allow to work with vector math, [ofVec2f](ofVec2f.html), [ofVec3f](ofVec3f.html) and [ofVec4f](ofVec4f.html) for example represent vectors in 2, 3 and 4 dimensions. 


[ofMatrix4x4](ofMatrix4x4.html) allows to represent scaling, rotations, translations and perspective transformations in an way that allows to transform any point in 3D space just by multiplying it by the matrix, [ofMatrix4x4](ofMatrix4x4.html) can be easily uploaded to the graphics card through shaders or the ofLoadMatrix functions in [ofGraphics](../graphics/ofGraphics.html).

[ofMath](ofMath.html) contains functions for various mathematical operations like generating a random number with ofRandom, or calculating the intersection of two line segments with ofLineSegmentIntersection.
