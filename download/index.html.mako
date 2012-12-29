<%inherit file="/_templates/slideshow.mako" />

<h1>download</h1>
<div id="download-latest-header">
	<h2>${bf.config.currentVersion}</h2>
	<p><strong>is the most recent release. It has a lot of new features, new interfaces, and probably some new bugs too. ${bf.config.currentVersion} is not 100% compatible with older projects. Please see the <a href="https://github.com/openframeworks/openFrameworks/blob/develop/changes.txt">changelog</a> to get an overview of the differences between versions.</strong></p>
	<p>To use openFrameworks you will need an IDE, and the setup guide for your platform can walk you through this. Please post any bugs on the <a href="http://github.com/openframeworks/openFrameworks/issues">issues</a> page, and post to the <a href="http://forum.openframeworks.cc">forum</a> if you have any other questions. openFrameworks is distributed under the <a href="../about/license.html">MIT License</a>.</p>
</div>

<div id="download-latest-platform">
	<h2>osx</h2>
	<h3>download openFrameworks for</h3>
	<p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_osx_release.zip">xcode</a></p><br/>
	<h3>IDE setup guide</h3>
	<p><a href="../setup/xcode">xcode</a></p>
</div>

<div id="download-latest-platform">
	<h2>linux</h2>
	<h3>download openFrameworks for</h3>
	<p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linux_release.tar.gz">code::blocks</a></p>
	<p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linux64_release.tar.gz">code::blocks (64 bit)</a></p><br/>
	<h3>IDE setup guide</h3>
	<p><a href="../setup/linux-codeblocks">code::blocks</a></p>
	<p><a href="../setup/linux-eclipse">eclipse</a></p>
</div>

<div id="download-latest-platform">
	<h2>windows</h2>
	<h3>download openFrameworks for</h3>
	<p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_win_cb_release.zip">code::blocks</a></p>
	<p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_vs2010_release.zip">visual studio 2010</a></p><br/>
	<h3>IDE setup guides</h3>
	<p><a href="../setup/codeblocks">code::blocks</a></p>
	<!--<p><a href="../setup/vs-2008">visual studio 2008</a></p>-->
	<p><a href="../setup/vs-2010">visual studio 2010</a></p>
</div>

<div id="download-latest-platform">
	<h2>ios</h2>
	<p><em>osx only</em></p><br/>
	<h3>download openFrameworks for</h3>
	<p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_ios_release.zip">ios</a></p><br/>
	<h3>IDE setup guide</h3>
	<p><a href="../setup/iphone">ios</a></p>
</div>

<div id="download-latest-platform">
	<h2>android</h2>
	<p><em>linux + osx only</em></p><br/>
	<h3>download openFrameworks for</h3>
	<p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_android_release.tar.gz">eclipse</a></p><br/>
	<h3>IDE setup guide</h3>
	<p><a href="../setup/android-eclipse">eclipse</a></p>
</div>

<br class="clearboth"/>

We release openFrameworks as an uncompiled library. This means that when you download and unzip openFrameworks, you will see the following folders: `addons/`, `apps/`, `libs/`, and a few more. These folders contain openFrameworks completely, so if you want to keep multiple versions of openFrameworks on your computer you should just create multiple folders. For example, one `openFrameworks007/` folder and one `openFrameworks0071/` folder, each with their own `apps/` folder. Even when new versions of openFrameworks are released, your old apps will still compile with old versions of openFrameworks.

`apps/examples/` is a great place to start. Inside `apps/examples/` you'll find a variety of examples that show what is possible with openFrameworks. They demonstrate font loading, graphics, audio input and output, sound file playback and FFT analysis, video grabbing, movie playing, image loading and saving, event handling and serial communication.  For more examples, see `apps/addonsExamples/`.

<br />

*Some new examples with the 0071 release: point picker, game events, quaternion placement, points as textures:*

<div id="myslides">
<img src="0071_0.png" />
<img src="0071_1.png" />
<img src="0071_2.png" />
<img src="0071_3.png" />
</div>

-------------------------------

nightly builds  
--------------

Every night OF is built automatically, <a href="${bf.config.site.url}/nightlybuilds.html">here</a> you can find the latest builds.

-------------------------------

other releases  
--------------

Older releases of openFrameworks are archived [here](older.html). For the absolute latest version of openFrameworks, see the [openFrameworks GitHub](https://github.com/openframeworks/openFrameworks/). If you're interested in contributing to openFrameworks, you should fork the GitHub repository and follow the guidelines for the [openFrameworks GitHub workflow](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow).

[0]: http://forum.openframeworks.cc
[1]: http://github.com/openframeworks/openFrameworks/issues
[2]: http://www.openframeworks.cc/versions/v0.071/of_v0071_win_cb_release.zip
[3]: http://www.openframeworks.cc/versions/v0.071/of_v0071_vs2010_release.zip
[4]: http://www.openframeworks.cc/versions/v0.071/of_0071_osx_release.zip
[5]: http://www.openframeworks.cc/versions/v0.071/of_v0071_linux_release.tar.gz
[6]: http://www.openframeworks.cc/versions/v0.071/of_v0071_linux64_release.tar.gz
[7]: http://www.openframeworks.cc/versions/v0.071/of_0071_iOS_release.zip
[8]: http://www.openframeworks.cc/versions/v0.071/of_v0071_android_release.tar.gz
[9]: ../license
[10]: http://openframeworks.cc/setup
