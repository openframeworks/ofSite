---
.. title: The new GLM syntax 
.. summary: How to use glm vectors instead the legacy ones
.. type: howto
---

*Note!*: This page is useful only if you are working with the current master branch. You can skip this information if you are working with the version 0.9.3 that you have downloaded from this website.

The next version of openFrameworks will replace the internal math library with [GLM](http://glm.g-truc.net). GLM is a solid C++ library used for all the math operations needed when doing vectors and matrices operations. The use of this library implies some change in the syntax used to declare vectors and to execute vector's operation. The legacy mode is still supported, but the new mode, enabled by default, uses the new glm syntax.

If you are not interested using this library and you want to continue using the syntax you were used to, you can easily disable it using the OF_USE_LEGACY_MESH constant in ofConstants.h

Instead, if you want to use GLM and prepare yourself for what will be the future syntax adopted by openFrameworks, these are the things that are changed:

### Declaring the vectors

When declaring vectors in the header file, you have to change

```c++
ofVec3f myVector;
ofVec2f my2dVector;
```

To:

```c++
glm::vec3 myVector
glm::vec2 my2dVector;
```


When the vectors come, for example, from a mesh, you don't have to worry about the type declaration, since c++ 11 you have the wonderful `auto` keywords, that tells to the compiler to figure out the type for you. For example, if you have code like:

```c++
vector<ofVec3f> normals = mesh.getNormals();
```

And you want to migrate it to the new mode, just use auto

```c++
auto normals = mesh.getNormals();
```

### Methods names

Most methods have the exact same name but without camel case and others are slightly different:

```c++
v.length()
```

becomes

```c++
glm::length(v)
```

And 

```c++
v.squaredLength()
``` 

becomes 

```c++
glm::length2(v)
```

### Containers

When using the pure glm mode (enabled by default right now) you'll usually need to change any container of ofVec to a container of glm::vec. 

```c++
vector<ofVec3f> myContainer
``` 

becomes 

```c++
vector<glm::vec3> myContainer
```

As said before, if it's in a function using `auto` is the best solution since the compiler can automatically detect the type, and it will work for both modes, the glm one and the legacy one.

### Transitional typedefs

There's also some typedefs that can be used to make containers compatible with both the legacy and glm mode:

```c++
std::vector<ofDefaultVec3>
```

will be `std::vector<ofVec3f>` in legacy mode or `std::vector<glm::vec3>` in glm mode

### Caveats when using ofNode

All the old ofVec (and matrices) classes autoconvert and can be created from glm so although everything in the core now returns or accepts as parameters glm you can still use ofVec even in pure glm mode:

```c++
ofVec3f pos = camera.getGlobalPosition();
```

will still work, although getGlobalPosition is now returning `glm::vec3`. but:

```c++
camera.getGlobalPosition().distance(node.getGlobalPosition());
```

won't work anymore you have to change it to:

```c++
glm::distance(camera.getGlobalPosition(), node.getGlobalPosition());
```

or

```c++
ofVec3f cameraPos = camera.getGlobalPosition();
cameraPos.distance(node.getGlobalPosition());
```
