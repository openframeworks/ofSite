## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />

# Camera Lens Offset Example

This example uses the ofxCvHaarFinder addon to track the 2D position of the head taken from the videoGrabber. This position and a constant distant position is asign to a camera position, to have the illusion that the window we are looking at has depth, so the point of view it's where our head is, and what we are able to see on the screen is related to our movement.

Classes used
----------------

- ofEasyCam
- ofVboMesh

Functions used
----------------

- ofMultMatrix()

Addons
----------------

- ofxCvHaarFinder

Tags
----------------
matrix, cameras, point of view, virtual camera, Vbo, face tracking, computer vision.



![Alt text](images/cameraLensOffsetExample_img01.png)
![Alt text](images/cameraLensOffsetExample_img02.png)






