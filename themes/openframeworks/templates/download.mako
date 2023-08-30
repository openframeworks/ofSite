## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />
<%namespace name="of" file="of_helpers.tmpl"/>

<%block name="extra_head">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.cycle/3.03/jquery.cycle.all.min.js"></script>
<script type="text/javascript" src="/assets/js/donations_popup.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$('#myslides').cycle({
		speed: 1100,
		timeout: 2000
	});

	setupDonationsPopup()
});
</script>
</%block>



<%block name="content">
<div id="body-wrap">
	<div class="page-left-verywide">
	
    <hr/>
     <div id="download-nightly">
	    <h2>nightly builds</h2>
	    <p>0.12.0 is almost ready for release we recommend downloading the latest nightly builds from <a href="https://github.com/openframeworks/openFrameworks/releases/tag/nightly">Github Nightly Release</a></p>
    </div>
    
    <hr/>
    <div id="download-latest-header">

	    <h2>${currentVersion}</h2>
	    % if breaking:
	        <h3>${of.msg("breaking", locals())}  ${of.msg("please_see", locals())}</h3>
	    % else:
	        <h3>${of.msg("non_breaking", locals())}  ${of.msg("please_see", locals())}</h3>
	    % endif
	    <p>${of.msg("intro", locals())}</p>
    </div>

    <div id="download-bg-desktop">
        <div id="download-latest-platform">
	        <h2>osx</h2>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_osx_release.zip">osx</a></p><br/>
	        <h3>${of.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/xcode">xcode</a></p>
	        <p><a href="../setup/qtcreator">qt creator ${of.msg("(experimental)", locals())}</a></p>
	        <p><a href="../setup/emscripten">emscripten</a></p>
        </div>

        <div id="download-latest-platform">
	        <h2>linux</h2>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_linux64gcc6_release.tar.gz">linux gcc6 or later</a><i>&nbsp;(use nightly build at bottom of page)</i></p>
	        <br/>
	        <h3>${of.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/linux-install">linux install</a></p>
	        <p><a href="../setup/qtcreator">qt creator</a></p>
	        <p><a href="../setup/emscripten">emscripten</a></p>
        </div>

        <div id="download-latest-platform-last">
	        <h2>windows</h2>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_vs2017_release.zip">visual studio (2017-2022)</a></p>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_msys2_mingw32_release.zip">qt creator / msys2 32bit</a></p>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_msys2_mingw64_release.zip">qt creator / msys2 64bit</a></p><i>&nbsp;(use nightly build at bottom of page)</i><br/>
	        <h3>${of.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/vs">visual studio</a></p>
	        <p><a href="../setup/qtcreator">qt creator</a></p>
	        <p><a href="../setup/msys2">msys2</a></p>
        </div>
    </div>

    <div id="download-bg-mobile">
        <div id="download-latest-platform-title">
	        <h2>mobile</h2>
	        <p><em>${of.msg("mobile", locals())}</em></p>
        </div>

        <div id="download-latest-platform">
	        <h2>ios</h2>
	        <p><em>osx only</em></p><br/>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_ios_release.zip">xcode</a></p><br/>
	        <h3>${of.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/iphone">xcode</a></p>
        </div>
	<!-- 
        <div id="download-latest-platform-last">
	        <h2>android</h2>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_android_release.tar.gz">android</a></p><br/>
	        <h3>${of.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/android-studio">android studio</a></p>
        </div>
	-->
    </div>


    <div id="download-bg-armlinux">
        <div id="download-latest-platform-title">
	        <h2>linux arm</h2>
	        <p><em>${of.msg("linuxarm", locals())}</em></p>
        </div>

        <div id="download-latest-platform">
	        <h2>linux&nbsp;armv6</h2>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_linuxarmv6l_release.tar.gz">linux armv6</a></p><br/>
	        <h3>${of.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/Raspberry-Pi-Getting-Started.md">raspberry pi</a></p>
        </div>

        <div id="download-latest-platform-last">
	        <h2>linux&nbsp;armv7</h2>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_linuxarmv7l_release.tar.gz">linux armv7</a></p><br/>
	        <h3>${of.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/pandaboard">pandaboard</a></p>
	        <p><a href="../setup/armv7">generic armv7</a></p>
        </div>
    </div>

    <br class="clearboth"/>
    ${of.msg("instructions", locals())}
    <br />
    <br/>

    <div id="myslides">
    <img src="/download/0071_0.png" />
    <img src="/download/0071_1.png" />
    <img src="/download/0071_2.png" />
    <img src="/download/0071_3.png" />
    </div>

    <hr/>

    ${of.msg("other_releases", locals())}

    </div>
</div>
</%block>
