---
date: 2012/10/20 17:00:00
title: Create a new project with the projectGenerator
summary: openframeworks 0072 comes with a new tool to generate projects
author: Jesus Gollonet
author_site: http://jesusgollonet.com
---

## 1. What is it?
As of openframeworks 0072 we have a new tool called projectGenerator to create new openframeworks projects, including addons.  In previous versions, creating a new openframeworks project involved duplicating an existing example app and adding the addons by hand.  With the project generator project creation is faster and less error-prone. 

It is, by the way, a desktop app made with openFrameworks.

## 2. Usage
It's pretty simple to make a new project. 
The project generator lives in a folder in the top level of an openframeworks download. 

![Image: where is the projectGenerator](pg_images/pg-00.png)

Double click the app. This is our new friend.

![Image: projectGenerator GUI](pg_images/pg-01.png)

There are some options to consider when creating a new app.

### 1. Name:
Give a name to yor project

### 2. Path
When you execute the projectGenerator, this should contain the absolute path to the myApps folder in the distribution you downloaded, usually something like
	
	/Users/username/wherever/you/have/openFrameworks/apps/myApps
	
That's a good default option, but you can put your projects anywhere relative to OF, and it should work. That said, due to the self-contained structure of openframeworks, it is still recommended to use folders inside the apps project. That way, if the OF release or your project gets moved, or if some lower level folder gets renamed, the generated paths don't break.

Here's a suggested file structure
	
	/.../apps/myApps/
		/myApp1
		/myApp2
		...
	/.../apps/myBigInstallation
		/myProject1
		/myProject2
		...
	/.../apps/myAddonsTests/
		/ofxGifEncoderTests	
		/ofxFlashTests
		...
		

	
### 3. Platform
This should contain the platform you want to build for. Given that there are different distributions for different platforms this is set in your download. This means that if you have, for example, an osx distribution and an ios distribution on mac, you'll have to execute the projectGenerator in their respective folders.

### 4. Addons
If you know the addons you're going to need, open the addon selection page where you can include them. Click on Back when you're done.

![Image: projectGenerator - selecting addons](pg_images/pg-02.png)

#### Notes on addons
- All the addons you have in your addons folder will be listed here, not only the ones that came with openframeworks. 
- That said, not all addons (especially non core addons) are packaged in the right way for this. This tool is in its early days so there are many addons we haven't tested yet.
- Also, don't worry if you still don't know what you'll need. You can always add them later with the usual method for your platform.
- There are several guides on how to install addons for different platform in the [openframeworks wiki](http://wiki.openframeworks.cc/index.php?title=Main_Page). They might be slightly out of sync with the latest release but if you run into trouble don't hesitate to ask in the [forum](http://forum.openframeworks.cc/index.php)
- Check out [ofxaddons.com](http://ofxaddons.com) for a huge collection of them.

### 5. Done!
Click on generate and your project will be created. Depending on the amount and size of addons you selected it might take a while. You'll get a message on the bottom bar when the app is done.

Go to the folder you specified in the path and your project will be waiting for you. Start coding.
## 3. Additional notes:
- Check the [readme](https://github.com/ofZach/projectGeneratorSimple/tree/master/bin) for more info about the tool, including some advanced notes and a more flexible version for developers.
- Even though the screenshots and paths in this guide are mac centric, the process is the same for all platforms. Again, if you have doubts, ask in the [forum](http://forum.openframeworks.cc/index.php)
- Excuse the blurriness of the screenshots. We're working on it : )
