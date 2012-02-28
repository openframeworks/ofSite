---
date: 2012/02/23 10:00:00
title: Vector Maths
summary: Basic concept of vector maths
author: Keith Pasko
---

Moving through space requires knowledge of where things are and where they are going. Vector Maths is the class of mathematics that gives us understanding control over these things in space, allowing for elegant, intuitive, and general descriptions of complex structures and movement. Vectors are at the heart of animation, particle systems, and 3d graphics; in fact, vector maths/linear algebra have made much of modern computer science possible.

Let's jump into some technical details; Shhhhh, hush now, it will all be over soon enough. A vector represents a direction and magnitude in an abstract "space"; for our current purposes, we can just think of this "space" as the common 2d or 3d world. In these worlds, we have standard "basis vectors" and an origin; everything else in the world is created from these fundamentals. For 3d, the standard origin is (0,0,0), and standard bases [1,0,0] , [0,1,0] , [0,0,1] (it is the same for 2d, but without the 3rd component, i.e. [0,0] origin, [1,0] , [0,1] bases). To put a perhaps more familiar name to these, we can call them the x, y, and z directions. The allowed operations on these vectors are addition and scalar multiplication - with these, we can generate any vector in space.

##Vector operations

###scalar multiplication
Let's say we want to go 3.14 units "to the right" ("along x", "along the first basis"). We multiply by component, so the result is [1 * 3.14,0 * 3.14,0 * 3.14] = [3.14,0,0]. Similarly, if we want to go "up" ("along y", "along the second basis") by 1.71, we have [0,1,0] * 1.71 = [1 * 1.71,0 * 1.71,0 * 1.71] = [0,1.71,0]. We can see that multiplying by a scalar, fittingly, scales the vector, keeping the direction the same (or reversing it, if the scalar is negative).

<script src="../../js/vectors.js" type = "text/javascript">
</script>

<script src = "../../js/math_tut/diagrams.js" type = "text/javascript">
</script>

<canvas id = "mult" width = "600" height = "250"> </canvas>

<script type="text/javascript">
drawMult();
</script>

In OF, this can be done with the * operator or with scale/getScaled:

~~~~{.cpp}
ofVec3f v(1,2,3);
return v*3.14; // returns ofVec3f(3.14,6.28,9.42);
return v.getScaled(3.14); // also returns ofVec3f(3.14,6.28,9.42);
v.scale(3.14); // internally scales v to ofVec3f(3.14,6.28,9.42);
//works with vec2f and vec4f as well
ofVec2f v(0,1); return v*2.718; // returns ofVec3f(0,2.718,0);
ofVec4f v(0,1,4,3); return v*2.718; // returns ofVec4f(0,2.718,10.872,8.154);

//note- there is also a * operator which is NOT scalar multiplication-
ofVec3f v1(1,2,3); ofVec3f v2(2,3,4);
return v1*v2; // returns ofVec3f(2,6,12);
// this is component-wise multiplication between two vectors, and is far less common than scalar multiplication
~~~~

The OF reference can be found <a href = "http://www.openframeworks.cc/documentation/math/ofVec3f.html#scale">here</a>

###addition
Now let's say we want to go 3.14 units to the right, and then 1.71 units up; we can add the two vectors we've just created- [3.14,0,0] + [0,1.71,0] = [3.14 + 0,0 + 1.71,0 + 0] = [3.14,1.71,0]. This is called "component-wise addition", as we just add the different components of each vector (i.e. x + x, y + y, z + z). This can be visualized by putting one vector at the tip of the other vector

<canvas id = "add" width = "600" height = "250">
</canvas>
<script type="text/javascript">
drawAdd();
</script>
<br/>

~~~~{.cpp}
ofVec3f v1(3.14,0,0);
ofVec3f v2(0,1.71,0);
return v1+v2; // returns ofVec3f(3.14,1.71,0);
~~~~

The OF reference can be found <a href = "http://www.openframeworks.cc/documentation/math/ofVec3f.html#operator+">here</a>

###application
Who cares? How is this useful? Let's take a simple example - we have two points a and b in space, and we want to move from one to the other. Remember that addition is like putting a vector at the tip of another vector? Well, we know that if we add the direction from a to b (we'll call it c) to a, we'll get b: a + c = b. The vector we're looking for is c = b - a.

<canvas id = "diff" width = "600" height = "250">
</canvas>
<script type="text/javascript">
drawDiff();
</script>
<br/>
Great, now we know the direction from a to b (c = b - a). Again, this means that if we add c to the tip of a, we'll end up at b. If we multiply c by various numbers between 0 and 1, we can progressively move from a to b.

<canvas id = "aim" width = "600" height = "250">
</canvas>
<script type="text/javascript">
drawAim();
</script>

Pip pip, now we can shoot particles from one position to another with ease using our new vector maths. All of these operations and concepts work exactly the same way in 3d; to go from one point to another in 3d, we once again do a + delta*(b - a) - nothing else needed!

##Other helpful operations

###length/normalization
The length of a vector is the square root of the sum of the squares of the components. Huh? In perhaps less obscure terms, length(x,y,...) = sqrt( x*x + y*y + ...); e.g the length of a vector (3,4) = sqrt(3*3 + 4*4) = sqrt(25) = 5. Remember our "aim" example, going from a to b? Well, now we know how far apart in space a and b are - the length of c (b - a), information crucial for simulations, among many other graphics applications. The length of a vector is often denoted by |v| or ||v||; if you see this on the wikipediaz somewhere, now you know what it means.

Normalization is the concept of dividing a vector by its length, turning it into a "unit vector", or vector pointed in the same direction, but with a length of 1; this makes sure that the length of the vector doesn't "contaminate" any operations on it. Imagine if our basis vector from the first example wasn't normalized- say (1,0,0) was (25504.77707,0,0), then 3.14*basis1 = (80085,0,0), which is a bit counterintuitive (its more natural to think that the vector (3.14,0,0) actually goes 3.14 units in the x-direction, not 80085 units). Now when we see v / |v| , we know it is the normalized vector in the v direction; holla.

~~~~{.cpp}
ofVec3f v1(3.14,9.11,1.234);
return v1.length(); //returns sqrt(3.14*3.14 + 9.11*9.11 + 1.234*1.234) = 9.71465
v1.normalize(); return v1.length(); // returns 1.
~~~~

###dot product / projection / reflection
The dot product can be a confusing thing. In keeping with the somewhat anal-retentive nature of this tutorial, let's just start with a definition- the dot product of a and b [ lets call it dot(a,b) ] = |a|*|b|*cos(theta), where theta is the angle between the two vectors, and |a| and |b| are the lengths of a and b, as described in the last section. Great, but why is that useful? Well, first of all, it enables us to find the angle between any two vectors in any dimension (2d, 3d,...10d?); since dot(a,b) = |a|*|b|*cos(theta), theta, the angle between the vectors, is equal to acos(dot(a,b)/|a|*|b|) (a motivation for learning normalizing, as it quite simplifies this calculation...if a and b are unit vectors, this is just acos(dot(a,b)) ).

If you don't care exactly what the angle itself between them is and just care about the cosine (and again assume a and b are normalized) then dot(a,b) = cos(theta), quite tidy. Why would we care about the cosine only? Recall that the cosine is positive when theta is between pi/2 (90 deg) and -pi/2 (-90 deg), so the dot product is the measure of how much the vectors are pointing "in the same direction" to a certain extent. If threshold <= dot(a,b) <= 1., this means that the vectors are pointing in roughly the same direction, within the threshold. If dot(a,b) is negative, they are in different directions (more than 90 deg apart); in the extreme (-1), they are facing exactly opposite. As a concrete example, diffuse lighting uses the dot product to determine illumination of a face, as it is related to how much the face direction (normal) and direction from face to light are aligned.

<canvas id = "dot" width = "600" height = "250">
</canvas>
<script type="text/javascript">
drawDot();
</script>

As you can see from the diagram, we can use the dot product to compute the projection of one vector onto the other; it is just |b|*dot(a,|b|). We can also find the smallest distance from a vector a to a vector b, since it is e in the diagram, the perpendicular projection. We can even compute the reflection of a vector across another, since it is d - e ( = 2*d - a, or 2*|b|*dot(a,|b|) - a). The beauty of this forulation is that this abstracts to multiple dimensions- if you want to find the projection of a vector on a plane, you project onto the first basis, project onto the second basis, and add. All this comes from just the innocent looking dot product.

In OF, our very handy dot product is just the method "dot" -
~~~~{.cpp}
ofVec3f v1(1,2,3);
ofVec3f v2(4,5,6);
return v1.dot(v2); // returns 1*4 + 2*5 + 3*6 = 32;
~~~~


OF reference can be found <a href = "http://www.openframeworks.cc/documentation/math/ofVec3f.html#dot">here</a>

##hardcore nerding action for the math-minded
For the hardcore, our "space" is a vector space, which must be "closed under addition and scalar multiplication," which is the fancy way of saying that all combinations of addition and scalar multiplication are also vectors in that same space. The standard bases are usually referred to by "e", ie e1, e2, e3, etc; we also note that we are most often discussing an orthonormal basis, which means that e1, e2, and e3 all have length 1, and are each at 90 degrees to one another. In the difference example, if we assume a and b are along a path, then c is one approximation of the path tangent.  ** Before  the uber-nerds out there slap my hand for being incomplete, there are a few other technical requirements to be a vector space; these can be found here http://en.wikipedia.org/wiki/Vector_space. The dot product is also called the inner product, and with length and this innner product defined, we get an "inner product space". In linear algebra terms, this inner product is described by transposing the object and multiplying; e.g. dot(a,b) = a(transpose) * b; the square length of a vector is often written as v(transpose) * v. Projection onto a subspace represented by a matrix is similar, A(transpose) * A * x (where A could represent the basis vectors of a plane, for example).
