---
date: 2012/10/20 17:00:00
title: Create a new project with the projectGenerator
summary: With openframeworks 0072 we have a new tool to create new projects
author: Jesus Gollonet
author_site: http://jesusgollonet.com
---

## 1. What is it?
As of openframeworks 0072 we have a new tool called projectGenerator to create new openframeworks projects, including addons.  In previous versions, creating a new openframeworks project involved duplicating an existing example app and adding the addons by hand.  With the project generator project creation is faster and less error-prone. 

It is, by the way, a desktop app made with openFrameworks.

## 2. Usage

The project generator resides in a folder in the top level of an openframeworks download. 

![Image: where is the projectGenerator](pg_images/pg-00.png)

Double click the app. This is our new friend.

![Image: projectGenerator GUI](pg_images/pg-01.png)

There are some options to consider when creating a new app.

### 1. Name:
Give a name to yor project

### 2. Path
When you execute the projectGenerator, this should contain the absolute path to the myApps folder in the distribution you downloaded, usually smething like
	
	/Users/username/wherever/you/have/openFrameworks/apps/myApps
	
That's a good default. If you want to organize your projects in different folders you can do so, but you have to make sure that they reside at the same level that myApp, e.g:
	
	/.../apps/playground/
		/myGame1
		/myGame2
	/.../apps/myBigInstallation
		/myProject1
		/myProject2
	/.../apps/myAddonsTests/
		/ofxGifEncoderTests	
		/ofxFlashTests
		

	
### 3. Platform
This should contain the platform you want to build for. Given that there are different distributions for different platforms this is set in your download. This means that if you have, for example, an osx distribution and an ios distribution on mac, you'll have to execute the projectGenerator in their respective folders.

### 4. Addons
If you know the addons you're going to need, click on the addons button to open the selection page where you can select the addons  you want.  

![Image: projectGenerator - selecting addons](pg_images/pg-02.png)

#### Notes on addons
- All the addons you have in your addons folder will be listed here, not only the ones that came with openframeworks. 
- Also, don't worry if you still don't know what you'll need. You can always add them later with the usual method for your platform.
- There are several guides on how to install addons for different platform in the [openframeworks wiki](http://wiki.openframeworks.cc/index.php?title=Main_Page). They might be slightly out of sync with the latest release but if you run into trouble don't hesitate to ask in the [forum](http://forum.openframeworks.cc/index.php)
- Check out [ofxaddons.com](http://ofxaddons.com) for a huge collection of them.

### 5. Done!
Click on generate and your project will be created. Depending on the amount and size of addons you selected it might take a while. You'll get a message on the bottom bar when the app is done.

Go to the folder you specified in the path and your project will be waiting for you. Start coding.
## 3. Additional notes:
- Even though the screenshots and paths in this guide are mac centric, the process is the same for all platforms. Again, if you have doubts, ask in the [forum](http://forum.openframeworks.cc/index.php)
- Excuse the blurriness of the screenshots. We're working on it : )
