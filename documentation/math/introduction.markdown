## Vector math classes, geometry utils and other mathematical functions

This module contains classes and functions that provide mathematical utilities helpful to work with graphics and other media. 

The classes in this module allow to work with vector math, [ofVec2f](ofVec2f/), [ofVec3f](ofVec3f/) and [ofVec4f](ofVec4f/) for example represent vectors in 2, 3 and 4 dimensions. [ofMatrix4x4](ofMatrix4x4/) allows to represent scaling, rotations, translations and perspective transformations in an way that allows to transform any point in 3D space just by multiplying it by the matrix, [ofMatrix4x4](ofMatrix4x4/) can be easily uploaded to the graphics card through shaders or the ofLoadMatrix functions in [ofGraphics](../graphics/ofGraphics/).

[ofMath](ofMath/) contains functions for various mathematical operations like generating a random number with ofRandom, or calculating the intersection of two line segments with ofLineSegmentIntersection.
