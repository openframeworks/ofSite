## Three-dimensional graphics classes and functions. 

Drawing in 3d no matter the API you are using (openGL, directX...) usually involves:

- Representing the geometry you want to draw. For that openFrameworks has some classes like [ofMesh](ofMesh.html) or the different [3d primitives](of3dPrimitive.html).


- Positioning that geometry in 3d space. openFrameworks provides the class [ofNode](ofNode.html) contained also in this module which allows to easily work with 3d transformations, it can be used to position, rotate, scale or make an object look at some position or other object in an easy way. openFrameworks objects that can be positioned in 3d in this module or others are ofNodes (extend ofNode), for example [ofCamera](ofCamera.html) or [ofLight](/documentation/gl/ofLight.html)


- Defining which kind of camera we use to look at the scene, the perspective transformation we use to represent the scene. openFrameworks has 2 types of camera that you can use to render the scene using diffent perspective settings. [ofCamera](ofCamera.html) allows to set such perspective ajusting parameters like it's FOV (field of vision) and it's also an [ofNode](ofNode.html) which allows to position it in 3d space or make it look at other objects in the scene in an easy way. [ofEasyCam](ofEasyCam.html) is a quick way to set a camera in a scene that can be directly manipulated with the mouse.

When working with 3d geometry in openFrameworks it's recomended to use [of3dPrimitive](of3dPrimitive.html) since it's already an ofNode so it's really easy to position it in 3d space. [of3dPrimitive](of3dPrimitive.html) is also optimized to use the fastest way to draw the geometry in each platform.

Apart from this classes this module also contains some functions to quickly draw the most used primitives like spheres, cones, boxes... although this is a really easy way to draw something, if you are going to need to position several objects on a scene it's recommended to use [of3dPrimitive](of3dPrimitive.html) instead since it'll allow to transform the object in an easier way than using global transformations.
