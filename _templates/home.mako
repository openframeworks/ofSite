<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}

    <script language="javascript" src="${bf.config.site.url}/js/jquery.tweet.js" type="text/javascript"></script>
    <script type='text/javascript'>
         jQuery(function($){
            $(".tweet").tweet({
              avatar_size: 32,
              count: 9,
              query: "openFrameworks",
              loading_text: "searching twitter...",
              template: "{avatar} {text}"
            });
          });
    </script>
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
                <h3><a href="http://twitter.com/#!/search/openframeworks">twitter</a></h3>
                <div class="tweet"></div>
                
                <br/><br/><br/>
                <h3><a href="http://forum.openframeworks.cc">forum</a></h3>
                <div id="forum"></div>
                
                <br/><br/><br/>
                <h3><a href="http://gihub.com/openframeworks/openFrameworks">github</a></h3>
                <div id="github"></div>
            
                <!--br/><br/><br/-->
                <!-- OF on the web -->
                <!--img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/label_follow.gif" width="78" height="31" alt="watch me" /-->
                <!--h2>openFrameworks on the web</h2>
                <div id="home_follow">
                    <img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/icon_twitter.gif" width="16" height="16" alt="twitter" /> 
                    <a href="http://twitter.com/openframeworks" title="openFrameworks on twitter">openFrameworks on twitter</a><br /><br />

                    <img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/icon_vimeo.gif" width="16" height="16" alt="twitter" /> 
                    <a href="http://vimeo.com/tag:openframeworks" title="openFrameworks on vimeo">search on vimeo</a><br />
                    
                    <img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/icon_youtube.gif" width="16" height="16" alt="twitter" /> 
                    <a href="http://www.youtube.com/results?search_query=openframeworks&search=tag&search_sort=video_date_uploaded" title="openFrameworks on youtube">search on youtube</a><br />
                    <img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/icon_flickr.gif" width="16" height="16" alt="twitter" /> 
                    <a href="http://www.flickr.com/search/?q=openFrameworks&s=rec&z=t" title="openFrameworks on flickr">search on flickr</a><br />
                    
                    <img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/icon_twitter.gif" width="16" height="16" alt="twitter" /> 
                    <a href="http://search.twitter.com/search?q=openframeworks" title="openFrameworks search on twitter">search on twitter</a><br />
                </div-->
            
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
  <%include file="header.mako" />
</%def>
<%def name="footer()">
  <%include file="footer.mako" />
</%def>
