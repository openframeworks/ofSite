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
<br/>

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
###dot product / projection / reflection
###cross product

###nerd stuff
For the hardcore, our "space" is a vector space, which must be "closed under addition and scalar multiplication," which is the fancy way of saying that all combinations of addition and scalar multiplication are also vectors in that same space. The standard bases are usually referred to by "e", ie e1, e2, e3, etc; we also note that we are most often discussing an orthonormal basis, which means that e1, e2, and e3 all have length 1, and are each at 90 degrees to one another. In the difference example, if we assume a and b are along a path, then c is one approximation of the path tangent.

## OF representation
In OF vectors are stored as ofVec2f and ofVec3f. They contain the operators + (plus) and * (times) that we've discussed, as well as - (minus) and / (divide).
