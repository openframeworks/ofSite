<%inherit file="/_templates/markdown.mako" />

download
=========

<div id="download-latest-header">
	<h2>007</h2>
	<p><strong>is the most recent release. It has a lot of new features, new interfaces, and probably some new bugs too. 007 is not 100% compatible with 0062 projects. A <a href="http://forum.openframeworks.cc/index.php/topic,7368.0.html">changelog</a> is available on the forum.</strong></p>
	<p>To use openFrameworks you will need an IDE, and the setup guide for your platform can walk you through this. Please post any bugs on the <a href="http://github.com/openframeworks/openFrameworks/issues">issues</a> page, and post to the <a href="http://forum.openframeworks.cc">forum</a> if you have any other questions. openFrameworks is distributed under the <a href="../about/license.html">MIT License</a>.</p>
</div>

<div id="download-latest-platform">
	<h2>osx</h2>
	<h3>download</h3>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_osx.zip">xcode</a></p><br/>
	<h3>setup guide</h3>
	<p><a href="xcode.html">xcode</a></p>
</div>

<div id="download-latest-platform">
	<h2>linux</h2>
	<h3>download</h3>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_linux.tar.gz">code::blocks</a></p>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_linux64.tar.gz">code::blocks (64 bit)</a></p><br/>
	<h3>setup guide</h3>
	<p><a href="linux.html">code::blocks</a></p>
</div>

<div id="download-latest-platform">
	<h2>windows</h2>
	<h3>download</h3>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_win_cb.zip">code::blocks</a></p>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_vs2010.zip">visual studio 2010</a></p><br/>
	<h3>setup guides</h3>
	<p><a href="wincb.html">code::blocks</a></p>
	<p><a href="vs2008.html">visual studio 2008</a></p>
</div>

<div id="download-latest-platform">
	<h2>ios</h2>
	<p><em>osx only</em></p><br/>
	<h3>download</h3>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_iphone.zip">ios</a></p><br/>
	<h3>setup guide</h3>
	<p><a href="ios.html">ios</a></p>
</div>

<div id="download-latest-platform">
	<h2>android</h2>
	<p><em>linux + osx only</em></p><br/>
	<h3>download</h3>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_android.tar.gz">eclipse</a></p><br/>
	<h3>setup guide</h3>
	<p><a href="android.html">eclipse</a></p>
</div>

<br class="clearboth"/>

--------------------------------

about the release
-----------------
  
We release openFrameworks as an uncompiled library. This means that when you download and unzip openFrameworks, you will see the following folders: `addons/`, `apps/`, `libs/`, and a few more. These folders contain openFrameworks completely, so if you want to keep multiple versions of openFrameworks on your computer you should just create multiple folders. For example, one `openFrameworks0062/` folder and one `openFrameworks007/` folder, each with their own `apps/` folder. Even when new versions of openFrameworks are released, your old apps will still compile with old versions of openFrameworks.

`apps/` is a great place to start. Inside `apps/` you'll find a variety of examples that show what is possible with openFrameworks. They demonstrate font loading, graphics, audio input and output, sound file playback and fft analysis, video grabbing, movie playing, image loading and saving, event handling and serial communication.  For more examples, see `addonsExamples/`.

<table border="0">
<tbody>
<tr>
<td><img class="size-full wp-image-397 alignnone" title="graphicsAdvExample" src="../images/examples/graphicsAdvExample.gif" alt="graphicsAdvExample" />&nbsp;</p>
<p><strong>advanced graphics<br />
</strong></td>
<td><img class="size-full wp-image-398 alignnone" title="audioInputExample" src="../images/examples/audioInputExample.gif" alt="audioInputExample" />&nbsp;</p>
<p style="text-align: center;"><strong>audio input</strong></p>
</td>
<td><img class="size-full wp-image-399 alignnone" title="audioOutputExample" src="../images/examples/audioOutputExample.gif" alt="audioOutputExample" />&nbsp;</p>
<p style="text-align: center;"><strong>audio output</strong></p>
</td>
<td style="text-align: center;">
<p style="text-align: center;"><img class="size-full wp-image-400 aligncenter" title="eventExample" src="../images/examples/eventExample.gif" alt="eventExample" /></p>
<p><strong>event handling</strong></td>
</tr>
<tr>
<td><img class="alignnone size-full wp-image-401" title="fontsExample" src="../images/examples/fontsExample.gif" alt="fontsExample" />&nbsp;</p>
<p style="text-align: center;"><strong>font loading</strong></p>
</td>
<td style="text-align: center;">
<p style="text-align: center;"><img class="size-full wp-image-402 aligncenter" title="graphicsExample" src="../images/examples/graphicsExample.gif" alt="graphicsExample" /></p>
<p><strong>graphics</strong></td>
<td style="text-align: center;">
<p style="text-align: center;"><img class="size-full wp-image-403 aligncenter" title="imageLoader" src="../images/examples/imageLoader.gif" alt="imageLoader" /></p>
<p><strong>image loading</strong></td>
<td style="text-align: center;">
<p style="text-align: center;"><img class="size-full wp-image-404 aligncenter" title="imageSaverExample" src="../images/examples/imageSaverExample.gif" alt="imageSaverExample" /></p>
<p><strong>image saving</strong></td>
</tr>
<tr>
<td><img class="alignnone size-full wp-image-407" title="serialExample" src="../images/examples/serialExample1.gif" alt="serialExample" />&nbsp;</p>
<p style="text-align: center;"><strong>serial i/o</strong></p>
</td>
<td>
<p style="text-align: center;"><img class="size-full wp-image-408 aligncenter" title="soundPlayerExample" src="../images/examples/soundPlayerExample1.gif" alt="soundPlayerExample" /></p>
<p style="text-align: center;"><strong>soundfile playback</strong></p>
</td>
<td><img class="size-full wp-image-409 alignnone" title="fftExample" src="../images/examples/fftExample.gif" alt="fftExample" /><strong> </strong>&nbsp;</p>
<p style="text-align: center;"><strong>soundfile fft</strong></p>
</td>
<td><img class="alignnone size-full wp-image-410" title="screenToTextureExample" src="../images/examples/screenToTextureExample.gif" alt="screenToTextureExample" />&nbsp;</p>
<p style="text-align: center;"><strong>screen to texture</strong></p>
</td>
</tr>
<tr>
<td><img class="size-full wp-image-411 alignnone" title="textureExample" src="../images/examples/textureExample.gif" alt="textureExample" />&nbsp;</p>
<p style="text-align: center;"><strong>textures</strong></p>
</td>
<td style="text-align: center;"><img class="size-full wp-image-412 alignnone" title="videoGrabberExample" src="../images/examples/videoGrabberExample.gif" alt="videoGrabberExample" />&nbsp;</p>
<p><strong>video grabbing</strong></td>
<td><img class="size-full wp-image-413 alignnone" title="videoPlayerExample" src="../images/examples/videoPlayerExample.gif" alt="videoPlayerExample" />&nbsp;</p>
<p style="text-align: center;"><strong>video playing</strong></p>
</td>
<td></td>
</tr>
</tbody>
</table>

--------------------------------

other releases  
--------------

Older releases of openFrameworks are archived [here](older.html). For the absolute latest version of openFrameworks, see the [openFrameworks GitHub](https://github.com/openframeworks/openFrameworks/). If you're interested in contributing to openFrameworks, you should fork the GitHub repository and follow the guidelines for the [openFrameworks GitHub workflow](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow).

[0]: http://forum.openframeworks.cc
[1]: http://github.com/openframeworks/openFrameworks/issues
[2]: ../versions/preRelease_v0.07/of_preRelease_v007_win_cb.zip
[3]: ../versions/preRelease_v0.07/of_preRelease_v007_vs2010.zip
[4]: ../versions/preRelease_v0.07/of_preRelease_v007_osx.zip
[5]: ../versions/preRelease_v0.07/of_preRelease_v007_linux.tar.gz
[6]: ../versions/preRelease_v0.07/of_preRelease_v007_linux64.tar.gz
[7]: ../versions/preRelease_v0.07/of_preRelease_v007_iphone.zip
[8]: ../versions/preRelease_v0.07/of_preRelease_v007_android.tar.gz
[9]: ../license
[10]: http://openframeworks.cc/setup
