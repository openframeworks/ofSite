<title>${bf.config.blog.name}</title>
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="${bf.util.site_path_helper(bf.config.blog.path,'/feed')}" />
<link rel="alternate" type="application/atom+xml" title="Atom 1.0"
href="${bf.util.site_path_helper(bf.config.blog.path,'/feed/atom')}" />
<link rel='stylesheet' href='${bf.config.filters.syntax_highlight.css_dir}/pygments_${bf.config.filters.syntax_highlight.style}.css' type='text/css' />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link rel="stylesheet" type="text/css" href="${bf.config.site.url}/css/print.css" media="print" />
<link rel="stylesheet" type="text/css" href="${bf.config.site.url}/css/style.css" media="all" />
<link rel="stylesheet" type="text/css" href="${bf.config.site.url}/tweet/jquery.tweet.css" media="all" />

<link rel="search" type="application/opensearchdescription+xml" href="http://www.openframeworks.cc/opensearch.xml" title="openFrameworks" />

<link rel="shortcut icon" href="http://forum.openframeworks.cc/favicon.ico">
<link rel="icon" href="http://forum.openframeworks.cc/favicon.ico" type="image/x-icon" />


<script type="text/javascript" src="http://www.openframeworks.cc/wp-content/themes/ofw/javascript/functions.js"></script>


<meta name="verify-v1" content="GneMBPUAv7M2KUNSgr+kf7Aq9HEsk0mLwl0kk18FRl8=" />

<link rel='stylesheet' id='contact-form-7-css'  href='http://www.openframeworks.cc/wp-content/plugins/contact-form-7/styles.css?ver=2.4.4' type='text/css' media='all' />

<script type='text/javascript' src='http://www.openframeworks.cc/wp-includes/js/l10n.js?ver=20101110'></script>
<script type='text/javascript' src='http://www.openframeworks.cc/wp-includes/js/swfobject.js?ver=2.2'></script>
<script language="javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
<script language="javascript" src="${bf.config.site.url}/tweet/jquery.tweet.js" type="text/javascript"></script>


<script type="text/javascript">
//<![CDATA[
var _wpcf7 = { cached: 1 };
//]]>
</script>


<!-- Vipers Video Quicktags v6.3.0 | http://www.viper007bond.com/wordpress-plugins/vipers-video-quicktags/ -->


<style type="text/css">
.vvqbox { display: block; max-width: 100%; visibility: visible !important; margin: 10px auto 10px 0; } .vvqbox img { max-width: 100%; height: 100%; } .vvqbox object { max-width: 100%; } 
</style>


<script type="text/javascript">
// <![CDATA[
	var vvqflashvars = {};
	var vvqparams = { wmode: "opaque", allowfullscreen: "true", allowscriptaccess: "always" };
	var vvqattributes = {};
	var vvqexpressinstall = "http://www.openframeworks.cc/wp-content/plugins/vipers-video-quicktags/resources/expressinstall.swf";
// ]]>
</script>

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

<script src="${bf.config.site.url}/github/jquery.rss.min.js"></script>

<script>
  jQuery(function($) {
    $("#github").rss("https://github.com/openframeworks/openFrameworks/commits/develop.atom", {
      limit: 9,
      // will request the API via https; default: false
      //ssl: true,

      // template for the html transformation
      /* default: "<ul>{entry}<li><a href='{url}'>[{author}@{date}] {title}</a><br>{shortBodyPlain}</li>{/entry}</ul>"*/

      template: '<ul>{entry}<li><a href="{url}">{title}</a></li>{/entry}</ul>',

      // additional token definition for in-template-usage
      // default: {}
      tokens: {
          avatar: function(entry, tokens){ 
            var text = "";
            for( p in tokens )
                text += p + ", "
            return text; //entry["media:thumbnail"] 
            //return tokens.teaserImage;
          }, //'<img src="' + entry["media:thumbnail"].url + '">'},
      }
    })
  })
</script>

<script>
  jQuery(function($) {
    $("#gallery").rss("http://feeds.feedburner.com/creativeapplicationsnet?format=xml", {
      limit: 9,
      // will request the API via https; default: false
      //ssl: true,

      // template for the html transformation
      /* default: "<ul>{entry}<li><a href='{url}'>[{author}@{date}] {title}</a><br>{shortBodyPlain}</li>{/entry}</ul>"*/

      template: "{entry}<p><h3><a href='{url}'>{title}</a></h3><br/><br/>{teaserImage}<br/>{shortBodyPlain}</p><br/><hr/><br/>{/entry}"
    })
  })
</script>

