<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <script src="${bf.config.site.url}/js/jquery.masonry.min.js"></script>
    <script src="${bf.config.site.url}/js/documentation_index.js"></script>
  </head>
  <body>
    <div id="content">
      ${self.header()}
      <div id="body-wrap">	
	    <div class="page-wide">
            <!--ul class="submenu">
                <li><a href="/documentation">reference</a></li>
                <li><a href="/tutorials">tutorials</a></li>
            </ul-->

            
		    <div class="page-left-split">
            <h1>reference</h1>
			    <p>This page is the reference for the openFrameworks core and included addons. There are also <a href="http://ofxaddons.com/">contributed addons</a>. The openFrameworks API is constantly evolving: any corrections, additions or comments are very welcome!</p>
			    <p>You can contribute to this documentation from GitHub by following these <a href="https://github.com/openframeworks/openFrameworks/wiki/Contributing-documentation">instructions.</a> 
			    <p>This documentation refers to the most recent release, version <strong>${bf.config.currentVersion}</strong>.</p>
		    </div>
		    

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
		    <a class="hide_core_functions">hide functions</a>
        </div><!-- End Page Wide -->

    	<div class="page-wide core">
            % for column in columns:
            <!--div class="documentation_col"-->
                % for block in column:
                    <%include file="documentation_index_block.mako" args="block=block" />
                % endfor
            <!--/div-->
            % endfor
        </div><!-- End Page Wide -->
        
    	<div class="page-wide">
        </div><!-- End Page Wide -->
        
    	<div class="page-wide sectiontitle">
		    <h2>addons</h2> <a class="hide_addons_functions">hide functions</a>
        </div><!-- End Page Wide -->

    	<div class="page-wide addons">
            % for column in addons_columns:
            <!--div class="documentation_col"-->
                % for block in column:
                    <%include file="documentation_index_block.mako" args="block=block" />
                % endfor
            <!--/div-->
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


