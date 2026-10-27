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
<%
    # 0.12.2 renamed the release packages (linux_64_gcc10, vs_2022_64, ...), see openFrameworks#8614
    import re
    _v = [int(x) for x in re.findall(r'\d+', currentVersion)[:3]]
    newPackageNames = _v >= [0, 12, 2]
%>
<div id="body-wrap">
	<div class="page-left-verywide">
	    
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
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_osx_release.tar.gz">osx</a></p><br/>
	        <h3>${of.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/xcode">xcode</a></p>
	        <p><a href="../setup/vscode">vs code</a></p>
	        <p><a href="../setup/emscripten">emscripten</a></p>
        </div>

        <div id="download-latest-platform">
	        <h2>linux</h2>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        % if newPackageNames:
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_linux_64_gcc10_release.tar.gz">linux 64bit</a></p>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_linux_arm64_gcc10_release.tar.gz">linux arm64</a></p>
	        % else:
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_linux64_gcc6_release.tar.gz">linux gcc6 or later</a></p>
	        % endif
	        <br/>
	        <h3>${of.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/linux-install">linux install</a></p>
	        <p><a href="../setup/vscode">vs code</a></p>
	        <p><a href="../setup/emscripten">emscripten</a></p>
        </div>

        <div id="download-latest-platform-last">
	        <h2>windows</h2>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        % if newPackageNames:
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_vs_2022_64_release.zip">visual studio 2022</a></p>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_vs_2022_64_arm64_arm64ec_release.zip">visual studio 2022 (x64, arm64, arm64ec)</a></p>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_vs_2026_64_release.zip">visual studio 2026</a></p>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_vs_2026_64_arm64_arm64ec_release.zip">visual studio 2026 (x64, arm64, arm64ec)</a></p>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_msys2_ucrt64_release.zip">msys2 ucrt64</a></p>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_msys2_clangarm64_release.zip">msys2 clangarm64</a></p><br/>
	        % else:
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_vs_64_release.zip
">visual studio</a></p>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_msys2_mingw64_release.zip">msys2 64bit</a></p><br/>
	        % endif
	        <h3>${of.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/vs">visual studio</a></p>
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
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_ios_release.tar.gz">xcode</a></p><br/>
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
	        % if newPackageNames:
	        <h2>raspberry&nbsp;pi 32bit</h2>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_linux_armv7l_rpi_gcc10_release.tar.gz">armv7 (pi 2 and newer)</a></p>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_linux_armv6l_rpi_gcc10_release.tar.gz">armv6 (pi zero / 1)</a></p><br/>
	        % else:
	        <h2>linux&nbsp;armv6</h2>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_linuxarmv6l_release.tar.gz">linux armv6</a></p><br/>
	        % endif
	        <h3>${of.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/raspberrypi/raspberry-pi-getting-started/">raspberry pi</a></p>
        </div>

        <div id="download-latest-platform-last">
	        % if newPackageNames:
	        <h2>raspberry&nbsp;pi 64bit</h2>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_linux_aarch64_rpi_gcc10_release.tar.gz">aarch64 (raspberry pi os 64bit)</a></p><br/>
	        % else:
	        <h2>linux&nbsp;arm64</h2>
	        <h3>${of.msg("download_openframeworks", locals())}</h3>
	        <p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_linuxaarch64_release.tar.gz">linux arm64</a></p><br/>
	        % endif
	        <h3>${of.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/raspberrypi/raspberry-pi-getting-started/">raspberry pi</a></p>
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
