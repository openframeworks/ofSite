<%page args="active"/>

<div id="head">

		<div id="head-left">
			<a href=".." class="nohover"><img src="../images/ofw-logo.png" border="0" alt="openFrameworks" /></a>
		</div>

		<div id="head-right">
		<ul>
		
	        <li><a href="../about" class="${'active' if active=='about' else ''}">about</a></li>
	        <li><a href="../download" class="${'active' if active=='download' else ''}" >download</a></li>
	        <li><a href="../docs" class="${'active' if active=='docs' else ''}">documentation</a></li>
	        <li><a href="../gallery" class="${'active' if active=='gallery' else ''}">gallery</a></li>
	        <li><a href="../community" class="${'active' if active=='community' else ''}">community</a></li> 
		</ul>
		
		<ul class="menu-externals">
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

