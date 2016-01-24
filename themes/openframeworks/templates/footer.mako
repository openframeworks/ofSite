## -*- coding: utf-8 -*-
<p id="credits">

Last updated ${self.getTime()}&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://github.com/openframeworks/ofSite/commit/${self.getLastCommitHash()}">${self.getLastCommitHash()}</a>

<br/>
<a href="http://www.rackspace.com" target="_blank" class="rackspace">
Hosting for openFrameworks is generously provided by Rackspace
<br/>
<img src="http://c1776742.cdn.cloudfiles.rackspacecloud.com/images/information/mediacenter/links/130x33_grey.png">
</a>

</p>



<!--tracking -->
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-9614675-1");
pageTracker._trackPageview();
} catch(err) {}</script>

<%def name="getTime()">
  <% 
    from time import gmtime, strftime
    currentTime = strftime("%A, %d %B %Y %H:%M:%S UTC", gmtime())
  %>
${currentTime}
</%def>

<%def name="getLastCommitHash()">
<% 
    import subprocess
    p1 = subprocess.Popen(["git", "log", "-1"], stdout=subprocess.PIPE)
    (out,err) = p1.communicate()
    out = out.decode()
    hash = out[len("commit "):out.find('\n')].strip()
%>
${hash}
</%def>
