## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />

<%block name="extra_head">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.cycle/3.03/jquery.cycle.all.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$('#myslides').cycle({
		speed: 1100,
		timeout: 2000
	});
});
</script>
</%block>



<%block name="content">
<div id="body-wrap">
	<div class="page-left-verywide">
    <div id="download-latest-header">

	    <h2>${currentVersion}</h2>
	    % if breaking:
	        <h3>${self.msg("breaking", locals())} ${self.msg("please_see", locals())}</h3>
	    % else:
	        <h3>${self.msg("non_breaking", locals())} ${self.msg("please_see", locals())}</h3>
	    % endif
	    <p>${self.msg("intro", locals())}</p>
    </div>

    <div id="download-bg-desktop">
        <div id="download-latest-platform">
	        <h2>osx</h2>
	        <h3>${self.msg("download_openframeworks", locals())}</h3>
	        <p><a href="http://www.openframeworks.cc/versions/v${currentVersion}/of_v${currentVersion}_osx_release.zip">osx</a></p><br/>
	        <h3>${self.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/xcode">xcode</a></p>
	        <p><a href="../setup/qtcreator">qt creator</a></p>
	        <p><a href="../setup/emscripten">emscripten</a></p>
        </div>

        <div id="download-latest-platform">
	        <h2>linux</h2>
	        <h3>${self.msg("download_openframeworks", locals())}</h3>
	        <p><a href="http://www.openframeworks.cc/versions/v${currentVersion}/of_v${currentVersion}_linux_release.tar.gz">linux 32bit</a> / <a href="http://www.openframeworks.cc/versions/v${currentVersion}/of_v${currentVersion}_linux64_release.tar.gz">linux 64bit</a></p><br/>
	        <h3>${self.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/linux-install">linux install</a></p>
	        <p><a href="../setup/qtcreator">qt creator</a></p>
	        <p><a href="../setup/linux-eclipse">eclipse</a></p>
	        <p><a href="../setup/emscripten">emscripten</a></p>
        </div>

        <div id="download-latest-platform-last">
	        <h2>windows</h2>
	        <h3>${self.msg("download_openframeworks", locals())}</h3>
	        <p><a href="http://www.openframeworks.cc/versions/v${currentVersion}/of_v${currentVersion}_vs_release.zip">visual studio (2015)</a></p>
	        <p><a href="http://www.openframeworks.cc/versions/v${currentVersion}/of_v${currentVersion}_msys2_release.zip">qt creator / msys2</a></p><br/>
	        <h3>${self.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/vs">visual studio</a></p>
	        <p><a href="../setup/qtcreator">qt creator</a></p>
	        <p><a href="../setup/msys2">msys2</a></p>
        </div>
    </div>

    <div id="download-bg-mobile">
        <div id="download-latest-platform-title">
	        <h2>mobile</h2>
	        <p><em>${self.msg("mobile", locals())}</em></p>
        </div>

        <div id="download-latest-platform">
	        <h2>ios</h2>
	        <p><em>osx only</em></p><br/>
	        <h3>${self.msg("download_openframeworks", locals())}</h3>
	        <p><a href="http://www.openframeworks.cc/versions/v${currentVersion}/of_v${currentVersion}_ios_release.zip">xcode</a></p><br/>
	        <h3>${self.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/iphone">xcode</a></p>
        </div>

        <div id="download-latest-platform-last">
	        <h2>android</h2>
	        <h3>${self.msg("download_openframeworks", locals())}</h3>
	        <p><a href="http://www.openframeworks.cc/versions/v${currentVersion}/of_v${currentVersion}_android_release.tar.gz">android</a></p><br/>
	        <h3>${self.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/android-eclipse">eclipse + ADT</a></p>
	        <p><a href="../setup/android-studio">android studio</a></p>
        </div>
    </div>


    <div id="download-bg-armlinux">
        <div id="download-latest-platform-title">
	        <h2>linux arm</h2>
	        <p><em>${self.msg("linuxarm", locals())}</em></p>
        </div>

        <div id="download-latest-platform">
	        <h2>linux&nbsp;armv6</h2>
	        <h3>${self.msg("download_openframeworks", locals())}</h3>
	        <p><a href="http://www.openframeworks.cc/versions/v${currentVersion}/of_v${currentVersion}_linuxarmv6l_release.tar.gz">linux armv6</a></p><br/>
	        <h3>${self.msg("setup_guides", locals())}</h3>
	        <p><a href="../setup/raspberrypi">raspberry pi</a></p>
        </div>

        <div id="download-latest-platform-last">
	        <h2>linux&nbsp;armv7</h2>
	        <h3>${self.msg("download_openframeworks", locals())}</h3>
	        <p><a href="http://www.openframeworks.cc/versions/v${currentVersion}/of_v${currentVersion}_linuxarmv7l_release.tar.gz">linux armv7</a></p><br/>
	        <h3>${self.msg("setup_guides", locals())}</h3>
		    <p><a href="../setup/raspberrypi">raspberry pi</a></p>
	        <p><a href="../setup/pandaboard">pandaboard</a></p>
	        <p><a href="../setup/armv7">generic armv7</a></p>
        </div>
    </div>

    <br class="clearboth"/>
    ${self.msg("instructions", locals())}
    <br />
    <br/>

    <div id="myslides">
    <img src="/download/0071_0.png" />
    <img src="/download/0071_1.png" />
    <img src="/download/0071_2.png" />
    <img src="/download/0071_3.png" />
    </div>

    <hr/>

    <iframe src="http://ci.openframeworks.cc/nightlybuilds.html" style="width:100%; height:370px; border: none" scrolling="no" seamless="seamless"></iframe>

    <hr/>

    ${self.msg("other_releases", locals())}

    </div>
</div>
</%block>

<%def name="msg(key, locals)"><%
    import importlib
    import sys
    import pathlib
    import re
    sys.path.append( "messages" )
    has_translation = locals["pageargs"]["exists"]("messages/of_messages_"+locals["pageargs"]["lang"]+".py")
    messages = {}
    if has_translation:
        messages = importlib.import_module("of_messages_"+locals["pageargs"]["lang"])
    messages_en = importlib.import_module("of_messages_en")
    msg = ""
    try:
        msg = messages.MESSAGES[key]
    except:
        msg = messages_en.MESSAGES[key]
    search = re.findall(r'\$\{([^}]*)\}', msg)
    for match in search:
        msg = msg.replace('${' + match + '}', locals["pageargs"][match.strip()])
%>${msg}</%def>
