<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
  </head>
  <body>
    <div id="content" class="tutorial">
      ${self.header()}
      <div id="body-wrap">	
	    <div class="page-wide">            
            <h1>tutorials</h1>
        </div><!-- End Page Wide -->
		    
            % for category in categories.keys():
                %if len(categories[category])!=0:
	                <div class="page-wide sectiontitle">  
                        <h2>${category}</h2>
                    </div><!-- End Page Wide -->
	                <div class="page-wide">  
                        <ul class="articles">
                        % for article in categories[category]:
                            <li><span class="external-dot"> ></span>&nbsp;<a href="/tutorials/${category}/${article.file}">${article.title}</a></br>
                                <p>${article.summary}</p>
                            </li>
                        % endfor
                        </ul>
                    </div><!-- End Page Wide -->
                % endif
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
  <%include file="header.mako" args="active='tutorials'" />
</%def>


