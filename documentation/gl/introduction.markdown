## OpenGL object oriented wrappers

Modern computerns usually have some kind of GPU (Graphics Processing Unit) which is like another computer inside the computer, specialized on graphics.

When drawing openFrameworks uses the GPU through OpenGL. OpenGL is a c API which allows to send geometries, parameters and change the state of the GPU. openFrameworks wraps the most common functionality of OpenGL in an object oriented API and tries to achieve a balance in transparency with respect to the original OpenGL API and abstraction over the parts that are most used but complex or really verbose to setup in OpenGL. This way using OpenGL through openFrameworks is easier and results in less code than using the original API but also aims to make the different parts easily identificable for anyone with previous OpenGL knowledge, that way reading an OpenGL book or documentation will also teach you how to use openFrameworks in an optimal way or at least the part contained in this module.

OpenGL until version 3 had an API that used a style called immediate mode and lots of global state, also the hardware that it was aimed at had what was called a fixed pipeline meaning that it could do only one thing. That one thing was mostly drawing a geometry using a projection and modelview matrix (see the [3d module](../3d/introduction.html) for more info) optionally using one or more textures and applying some lighting to the scene. That fixed pipeline could be configured through commands that changed it's state. This is somehow problematic and limited, first using global mutable state is a bad practice that leads to hard to maintain code. Then also the fact that things were so predefined means that the GPU was only able to do one thing and trying to do something slightly different was highly unefficient.

Since OpenGL 3 the API has changed to what's called a programmable pipeline, meaning that the pipeline can be completely customized to do whatever we want. That happens through the use of shader programs that allow to configure how the graphics card draws the geometry we send to it. Or even do something completely different. It also reduces (although not completely) the use of mutable global state.

openFrameworks supports both modes, you can set the openGL version in your `main.cpp` file. Check the [application module](../application/introduction.html) to see how to do it.

To make simple uses easier and simplify the port of old code, openFrameworks when using openGL 3+ does an emulation of the fixed pipeline but you can also use it as a fully programmable pipeline by using your own shaders instead of the default ones that openFrameworks sets if we don't define our own.

All the classes in this module have shallow copy semantics. That means that when copying them you are not really making a full copy as happens with objects in C++ usually but instead you are creating a reference to the original. This makes it faster to for example create a shader or a texture and put it on a vector which otherwise would require to copy resources in the GPU which is complex if at all possible and sometimes slow.

