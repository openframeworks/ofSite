<%page args="active"/>

<div id="head">

		<div id="head-left">
			<a href="${bf.config.site.url}" class="nohover"><img src="${bf.config.site.url}/images/ofw-logo.png" border="0" alt="openFrameworks" /></a>
		</div>

		<div id="head-right">
		<ul>
		
	        <li><a href="${bf.config.site.url}/about" class="${'active' if active=='about' else ''}">about</a></li>
	        <!--a href="${bf.config.site.url}/setup" >setup</a> &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;-->
	        <li><a href="${bf.config.site.url}/download" class="${'active' if active=='download' else ''}" >download</a></li>
	        <li><a href="${bf.config.site.url}/docs" class="${'active' if active=='docs' else ''}">documentation</a></li>
	        <li><a href="${bf.config.site.url}/gallery" class="${'active' if active=='gallery' else ''}">gallery</a></li>
	        <li><a href="${bf.config.site.url}/community" class="${'active' if active=='community' else ''}">community</a></li> 
		</ul>
		
		<ul class="menu-externals">
			<!--li><a href="${bf.config.site.url}">Main Site</a></li-->
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://forum.openframeworks.cc/index.php" target="_blank">forum</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://ofxaddons.com" target="_blank">addons</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://wiki.openframeworks.cc/" target="_blank">wiki</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://github.com/openframeworks/openFrameworks" target="_blank">github</a></li>
		</ul>
			<!--form method="get" id="searchform" action="/index.php">
			<input type="text" value="" name="s" id="s" class="search_input" /> <input type="submit" value="Search" class="search_button"/>
			</form-->
		</div>
</div><!-- head -->


<!--hr class="header"/-->
<!--div id="nav">
    <div id="nav-menu">
	    <a href="${bf.config.site.url}/about" title="about" >about</a> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
	    <a href="${bf.config.site.url}/download" title="download" >download</a> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
	    <a href="${bf.config.site.url}/docs">documentation</a> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
	    <a href="${bf.config.site.url}/gallery" title="gallery" >gallery</a> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
	    <a href="${bf.config.site.url}/community" title="community" >community</a> 
	</div>
</div--><!-- nav -->
