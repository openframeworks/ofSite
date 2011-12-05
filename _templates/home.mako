<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}

    <script language="javascript" src="${bf.config.site.url}/js/jquery.tweet.js" type="text/javascript"></script>
    <script src="http://www.google.com/jsapi?key=AIzaSyA5m1Nc8ws2BbmPRwKu5gFradvD_hgq6G0" type="text/javascript"></script>
    <script type="text/javascript" src="${bf.config.site.url}/js/encoder.js"></script>
    <script type="text/javascript" src="http://cloud.github.com/downloads/malsup/cycle/jquery.cycle.all.latest.js"></script>
    <script type="text/javascript"  src="${bf.config.site.url}/js/home.js">   </script>
  </head>
  <body>
    <div id="content">
      ${self.header()}
      <div id="body-wrap">
      		<div class="page-left-medium">
                  ${next.body()}
            </div>
             
            <div class="page-right-narrow">
                <br/><br/><br/>
      		    <h2>openFrameworks is an open source C++ toolkit for creative coding.</h2>
      		    <br/>
                <h3><a href="download/">download</a></h3>
                <h3><a href="docs/">documentation</a></h3>
                <h3><a href="http://forum.openframeworks.cc">forum</a></h3>
                <h3><a href="http://github.com/openframeworks/openFrameworks">code</a></h3>
            </div>
            
            <div class="page-wide">
            
                <hr/>
                
                <!--h3><a href="http://twitter.com/#!/search/openframeworks">twitter</a></h3-->
                <div class="tweet"></div>
                
                <!--h3><a href="http://forum.openframeworks.cc">forum</a></h3-->
                <div id="forum"></div>
                
                <!--h3><a href="http://gihub.com/openframeworks/openFrameworks">github</a></h3-->
                <div id="github"></div>

                <br class="clearboth">
                <hr/>
            </div>
            
            <div class="page-wide">
                            
                <!--flickr-->
                <div id="flickr"></div>

                <br class="clearboth">
                <hr/>
            </div>
      </div>
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
  <%include file="header.mako"  args="active='home'"/>
</%def>
<%def name="footer()">
  <%include file="footer.mako" />
</%def>
