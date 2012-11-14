<%page args="active"/>

<div id="head">

		<div id="head-left">
			<a href="${bf.config.site.url}" class="nohover"><img src="${bf.config.site.url}/images/ofw-logo.png" border="0" alt="openFrameworks" /></a>
		</div>

		<div id="head-right">
		<ul>
	        <li><a href="${bf.config.site.url}/about" class="${'active' if active=='about' else ''}">about</a></li>
	        <li><a href="${bf.config.site.url}/download" class="${'active' if active=='download' else ''}" >download</a></li>
	        <li><a href="${bf.config.site.url}/documentation" class="${'active' if active=='documentation' else ''}">documentation</a></li>
	        <li><a href="${bf.config.site.url}/tutorials" class="${'active' if active=='tutorials' else ''}">tutorials</a></li>
	        <li><a href="${bf.config.site.url}/gallery" class="${'active' if active=='gallery' else ''}">gallery</a></li>
	        <li><a href="${bf.config.site.url}/community" class="${'active' if active=='community' else ''}">community</a></li> 
	        <li><a href="${bf.config.site.url}/ofbuild.html" class="${'active' if active=='development' else ''}" >development</a></li>
		</ul>
		
		<ul class="menu-externals">
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://forum.openframeworks.cc/index.php" target="_blank">forum</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://ofxaddons.com" target="_blank">addons</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://wiki.openframeworks.cc/" target="_blank">wiki</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://github.com/openframeworks/openFrameworks" target="_blank">github</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://openframeworks.cc/list-info" target="_blank">mailing list</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://webchat.freenode.net?channels=openframeworks&uio=MT1mYWxzZSY5PXRydWUmMTE9Mjk39" target="_blank">IRC</a></li>
		</ul>
		
			<!--form method="get" id="searchform" action="/index.php">
			<input type="text" value="" name="s" id="s" class="search_input" /> <input type="submit" value="Search" class="search_button"/>
			</form-->
			<!--form method="post" action="http://scripts.dreamhost.com/add_list.cgi">
                <input type="hidden" name="list" value="list@openframeworks.cc" />
                <input type="hidden" name="domain" value="openframeworks.cc" />
                <input type="hidden" name="url" value="http://openframeworks.cc/list-info/subscribe.html"  />
                <input type="hidden" name="unsuburl" value="http://openframeworks.cc/list-info/unsubscribe.html" />
                <input type="hidden" name="alreadyonurl" value="http://openframeworks.cc/list-info/already.html" />
                <input type="hidden" name="notonurl" value="http://openframeworks.cc/list-info/not.html" />
                <input type="hidden" name="invalidurl" value="http://openframeworks.cc/list-info/invalid.html" />
                <input type="hidden" name="emailconfirmurl" value="http://openframeworks.cc/list-info/confirm.html" />
                <input type="hidden" name="emailit" value="1" />
                name: <input name="name" /> <br />
                email: <input name="email" /><br />
                <span class='but'><input type="submit" name="submit" value="subscribe" /></span> <br/ >
                <span class='but'><input type="submit" name="unsub" value="unsubscribe" /></span>
            </form-->
        <ul class="submenu">
            <li>english</li>
            <li>/</li>
            <li><a href="http://openframeworks.jp">japanese</a></li>
        </ul>
		</div>
</div><!-- head -->

