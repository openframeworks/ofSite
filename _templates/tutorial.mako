## -*- coding: utf-8 -*-
<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
    <script src="${bf.config.site.url}/js/jquery.columnizer.min.js"></script>
    <script src="${bf.config.site.url}/js/documentation.js"></script>
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
	    <div class="page-wide-tutorial">
            <!--ul class="submenu">
                <li><a href="/documentation">reference</a></li>
                <li><a href="/tutorials">tutorials</a></li>
            </ul-->
    	    <h1>${article.title}</h1>
    	    <span class="article_meta">${article.date}&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<a href="${article.author_site}">${article.author}</a></span><br/>
    	    <div class="article">
    	    % if article.type == 'markdown':
    	    <%self:filter chain="markdown_template">
${article.body}
    		</%self:filter>
    		% else:
        		${article.body}
    		% endif
    		</div>
            
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


