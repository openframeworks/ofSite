---
.. title: How to add an addon to a project
.. type: howto
---

## Where do addons come from?

Addons are located in the ```addons``` folder in your OF installation. When you download OF you will already find several core addons there. Move your own addons or download [addons from other people](http://ofxaddons.com/) and place them into this folder as well.

## Using projectGenerator (OSX / Windows / Linux)

You can choose an addon to add in the drop down of the gui: 

![chooseAnAddon](chooseAnAddon.png)

When you hit generate these addons will be added to the project

![generateAProject](generateAProject.png)

You can also import an existing project and change the addons it is using, such as adding or removing addons it needs.  

![updateAProject](updateAProject.png)

## Makefile based projects

If you compile your project using Makefile, adding an addon is as simple as writing the name of the addon into a file called ```addons.make```. It should be placed in the root folder of your project, next to the Makefile. This is an exemplary ```addons.make```:

```
ofxXmlSettings
ofxGui
```



