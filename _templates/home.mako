## -*- coding: utf-8 -*-
<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}

    <script type="text/javascript" src="http://www.google.com/jsapi"></script>
    <script type="text/javascript" src="${bf.config.site.url}/js/encoder.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.cycle/3.03/jquery.cycle.all.min.js"></script>
    <script type="text/javascript" src="${bf.config.site.url}/js/socialwidgets.js"></script>
    <script type="text/javascript" src="${bf.config.site.url}/js/home.js"></script>

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
            ${next.body()}
      </div>
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>

<%def name="header()">
  <%include file="header.mako"  args="active='home'"/>
</%def>
