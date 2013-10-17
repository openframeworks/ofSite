## -*- coding: utf-8 -*-
<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
    <script src="http://www.google.com/jsapi?key=AIzaSyA5m1Nc8ws2BbmPRwKu5gFradvD_hgq6G0" type="text/javascript"></script>
    <script type="text/javascript" src="${bf.config.site.url}/js/encoder.js"></script>
    <script type="text/javascript"  src="${bf.config.site.url}/js/gallery.js">   </script>
  </head>
  <body>
    <div id="content">
      ${self.header()}
      <div id="body-wrap">
            <div class="page-wide">
    	        <h1>gallery</h1>
                <h3>Curated by <a href="http://creativeapplications.net">creativeapplications.net</a></h3>
                <br/><br/>
                <div id="gallery"></div>
            </div>
      </div>
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>
<%def name="header()">
  <%include file="header.mako" args="active='gallery'"/>
</%def>
