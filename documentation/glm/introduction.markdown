## OpenGL Mathematics

OpenGL Mathematics [GLM](https://glm.g-truc.net/0.9.8/index.html) has become the defacto standard for graphics vector math in C++ in the latest years. It's syntax mimics that of glsl so working with it while working with OpenGL, shaders... makes things easier cause the syntax is almost the same across the different languages.

openFrameworks, since version 0.10 uses GLM as it's default vector math library in the core and although old projects using ofVec* classes should work with minimal changes, if you are starting a new project we recomend to use GLM instead.

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
vec3 v(2.f, 2.f, 2.f);
float l = length(v);
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
glm::vec3 v2(2.f, 2.f, 2.f);
glm::vec3 v3 = v1 + v2;
```

### Warning

GLM vector have a static `length` function which returns the dimension of the vector type, so `glm::vec2::length()` returns 2, `glm::vec3::length()` returns 3...

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

Mostly when porting old code form ofVec to glm, because ofVec included such a method, it's easy to try and call that function which will compile without errors but won't do what you expect.

When doing that, most modern compilers should show a warning because of calling a static method on an instance instead of a class, so be on the look for those when porting old code to GLM.


### Type strictness

glm has a strict type system, similar to how things work in glsl, meaning that you can't autoconvert from one type to another automatically as it was the case with ofVectorMath.

For example:

```
glm::vec2 v2(2.f, 2.f);
glm::vec3 v3 = v2;
```

Won't work anymore, you need to do now:

```
glm::vec3 v3 = glm::vec3(v2, 0.f);
```

Or in the opposite case:

```
glm::vec3 v3(2.f, 2.f, 2.f);
glm::vec2 v2 = glm::vec2(v3)
```

or even:

```
glm::vec2 v2(v3)
```

### Constants

GLM has some useful constants but the way to use them might be a little bit weird at first. The main problem comes from the fact that this constants are defined as templated functions so to call them you need to specify the type as in:

```
float p = glm::pi<float>();
double dp = glm::pi<double>();
```

### Multiplication order

Finally, if you are used to the old openFrameworks vector math classes you would multiply vector and matrices like:

```
ofVec3 v;
ofVec3f projected = v * model * view * projection;
```

with glm as in glsl the multiplication order is the opposite so now you would do:

```
glm::vec3 v;
glm::vec3 projected = projection * view * model * v;
```
