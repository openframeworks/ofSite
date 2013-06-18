<%inherit file="_templates/home.mako" />

<div class="page-left-medium">
	<p>
		<!-- OF video -->
		<iframe src="http://player.vimeo.com/video/921725?title=0&amp;byline=0&amp;portrait=0" width="550" height="415" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
	</p>
</div>

<div class="page-right-narrow">
    <div class="home-links">
        <h2>openFrameworks is an open source C++ toolkit for creative coding.</h2>

        <h3><a href="download/">download</a></h3>
        <p>Grab the most recent release (${bf.config.currentVersion}) and follow the setup guide to get openFrameworks running.</p>
        
	<h3><a href="documentation/">documentation</a></h3>
	<p>Reference for openFrameworks classes, functions and addons. For guides and tutorials, see the <a href="http://wiki.openframeworks.cc/">wiki</a>.</p>
        
	<h3><a href="http://forum.openframeworks.cc/">forum</a></h3>
	<p>The forum is a place to meet other people working with openFrameworks. It's a place to share your work, or find help solving problems.</p>
    </div>
</div>

<div class="page-wide">

    <hr/>

    <div class="tweet">
        <h3>twitter</h3>
        <div class="tweets"></div>
    </div>
    
    <div id="forum"></div>
    
    <div id="github"></div>

    <br class="clearboth">
    <hr/>
</div>

<div class="page-wide">
                
    <div id="flickr"></div>
    <div id="vimeo"></div>

    <br class="clearboth">
</div>

