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
        <div id="page-title">
		    <h1>documentation</h1>
    	</div>

	    <div class="page-wide">

		    <div class="page-left-split">
			    <p>This page the start documentation for the main OF api. There are also additional libraries that you can find on the addons page. This api is a work in progress and any corrections, additions or comments are very welcome!</p>
			    <p>This document refers to version <strong>0.06</strong></p>
		    </div>

		    <!--div class="page-left-right">
		        <p>
			        <strong>Show advanced?</strong><br />
				        <a href="documentation?adv=yes">yes</a> / no
		        </p>
		    </div-->

    	</div>



    	<div class="page-wide">

          <div id="main_block">
            <div id="prose_blocka">
            % for column in columns:
            <div class="docs_col">
                % for block in column:
                    <%include file="docs_index_block.mako" args="block=block" />
                % endfor
            </div>
            % endfor
            </div><!-- End Prose Block -->
          </div><!-- End Main Block -->
          
        </div><!-- End Page Wide -->
              
      </div><!-- End Body Wrap -->
      
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>



<%def name="head()">
  <%include file="head.mako" />
</%def>


<%def name="header()">
  <%include file="header.mako" />
</%def>


<%def name="footer()">
  <%include file="footer.mako" />
</%def>

