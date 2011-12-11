<%inherit file="/_templates/markdown.mako" />

download
=========

<div id="download-latest-header">
	<h2>0.07</h2>
	<p><strong>is the most recent release. It has a lot of new features, new api structures, and probably some new bugs too. 0.07 is not 100% compatible with 0.062 projects.</strong></p>
	<p>To use openFrameworks you will need an IDE. You can find information about setting up one for your platform in the setup guides. Please post any bugs on the <a href="http://github.com/openframeworks/openFrameworks/issues">issues</a> page. Post to the <a href="http://forum.openframeworks.cc">forum</a> if you have any other questions. Older releases are archived <a href="older.html">here</a>. openFrameworks is distributed under the <a href="../about/license.html">MIT License</a>.</p>
</div>

<div id="download-latest-platform">
	<h2>osx</h2>
	<p><strong>download</strong></p>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_osx.zip">xcode</a></p>
	<p><strong>setup guide</strong></p>
	<p><a href="xcode.html">xcode</a></p>
</div>

<div id="download-latest-platform">
	<h2>linux</h2>
	<p><strong>download</strong></p>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_linux.tar.gz">code::blocks</a></p>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_linux64.tar.gz">code::blocks (64 bit)</a></p>
	<p><strong>setup guide</strong></p>
	<p><a href="linux.html">code::blocks</a></p>
</div>

<div id="download-latest-platform">
	<h2>windows</h2>
	<strong>download</strong></p>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_win_cb.zip">code::blocks</a></p>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_vs2010.zip">visual studio 2010</a></p>
	<p><strong>setup guides</strong></p>
	<p><a href="wincb.html">code::blocks</a></p>
	<p><a href="vs2008.html">visual studio 2008</a></p>
</div>

<div id="download-latest-platform">
	<h2>ios</h2>
	<p><em>osx only</em></p>
	<p><strong>download</strong></p>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_iphone.zip">ios</a></p>
	<p><strong>setup guide</strong></p>
	<p><a href="ios.html">ios</a></p>
</div>

<div id="download-latest-platform">
	<h2>android</h2>
	<p><em>linux + osx only</em></p>
	<p><strong>download</strong></p>
	<p><a href="../versions/preRelease_v0.07/of_preRelease_v007_android.tar.gz">eclipse</a></p>
	<p><strong>setup guide</strong></p>
	<p><a href="android.html">eclipse</a></p>
</div>

<br class="clearboth"/>

--------------------------------

about the release
-----------------
  
we release openFrameworks as an uncompiled library. When you download openFrameworks, for your chosen compiler, it will come with the following folders:

- addons  
- apps  
- libs  
- other  
- scripts

in the libs folder, you will find openFrameworks, along with all of the libs that it links to.  
In the apps folder, you will find a variety of examples.

--------------------------------

important note about multiple releases
--------------------------------------

_when you download v0062, it comes with its own internal folder structure. You shouldn't change anything in the 0061 folder but rather, keep the two distributions seperate. ie:_ 

_0062_  
_---- addons_  
_---- apps_  
_---- libs_  
_---- other_  
_---- scripts_

_006_  
_---- addons_  
_---- apps_  
_---- libs_  
_---- other_  
_---- scripts_

_the idea is to make sure that your 006 apps always compile._

--------------------------------

about the apps
--------------

these are designed to show of different aspects of openFrameworks. They demonstrate font loading, graphics, audio input and output, sound file playback and fft analysis, video grabbing, quicktime movie playing, image loading and saving, event handling and serial communication. Some screen shots:

<table border="0">
<tbody>
<tr>
<td><img class="size-full wp-image-397 alignnone" title="graphicsAdvExample" src="../wp-content/uploads/2009/07/graphicsAdvExample.gif" alt="graphicsAdvExample" />&nbsp;</p>
<p><strong>advanced graphics<br />
</strong></td>
<td><img class="size-full wp-image-398 alignnone" title="audioInputExample" src="../wp-content/uploads/2009/07/audioInputExample.gif" alt="audioInputExample" />&nbsp;</p>
<p style="text-align: center;"><strong>audio input</strong></p>
</td>
<td><img class="size-full wp-image-399 alignnone" title="audioOutputExample" src="../wp-content/uploads/2009/07/audioOutputExample.gif" alt="audioOutputExample" />&nbsp;</p>
<p style="text-align: center;"><strong>audio output</strong></p>
</td>
<td style="text-align: center;">
<p style="text-align: center;"><img class="size-full wp-image-400 aligncenter" title="eventExample" src="../wp-content/uploads/2009/07/eventExample.gif" alt="eventExample" /></p>
<p><strong>event handling</strong></td>
</tr>
<tr>
<td><img class="alignnone size-full wp-image-401" title="fontsExample" src="../wp-content/uploads/2009/07/fontsExample.gif" alt="fontsExample" />&nbsp;</p>
<p style="text-align: center;"><strong>font loading</strong></p>
</td>
<td style="text-align: center;">
<p style="text-align: center;"><img class="size-full wp-image-402 aligncenter" title="graphicsExample" src="../wp-content/uploads/2009/07/graphicsExample.gif" alt="graphicsExample" /></p>
<p><strong>graphics</strong></td>
<td style="text-align: center;">
<p style="text-align: center;"><img class="size-full wp-image-403 aligncenter" title="imageLoader" src="../wp-content/uploads/2009/07/imageLoader.gif" alt="imageLoader" /></p>
<p><strong>image loading</strong></td>
<td style="text-align: center;">
<p style="text-align: center;"><img class="size-full wp-image-404 aligncenter" title="imageSaverExample" src="../wp-content/uploads/2009/07/imageSaverExample.gif" alt="imageSaverExample" /></p>
<p><strong>image saving</strong></td>
</tr>
<tr>
<td><img class="alignnone size-full wp-image-407" title="serialExample" src="../wp-content/uploads/2009/07/serialExample1.gif" alt="serialExample" />&nbsp;</p>
<p style="text-align: center;"><strong>serial i/o</strong></p>
</td>
<td>
<p style="text-align: center;"><img class="size-full wp-image-408 aligncenter" title="soundPlayerExample" src="../wp-content/uploads/2009/07/soundPlayerExample1.gif" alt="soundPlayerExample" /></p>
<p style="text-align: center;"><strong>soundfile playback</strong></p>
</td>
<td><img class="size-full wp-image-409 alignnone" title="fftExample" src="../wp-content/uploads/2009/07/fftExample.gif" alt="fftExample" /><strong> </strong>&nbsp;</p>
<p style="text-align: center;"><strong>soundfile fft</strong></p>
</td>
<td><img class="alignnone size-full wp-image-410" title="screenToTextureExample" src="../wp-content/uploads/2009/07/screenToTextureExample.gif" alt="screenToTextureExample" />&nbsp;</p>
<p style="text-align: center;"><strong>screen to texture</strong></p>
</td>
</tr>
<tr>
<td><img class="size-full wp-image-411 alignnone" title="textureExample" src="../wp-content/uploads/2009/07/textureExample.gif" alt="textureExample" />&nbsp;</p>
<p style="text-align: center;"><strong>textures</strong></p>
</td>
<td style="text-align: center;"><img class="size-full wp-image-412 alignnone" title="videoGrabberExample" src="../wp-content/uploads/2009/07/videoGrabberExample.gif" alt="videoGrabberExample" />&nbsp;</p>
<p><strong>video grabbing</strong></td>
<td><img class="size-full wp-image-413 alignnone" title="videoPlayerExample" src="../wp-content/uploads/2009/07/videoPlayerExample.gif" alt="videoPlayerExample" />&nbsp;</p>
<p style="text-align: center;"><strong>video playing</strong></p>
</td>
<td></td>
</tr>
</tbody>
</table>

--------------------------------

about the openFrameworks source code  
--------------------------------------

if you are interested in just taking a peak at the codebase or working with the very latest OF fixes and changes you can do that on the openFrameworks github page [here][11].

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
[11]: http://github.com/openframeworks/openFrameworks/
