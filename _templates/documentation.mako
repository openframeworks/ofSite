## -*- coding: utf-8 -*-
<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/masonry/2.1.08/jquery.masonry.min.js"></script>
    <script src="${bf.config.site.url}/js/documentation_index.js"></script>
    <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-43083059-1', 'auto');
  ga('send', 'pageview');

</script>
  </head>
  <body>
    <div id="content">
      ${self.header()}
      <div id="body-wrap">	
	    <div class="page-wide">
	        <div class="page-left-split">
                <!--ul class="submenu">
                    <li><a href="/documentation">reference</a></li>
                    <li><a href="/tutorials">tutorials</a></li>
                </ul-->

                
                <h1 class="documentation">reference</h1> 
                <!--ul class="docsadvanced">
                    <li><a href="/documentation" class="active">basic</a></li> 
                    <li><a href="/doxygen/annotated.html">advanced</a></li> 
                </ul-->
            </div>  
		    <div class="page-right-narrow">
			    <p>This page is the reference for the openFrameworks core and included addons. There are also <a href="http://ofxaddons.com/">contributed addons</a>. The openFrameworks API is constantly evolving: any corrections, additions or comments are very welcome!</p>
			    <p>You can contribute to this documentation from GitHub by following the  <a href="/tutorials/developers/003_contributing_to_the_documentation.html">instructions in the documentation tutorial.</a> 
			    <p>This documentation refers to the most recent release, version <strong>${bf.config.currentVersion}</strong>.</p>
		    </div>
	   </div>
	   
	    <div class="page-wide">
		    

		    <div class="page-right-narrow">
		        <!--p>
			        <strong>Show advanced?</strong><br />
				        <a href="documentation?adv=yes">yes</a> / no
		        </p-->
		        <!--div id="documentation-ebook">
		        <h2>download</h2>
		        <p><a href="${bf.config.site.url}/epub/ofDocs.zip"><strong>html</strong></a></p>
		        <!--p><a href="${bf.config.site.url}/epub/ofReference.pdf"><strong>pdf</strong></a></p>
		        <p><a href="${bf.config.site.url}/epub/ofReference.epub"><strong>epub</strong></a></p>
		        <p><a href="${bf.config.site.url}/epub/ofReference.mobi"><strong>mobi (kindle)</strong></a></p-->
		        <!--/div-->
		    </div>

    	</div>


    	<div class="page-wide sectiontitle">
		    <h2>core</h2> 
		    <a class="hide_core_functions">hide functions</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="collapse_core">expand all</a>
        </div><!-- End Page Wide -->

    	<div class="page-wide core">
            % for module, classes in sorted(core.items(), key=lambda module: module):
                <%include file="documentation_index_block.mako" args="module=module, classes=classes, show_header=True, subtitle=module_subtitles[module]" />
            % endfor
        </div><!-- End Page Wide -->
        
    	<div class="page-wide">
        </div><!-- End Page Wide -->
        
    	<div class="page-wide sectiontitle">
		    <h2>addons</h2> <a class="hide_addons_functions">hide functions</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="collapse_addons">expand all</a>
        </div><!-- End Page Wide -->

    	<div class="page-wide addons">
            % for module, classes in sorted(addons.items(), key=lambda module: module):
                <%include file="documentation_index_block.mako" args="module=module, classes=classes, show_header=True, subtitle=module_subtitles[module]" />
            % endfor
        </div><!-- End Page Wide -->
              
      </div><!-- End Body Wrap -->
      
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>

<%def name="header()">
  <%include file="header.mako" args="active='documentation'" />
</%def>


