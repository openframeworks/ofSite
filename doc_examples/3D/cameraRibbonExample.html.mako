## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />

# Camera Ribbon Example

This examples shows how to create a strip drawing that is moving backwards over time, so even if you are drawing in the 2D space, you are generating a 3D object. You have the posibility to stop drawing and change view to a camera that enables you to see the object you are creating in 3D space and go back to drawing in the 2D view any time. The strip is a vector containing a Mesh created in the TRIANGLE_STRIP mode, so you only need to draw two points per triangle and the next point you add will connect to the previous.

Classes used
----------------

- ofVec3f
- ofCamera
- ofMesh


Tags
----------------
vector, time, camera, draw, points, OF_PRIMITIVE_TRIANGLE_STRIP



![Alt text](images/cameraRibbonExample_img01.png)
![Alt text](images/cameraRibbonExample_img02.png)
![Alt text](images/cameraRibbonExample_img03.png)






