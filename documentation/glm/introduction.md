## OpenGL Mathematics

OpenGL Mathematics [GLM](https://glm.g-truc.net/0.9.8/index.html) has become the defacto standard for graphics vector math in C++ in the latest years. It's syntax mimics that of glsl so working with it while working with OpenGL, shaders... makes things easier cause the syntax is almost the same across the different languages.

openFrmaeworks, since version 0.10 uses GLM as it's default vector math library in the core and although old projects using ofVec* classes should work with minimal changes, if you are starting a new project we recomend to use GLM instead.

### Namespace

GLM classes and functions are in the `glm` namespace so to use them you need to either prefix them with `glm::`:

```
glm::vec3 v(2.f, 2.f, 2.f);
float l = glm::length(v);
```

Or in your `.cpp` files import the `glm` namespace at the very beginning:

```
using namespace glm;
```

And then use the classes and functions without prefix:

```
glm::vec3 v(2.f, 2.f, 2.f);
float l = glm::length(v);
```

### Functions not methods

GLM classes like vectors, matrices or quaternions don't have methods. Instead glm uses functions to operate on those classes so if you want to for example normalize a vector you would do:

```
glm::vec3 v(2.f, 2.f, 2.f);
glm::vec3 n = glm::normalize(v);
```

The only exceptions to this rule are operators which you don't use directly but instead allow to do arithmetic operations so you can do things like:

```
glm::vec3 v1(1.f, 1.f, 1.f);
glm::vec3 v1(2.f, 2.f, 2.f);
glm::vec3 v3 = v1 + v2;
```

And swizzles which work pretty much the same as in glsl except they are read only in glm and they are a method instead of a variable:

```
glm::vec3 v(2.f, 2.f, 2.f);
glm::vec2 d = v.xy();
```

### Warning

GLM vector have a static `length` function which returns the dimension of the vector type, so `glm::vec2::length()` returns 2, `glm::vec3::length()`returns 3...

Because C++ allows to call static methods on instances of that class you can make the **error** of calling:

```
glm::vec3 v(2.f, 2.f, 2.f);
float length = v.length();
```

To try and get the length of the vector instead of the number of dimensions of the type. The correct way of doing that would be:

```
glm::vec3 v(2.f, 2.f, 2.f);
float length = glm::length(v);
```

Mostly when porting old code form ofVec to glm, because ofVec included such a method it's easy to try and call that function which will compile without errors but won't do what you expect.

When doing that most modern compilers should show a warning because of calling a static method on an instance instead of a class. Be on the look for those when porting old code to GLM.



