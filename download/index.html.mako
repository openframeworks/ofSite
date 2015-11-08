## -*- coding: utf-8 -*-
<%inherit file="/_templates/slideshow_wide.mako" />

<!--h1>download</h1-->


<div id="download-latest-header">

	<h2>${bf.config.currentVersion}</h2>
	% if bf.config.breaking:
	    <h3>is the most recent release. It has a lot of new features, new interfaces, and some breaking changes, because of that ${bf.config.currentVersion} is not 100% compatible with older projects. Please see the <a href="https://raw.github.com/openframeworks/openFrameworks/${bf.config.currentVersion}/CHANGELOG.md">changelog</a> to get an overview of the differences between versions.</h3>
	% else:
	    <h3>is the most recent release. It's a minor version, with bugfixes only, so it is fully compatible with projects developed for ${bf.config.majorVersion} or any newer version. Please see the <a href="https://raw.github.com/openframeworks/openFrameworks/${bf.config.currentVersion}/CHANGELOG.md">changelog</a> to get an overview of the differences between versions.</h3>
	% endif
	<p>To use openFrameworks you will need an IDE, and the setup guide for your platform can walk you through this. Please post any bugs on the <a href="http://github.com/openframeworks/openFrameworks/issues">issues</a> page, and post to the <a href="http://forum.openframeworks.cc">forum</a> if you have any other questions. openFrameworks is distributed under the <a href="../about/license.html">MIT License</a>.</p>
</div>

<div id="download-bg-desktop">
    <div id="download-latest-platform">
	    <h2>osx</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_osx_release.zip">osx</a></p><br/>
	    <h3>IDE setup guides</h3>
	    <p><a href="../setup/xcode">xcode</a></p>
	    <p><a href="../setup/qtcreator">qt creator</a></p>
	    <p><a href="../setup/emscripten">emscripten</a></p>
    </div>

    <div id="download-latest-platform">
	    <h2>linux</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linux_release.tar.gz">linux 32bit</a></p>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linux64_release.tar.gz">linux 64bit</a></p><br/>
	    <h3>IDE setup guides</h3>
	    <p><a href="../setup/qtcreator">qt creator</a></p>
	    <p><a href="../setup/linux-eclipse">eclipse</a></p>
	    <p><a href="../setup/emscripten">emscripten</a></p>
    </div>

    <div id="download-latest-platform-last">
	    <h2>windows</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_vs_release.zip">visual studio (2015)</a></p><br/>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_win_cb_release.zip">qt creator / msys2</a></p>
	    <h3>IDE setup guides</h3>
	    <p><a href="../setup/vs">visual studio</a></p>
	    <p><a href="../setup/qtcreator">qt creator</a></p>
	    <p><a href="../setup/msys2">msys2</a></p>
    </div>
</div>

<div id="download-bg-mobile">
    <div id="download-latest-platform-title">
	    <h2>mobile</h2>
	    <p><em>openFrameworks for mobile platforms supports the same features as the desktop versions plus mobile specific features like acceleromter, compass, gps...</em></p>
    </div>

    <div id="download-latest-platform">
	    <h2>ios</h2>
	    <p><em>osx only</em></p><br/>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_ios_release.zip">xcode</a></p><br/>
	    <h3>IDE setup guide</h3>
	    <p><a href="../setup/iphone">xcode</a></p>
    </div>

    <div id="download-latest-platform-last">
	    <h2>android</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_android_release.tar.gz">android</a></p><br/>
	    <h3>IDE setup guides</h3>
	    <p><a href="../setup/android-eclipse">eclipse + ADT</a></p>
	    <p><a href="../setup/android-studio">android studio</a></p>
    </div>
</div>


<div id="download-bg-armlinux">
    <div id="download-latest-platform-title">
	    <h2>linux arm</h2>
	    <p><em>openFrameworks for arm boards running linux like Raspberry Pi, Beaglebone (black), Pandaboard, BeagleBoard and others.</em></p>
	    <p><em>We have setup guides for some of the most common boards but it should work on any armv6 and armv7 board.</em></p>
    </div>

    <div id="download-latest-platform">
	    <h2>linux&nbsp;armv6</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linuxarmv6l_release.tar.gz">linux armv6</a></p><br/>
	    <h3>setup guide</h3>
	    <p><a href="../setup/raspberrypi">raspberry pi 1</a></p>
    </div>

    <div id="download-latest-platform-last">
	    <h2>linux&nbsp;armv7</h2>
	    <h3>download<br/>openFrameworks for</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linuxarmv7l_release.tar.gz">linux armv7</a></p><br/>
	    <h3>setup guides</h3>
		<p><a href="http://forum.openframeworks.cc/t/raspberry-pi-2-setup-guide/">raspberry pi 2</a></p>
	    <p><a href="../setup/pandaboard">pandaboard</a></p>
	    <p><a href="../setup/armv7">generic armv7</a></p>
    </div>
</div>

<br class="clearboth"/>

We release openFrameworks as an uncompiled library. This means that when you download and unzip openFrameworks, you will see the following folders: `addons/`, `apps/`, `libs/`, and a few more. These folders contain openFrameworks completely, so if you want to keep multiple versions of openFrameworks on your computer you should just create multiple folders. For example, one `of_v${bf.config.currentVersion}_osx_release/` folder and one `of_v${bf.config.olderVersion}_osx_release/` folder, each with their own `apps/` folder. Even when new versions of openFrameworks are released, your old apps will still compile with old versions of openFrameworks.

The examples folder is a great place to start. Inside examples you'll find a variety of examples that show what is possible with openFrameworks. They demonstrate font loading, graphics, audio input and output, sound file playback and FFT analysis, video grabbing, movie playing, image loading and saving, event handling, serial communication, and much more.

<br />

<div id="myslides">
<img src="0071_0.png" />
<img src="0071_1.png" />
<img src="0071_2.png" />
<img src="0071_3.png" />
</div>

-------------------------------

<iframe src="http://ci.openframeworks.cc/nightlybuilds.html" style="width:100%; height:370px; border: none" scrolling="no" seamless="seamless"></iframe>

-------------------------------

other releases  
--------------

Older releases of openFrameworks are archived [here](older.html). For the absolute latest version of openFrameworks, see the [openFrameworks GitHub](https://github.com/openframeworks/openFrameworks/). If you're interested in contributing to openFrameworks, you should fork the GitHub repository and follow the guidelines for the [openFrameworks GitHub workflow](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow).

