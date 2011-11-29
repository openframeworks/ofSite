<%inherit file="/_templates/markdown.mako" />

download
=========


<div id="download-latest-header"><h2>007</h2> <strong> is a new release with a lot of new features, new api structures, and probably some new bugs too. 007 is not 100% compatible with 0062 projects. Please post any issues / bugs you find on the <a href="http://forum.openframeworks.cc">forum</a> or our <a href="http://github.com/openframeworks/openFrameworks/issues">github issues</a> page. </strong>

<p>
To use openFrameworks you will need an IDE you can find information about setting up one for your platform in the setup guides. Please leave a message in our forums if you are having trouble with a step or if you think we need to add something.
</p>

</div>

<div id="download-latest-platform">

<h2>osx</h2>

<strong>download</strong><br/>
<a href="http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_osx.zip">xcode</a><br/>

<strong>setup guide</strong><br/>
<a href="xcode.html">xcode</a>
</div>


<div id="download-latest-platform">

<h2>linux</h2>

<strong>download</strong><br/>
<a href="http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_linux.tar.gz">code::blocks</a> <br/>
<a href="http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_linux64.tar.gz">(64 bit) code::blocks</a><br/>

<strong>setup guide</strong><br/>
<a href="linux.html">code::blocks</a>
</div>


<div id="download-latest-platform">
<h2>windows</h2>

<strong>download</strong><br/>
<a href="http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_win_cb.zip">code::blocks</a> <br/>
<a href="http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_vs2010.zip">visual studio 2010</a><br/>

<strong>setup guides</strong><br/>
<a href="wincb.html">code::blocks</a><br/>
<a href="vs2008.html">visual studio 2008</a>
</div>


<div id="download-latest-platform">

<h2>ios</h2>

<strong>download</strong><br/>
<a href="http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_iphone.zip">xcode</a><br/>

<strong>setup guide</strong><br/>
<a href="iphone.html">ios/xcode</a>
</div>


<div id="download-latest-platform">
<h2>android</h2>

<strong>download</strong><br/>
<a href="http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_android.tar.gz">eclipse</a> <br/>
only linux and osx<br/>

<strong>setup guide</strong><br/>
<a href="android.html">eclipse</a></br>
</div>



<p class="download-license"><strong>MIT <a href="http://www.openframeworks.cc/license">license</a></strong> </p>


--------------------------------

setup guides
-----------------

you can contribute to keep the setup guides up to date by forking the OF website repository and updating the guides: [http://github.com/arturoc/new-OF-site](http://github.com/arturoc/new-OF-site)


--------------------------------

about the release
-----------------
  
we release openframeworks as an uncompiled library. When you download openframeworks, for your chosen compiler, it will come with the following folders:

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

these are designed to show of different aspects of openframeworks. They demonstrate font loading, graphics, audio input and output, sound file playback and fft analysis, video grabbing, quicktime movie playing, image loading and saving, event handling and serial communication. Some screen shots:

<table border="0">
<tbody>
<tr>
<td><img class="size-full wp-image-397 alignnone" title="graphicsAdvExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/graphicsAdvExample.gif" alt="graphicsAdvExample" />&nbsp;</p>
<p><strong>advanced graphics<br />
</strong></td>
<td><img class="size-full wp-image-398 alignnone" title="audioInputExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/audioInputExample.gif" alt="audioInputExample" />&nbsp;</p>
<p style="text-align: center;"><strong>audio input</strong></p>
</td>
<td><img class="size-full wp-image-399 alignnone" title="audioOutputExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/audioOutputExample.gif" alt="audioOutputExample" />&nbsp;</p>
<p style="text-align: center;"><strong>audio output</strong></p>
</td>
<td style="text-align: center;">
<p style="text-align: center;"><img class="size-full wp-image-400 aligncenter" title="eventExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/eventExample.gif" alt="eventExample" /></p>
<p><strong>event handling</strong></td>
</tr>
<tr>
<td><img class="alignnone size-full wp-image-401" title="fontsExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/fontsExample.gif" alt="fontsExample" />&nbsp;</p>
<p style="text-align: center;"><strong>font loading</strong></p>
</td>
<td style="text-align: center;">
<p style="text-align: center;"><img class="size-full wp-image-402 aligncenter" title="graphicsExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/graphicsExample.gif" alt="graphicsExample" /></p>
<p><strong>graphics</strong></td>
<td style="text-align: center;">
<p style="text-align: center;"><img class="size-full wp-image-403 aligncenter" title="imageLoader" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/imageLoader.gif" alt="imageLoader" /></p>
<p><strong>image loading</strong></td>
<td style="text-align: center;">
<p style="text-align: center;"><img class="size-full wp-image-404 aligncenter" title="imageSaverExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/imageSaverExample.gif" alt="imageSaverExample" /></p>
<p><strong>image saving</strong></td>
</tr>
<tr>
<td><img class="alignnone size-full wp-image-407" title="serialExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/serialExample1.gif" alt="serialExample" />&nbsp;</p>
<p style="text-align: center;"><strong>serial i/o</strong></p>
</td>
<td>
<p style="text-align: center;"><img class="size-full wp-image-408 aligncenter" title="soundPlayerExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/soundPlayerExample1.gif" alt="soundPlayerExample" /></p>
<p style="text-align: center;"><strong>soundfile playback</strong></p>
</td>
<td><img class="size-full wp-image-409 alignnone" title="fftExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/fftExample.gif" alt="fftExample" /><strong> </strong>&nbsp;</p>
<p style="text-align: center;"><strong>soundfile fft</strong></p>
</td>
<td><img class="alignnone size-full wp-image-410" title="screenToTextureExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/screenToTextureExample.gif" alt="screenToTextureExample" />&nbsp;</p>
<p style="text-align: center;"><strong>screen to texture</strong></p>
</td>
</tr>
<tr>
<td><img class="size-full wp-image-411 alignnone" title="textureExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/textureExample.gif" alt="textureExample" />&nbsp;</p>
<p style="text-align: center;"><strong>textures</strong></p>
</td>
<td style="text-align: center;"><img class="size-full wp-image-412 alignnone" title="videoGrabberExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/videoGrabberExample.gif" alt="videoGrabberExample" />&nbsp;</p>
<p><strong>video grabbing</strong></td>
<td><img class="size-full wp-image-413 alignnone" title="videoPlayerExample" src="http://www.openframeworks.cc/wp-content/uploads/2009/07/videoPlayerExample.gif" alt="videoPlayerExample" />&nbsp;</p>
<p style="text-align: center;"><strong>video playing</strong></p>
</td>
<td></td>
</tr>
</tbody>
</table>

--------------------------------

about the openframeworks source code  
--------------------------------------

if you are interested in just taking a peak at the codebase or working with the very latest OF fixes and changes you can do that on the openFrameworks github page [here][11].

--------------------------------

previous releases
-------------------

as we update and change OF, you can download older versions of the framework here. As we start to have multiple version of OF, please try to be clear on the discussion forum as to which version you are using.

--------------------------------

**pre release v0.062** 

windows: [code blocks FAT][12] | [visual studio 2010 FAT][13] | [visual studio 2008 FAT][14]

mac [x-code FAT (10.6)][15] | [x-code FAT (10.5)][16]

linux: [code blocks FAT][17] | [(64 bit) code blocks FAT][18]

iphone: [iPhone 0062 FAT][19]


--------------------------------


**pre release v0.061**

**_note that 0.06 project files are not compatible with 0.061 -- a guide detailing the new project structure will be posted soon._**

_**FAT Packages:** starting from 0.05, we are releasing normal and "FAT" versions, the fat versions contain several addons ready to go, plus addon examples. These addons aren't part of the core OF codebase, but contain advanced functionality like opencv, vector output, OSC, network communication, vector math and more._

windows: [visual studio 2008][20] | [visual studio 2008 FAT][21][][22]

[code blocks][23] | [code blocks FAT][24]

mac [x-code (10.5)][25] | [x-code FAT (10.5)][26] | [x-code (10.6)][27] | [x-code FAT (10.6)][28]

linux: [code blocks][29] | [code blocks FAT][30] | [(64 bit) code blocks][31] | [(64 bit) code blocks FAT][32]

all platforms in one package: [all gzip][33] | [all zip ][34].

iphone: [iPhone 0061 FAT][35]

changes:[changelog for 0.061][36]

license (MIT): [license][37]

--------------------------------


**pre release v0.06**

_starting for 0.05, we are releasing normal and "FAT" versions, the fat versions contain several addons ready to go, plus addon examples. These addons aren't part of the core OF codebase, but contain advanced functionality like opencv, vector output, OSC, network communication, vector math and more. Also, in this release we will also post binaries of the examples, so you can download and try without having to compile_

windows: [visual studio 2008][38] | [visual studio 2008 FAT][39][][22]

[code blocks][22] | [code blocks FAT][40]

mac: [x-code][41] | [x-code FAT][42] ( Snow Leopard users see this [post][43] )

linux: [code blocks][44] | [code blocks FAT][45] | [(64 bit) code blocks][46] | [(64 bit) code blocks FAT][47]

iphone: [x-code / iphone sdk][48]

changes:[changelog for 0.06][36]

--------------------------------

**pre release v0.05**

**addon fixes:** Since the 005 release there have been several critical fixes for addons -- details of the fixes and how to apply them can be found here: [addon fixes][49].

windows: [visual studio][50] | [visual studio FAT][51]  
[code blocks][52] | [code blocks FAT][53]  
[win32 example apps ][54]

mac: [x-code][55] | [x-code FAT][56]  
[osx example apps][57]

linux: [code blocks][58] | [code blocks FAT][59]  
[linux example  
apps][60]

--------------------------------

**pre release v0.04**

windows: [visual studio ][61] | [dev c++][62] | [code warrior][63]

mac: [x-code][64]

linux: [makefile][65] | [code::blocks][66]

changes: [changelog for 0.04][67]

--------------------------------

[preRelease 0.03][68]

[preRelease 0.02][69]

[preRelease 0.01][70]
[0]: http://forum.openframeworks.cc
[1]: http://github.com/openframeworks/openFrameworks/issues
[2]: http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_win_cb.zip
[3]: http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_vs2010.zip
[4]: http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_osx.zip
[5]: http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_linux.tar.gz
[6]: http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_linux64.tar.gz
[7]: http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_iphone.zip
[8]: http://www.openframeworks.cc/versions/preRelease_v0.07/of_preRelease_v007_android.tar.gz
[9]: http://www.openframeworks.cc/license
[10]: http://openframeworks.cc/setup
[11]: http://github.com/openframeworks/openFrameworks/
[12]: http://www.openframeworks.cc/versions/preRelease_v0.062/of_preRelease_v0062_win_cb_FAT.zip
[13]: http://www.openframeworks.cc/versions/preRelease_v0.062/of_preRelease_v0062_vs2010_FAT.zip
[14]: http://www.openframeworks.cc/versions/preRelease_v0.062/of_preRelease_v0062_vs2008_FAT.zip
[15]: http://www.openframeworks.cc/versions/preRelease_v0.062/of_preRelease_v0062_osxSL_FAT.zip
[16]: http://www.openframeworks.cc/versions/preRelease_v0.062/of_preRelease_v0062_osx_FAT.zip
[17]: http://www.openframeworks.cc/versions/preRelease_v0.062/of_preRelease_v0062_linux_FAT.tar.gz
[18]: http://www.openframeworks.cc/versions/preRelease_v0.062/of_preRelease_v0062_linux64_FAT.tar.gz
[19]: http://www.openframeworks.cc/versions/preRelease_v0.062/of_preRelease_v0062_iphone_FAT.zip
[20]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_vs2008.zip
[21]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_vs2008_FAT.zip
[22]: http://www.openframeworks.cc/versions/preRelease_v0.06/of_preRelease_v0.06_win32_cb.zip
[23]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_win_cb.zip
[24]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_win_cb_FAT.zip
[25]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_osx.zip
[26]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_osx_FAT.zip
[27]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_osxSL.zip
[28]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_osxSL_FAT.zip
[29]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_linux.tar.gz
[30]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_linux_FAT.tar.gz
[31]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_linux64.tar.gz
[32]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_linux64_FAT.tar.gz
[33]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_all.tar.gz
[34]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_all.zip
[35]: http://www.openframeworks.cc/versions/preRelease_v0.061/of_preRelease_v0061_iPhone_FAT.zip
[36]: http://www.openframeworks.cc/openframeworks-changelog
[37]: http://personal-editor.com/openframeworks.cc/license
[38]: http://www.openframeworks.cc/versions/preRelease_v0.06/of_preRelease_v0.06_win32_VS2008.zip
[39]: http://www.openframeworks.cc/versions/preRelease_v0.06/of_preRelease_v0.06_win32_VS2008_FAT.zip
[40]: http://www.openframeworks.cc/versions/preRelease_v0.06/of_preRelease_v0.06_win32_cb_FAT.zip
[41]: http://www.openframeworks.cc/versions/preRelease_v0.06/of_preRelease_v0.06_xcode.zip
[42]: http://www.openframeworks.cc/versions/preRelease_v0.06/of_preRelease_v0.06_xcode_FAT.zip
[43]: http://www.openframeworks.cc/forum/viewtopic.php?f=4&t=2749&p=14925
[44]: http://www.openframeworks.cc/versions/preRelease_v0.06/of_preRelease_v0.06_linux_cb.tar.gz
[45]: http://www.openframeworks.cc/versions/preRelease_v0.06/of_preRelease_v0.06_linux_cb_FAT.tar.gz
[46]: http://www.openframeworks.cc/versions/preRelease_v0.06/of_preRelease_v0.06_linux64_cb.tar.gz
[47]: http://www.openframeworks.cc/versions/preRelease_v0.06/of_preRelease_v0.06_linux64_cb_FAT.tar.gz
[48]: http://www.openframeworks.cc/versions/preRelease_v0.06/of_preRelease_v0.06_iphone.zip
[49]: http://www.openframeworks.cc/forum/viewforum.php?f=13
[50]: http://www.openframeworks.cc/versions/preRelease_v0.05/of_preRelease_v0.05_windows_VS.zip
[51]: http://www.openframeworks.cc/versions/preRelease_v0.05/of_preRelease_v0.05_windows_VS_FAT.zip
[52]: http://www.openframeworks.cc/versions/preRelease_v0.05/of_preRelease_v0.05_windows_cb.zip
[53]: http://www.openframeworks.cc/versions/preRelease_v0.05/of_preRelease_v0.05_windows_cb_FAT.zip
[54]: http://www.openframeworks.cc/versions/preRelease_v0.05/of_preRelease_v0.05_windows_exampleApps.zip
[55]: http://www.openframeworks.cc/versions/preRelease_v0.05/of_preRelease_v0.05_xcode.zip
[56]: http://www.openframeworks.cc/versions/preRelease_v0.05/of_preRelease_v0.05_xcode_FAT.zip
[57]: http://www.openframeworks.cc/versions/preRelease_v0.05/of_preRelease_v0.05_osx_exampleApps.zip
[58]: http://www.openframeworks.cc/versions/preRelease_v0.05/of_preRelease_v0.05_linux_cb.tar.gz
[59]: http://www.openframeworks.cc/versions/preRelease_v0.05/of_preRelease_v0.05_linux_cb_FAT.tar.gz
[60]: http://www.openframeworks.cc/versions/preRelease_v0.05/of_preRelease_v0.05_linux_binaryExamples.tar.gz
[61]: http://openframeworks.cc/versions/preRelease_v0.04/of_preRelease_v0.04_vs.zip
[62]: http://openframeworks.cc/versions/preRelease_v0.04/of_preRelease_v0.04_devcpp.zip
[63]: http://openframeworks.cc/versions/preRelease_v0.04/of_preRelease_v0.04_codewarrior.zip
[64]: http://openframeworks.cc/versions/preRelease_v0.04/of_preRelease_v0.04_xcode.zip
[65]: http://openframeworks.cc/versions/preRelease_v0.04/of_preRelease_v0.04_linux_commandLine.tar.gz
[66]: http://openframeworks.cc/versions/preRelease_v0.04/of_preRelease_v0.04_linux_codeBlocks.tar.gz
[67]: http://openframeworks.cc/changelog-004
[68]: http://openframeworks.cc/download-v003
[69]: http://openframeworks.cc/download002
[70]: http://openframeworks.cc/download001


