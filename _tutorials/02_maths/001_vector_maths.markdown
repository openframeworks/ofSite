---
date: 2012/02/23 10:00:00
title: Vector Maths
summary: Basic concept of vector maths
author: Keith Pasko
---

A vector represents a direction and magnitude in an abstract "space"; for our current purposes, we can just think of this "space" as the common 2d or 3d world. In these worlds, we have standard "basis vectors" and an origin; everything else in the world is created from these fundamentals. For 3d, the standard origin is (0,0,0), and standard bases [1,0,0] , [0,1,0] , [0,0,1] (it is the same for 2d, but without the 3rd component, i.e. [0,0] origin, [1,0] , [0,1] bases). To put a perhaps more familiar name to these, we can call them the x, y, and z directions. The allowed operations on these vectors are addition and scalar multiplication - with these, we can generate any vector in space.

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


###addition
Now let's say we want to go 3.14 units to the right, and then 1.71 units up; we can add the two vectors we've just created- [3.14,0,0] + [0,1.71,0] = [3.14 + 0,0 + 1.71,0 + 0] = [3.14,1.71,0]. This is called "component-wise addition", as we just add the different components of each vector (i.e. x + x, y + y, z + z). This can be visualized by putting one vector at the tip of the other vector

<canvas id = "add" width = "600" height = "250">

</canvas>

<script type="text/javascript">

drawAdd();

</script>

###nerd stuff
For the hardcore, our "space" is a vector space, which we say is "closed under addition and scalar multiplication," which means that all combinations of addition and scalar multiplication are also vectors in that same space. The standard bases are usually referred to by "e", ie e1, e2, e3, etc.

## OF representation
In OF these are stored as ofVec2f and ofVec3f.

### minor section
__ofApp.h__

~~~~{.cpp}
~~~~

__ofApp.cpp__

~~~~{.cpp}
~~~~








