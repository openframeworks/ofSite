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
				 <p>This community page is auto generated from the most active members on the OF forum.  Please see <a href="https://github.com/openframeworks/ofSite/wiki/community"> this guide</a> for info about how to update your profile.  If you'd like to get added to this page, we will add a forum thread in the near future where you can let us know and we'll manually add you.</p>
			</div>
			<br style="clear:both" />
      		<br />
      		% for member in members:
                <a href="user/?user=${member.user}" title="${member.name}"><img width="109" height="109" src="${member.avatar}" alt="${member.name}"/></a>
            % endfor
            </div>
      </div>
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>

<%def name="header()">
  <%
    active = "community"
  %>
  <%include file="header.mako"  args="active=active" />
</%def>

