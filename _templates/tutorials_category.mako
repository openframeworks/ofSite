## -*- coding: utf-8 -*-
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
                % for lcategory in categories:
                    % if lcategory == category:
                        <li><a  class="active" href="/tutorials/${lcategory}">${lcategory}</a></li>
                    % else:
                        <li><a href="/tutorials/${lcategory}">${lcategory}</a></li>
                    % endif
                % endfor
                </ul>
            </div><!-- End Page Wide -->

        	<div class="submenucol-right">
        	    <ul class="articles">
                % for article in articles:
                    <li><span class="external-dot"> ></span>&nbsp;<a href="/tutorials/${category}/${article.file}">${article.title}</a></br>
                        <p>${article.summary}</p>
                    </li>
                % endfor
                </ul>
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


