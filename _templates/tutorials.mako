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

            
            <h1>tutorials</h1>
		    


        	<div class="submenucol-left">
        	    <ul class="categories">
                % for category in categories:
                    <li><a href="/tutorials/${category}">${category}</a></li>
                % endfor
                </ul>
            </div><!-- End Page Wide -->

        	<div class="submenucol-right">
               <p>This section contains tutorials about specific tasks in openFrameworks. If you want to contribute a tutorial, fork the <a href="http://github.com/openFrameworks/ofSite">ofSite</a> repository in github and add your tutorial in markdown format inside the _tutorials folder.</p>
            </div><!-- End Page Wide -->
        
    	

    	</div>
              
      </div><!-- End Body Wrap -->
      
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>

<%def name="header()">
  <%include file="header.mako" args="active='tutorials'" />
</%def>


