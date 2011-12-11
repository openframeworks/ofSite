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
            
		    <div class="page-left-split">
                <h1>documentation</h1>
			    <p>This page is the reference for the OF core and the included addons. There are also additional libraries that you can find on the addons page. This api is a work in progress and any corrections, additions or comments are very welcome!</p>
			    <p>You can contribute to this documentation from github by following this <a href="https://github.com/openframeworks/openFrameworks/wiki/Contributing-documentation">instructions</a> 
			    <p>This document refers to version <strong>007</strong></p>
		    </div>
		    

		    <div class="page-right-narrow">
		        <!--p>
			        <strong>Show advanced?</strong><br />
				        <a href="documentation?adv=yes">yes</a> / no
		        </p-->
		        <div id="docs-ebook">
		        <h2>download</h2>
		        <p><a href="../epub/ofReference.zip"><strong>html</strong></a></p>
		        <p><a href="../epub/ofReference.pdf"><strong>pdf</strong></a></p>
		        <p><a href="../epub/ofReference.epub"><strong>epub</strong></a></p>
		        <p><a href="../epub/ofReference.mobi"><strong>mobi (kindle)</strong></a></p>
		        </div>
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
            <div class="docs_col">
                % for block in column:
                    <%include file="docs_index_block.mako" args="block=block" />
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
            <div class="docs_col">
                % for block in column:
                    <%include file="docs_index_block.mako" args="block=block" />
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
  <%include file="header.mako" args="active='docs'" />
</%def>


