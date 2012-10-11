<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
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

            
            <h1>reference</h1>
		    <div class="page-left-split">
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
		        <p><a href="${bf.config.site.url}/epub/ofReference.zip"><strong>html</strong></a></p-->
		        <!--p><a href="${bf.config.site.url}/epub/ofReference.pdf"><strong>pdf</strong></a></p>
		        <p><a href="${bf.config.site.url}/epub/ofReference.epub"><strong>epub</strong></a></p>
		        <p><a href="${bf.config.site.url}/epub/ofReference.mobi"><strong>mobi (kindle)</strong></a></p-->
		        <!--/div-->
		    </div>

    	</div>


    	<div class="page-wide">
    	    <hr/>
            <div class="page-left-split">
			    <h2>core</h2>
            </div>
        </div><!-- End Page Wide -->

    	<div class="page-wide">
            % for column in columns:
            <div class="documentation_col">
                % for block in column:
                    <%include file="documentation_index_block.mako" args="block=block" />
                % endfor
            </div>
            % endfor
        </div><!-- End Page Wide -->
        
    	<div class="page-wide">
    	    <hr/>
            <div class="page-left-split">
		        <h2>addons</h2>
            </div>
        </div><!-- End Page Wide -->

    	<div class="page-wide">
            % for column in addons_columns:
            <div class="documentation_col">
                % for block in column:
                    <%include file="documentation_index_block.mako" args="block=block" />
                % endfor
            </div>
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


