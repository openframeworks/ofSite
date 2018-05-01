## -*- coding: utf-8 -*-
.. title: donations


<div class="page-left-medium">
<h1>donations</h1>

<em>openFrameworks is developed and maintained by several voluntary contributors.</em>

<p>Donations help support the development of openFrameworks, improve the documentation and pay for third party services needed for the project.</p>

<p>If you are using openFrameworks commercially or would simply like to support openFrameworks development, please consider donating to the project.</p>

<p>If you have any questions or suggestions about donating to openFrameworks, or if you are an institution and want to contribute in a different way, you can contact us by email at <script type="text/javascript" language="javascript">
<!--
$(document).ready(function(){
    window.setTimeout(function(){
      // Email obfuscator script 2.1 by Tim Williams, University of Arizona
      // Random encryption key feature coded by Andrew Moulden
      // This code is freeware provided these four comment lines remain intact
      // A wizard to generate this code is at http://www.jottings.com/obfuscator/
      coded = "4QvO7qQvP@QBMvU1OEMIQ1SP.ww"
      key = "BTobCRz1yjMsJfW6KIYmh2O4vcqltQuXGk9pg0PFUZr8VeExLN5HwD37AadnSi"
      shift=coded.length
      link=""
      for (i=0; i<coded.length; i++) {
        if (key.indexOf(coded.charAt(i))==-1) {
          ltr = coded.charAt(i)
          link += (ltr)
        }
        else {     
          ltr = (key.indexOf(coded.charAt(i))-shift+key.length) % key.length
          link += (key.charAt(ltr))
        }
      }
      //$('a.donations_link').text(link);
      //$('a.donations_link').onclick(function(){window.location = "mailto:" + link});
      //$('a.donations_link').href="mailto:" + link
      $('span.donations_link').html("<a href='#' onclick='window.location=\"mailto:" + link + "\";'>" + link + "</a>");
    },500)
})
//-->
</script><span class="donations_link"></span></p>

</div>

<div class="page-right-narrow">
<div class="home-links">

<div class="donations"><strong>One-time Donation</strong><br>
<form action="https://www.paypal.com/cgi-bin/webscr"  method="post" target="_blank">
    <input name="business" value="donations@openframeworks.cc" type="hidden">
    <input name="cmd" value="_donations" type="hidden">
    <input name="item_name" value="openFrameworks one time donation" type="hidden">
    <input name="item_number" value="One Time Donation" type="hidden">
    <input name="amount" value="" type="text"><br/>
    <em> €1 minimum</em><p></p>
    <input name="lc" value="US" type="hidden">
    <input name="currency_code" value="EUR" type="hidden">
    <input class="buyButton" alt="PayPal – The safer, easier way to pay online." name="submit" value="Donate" type="submit">
</form>
<p>&nbsp;</p>
<p style="font-size: 1.0em; margin-bottom: 0;"><strong>Monthly Subscription</strong><br></p>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">
    <input name="business" value="donations@openframeworks.cc" type="hidden">
    <input name="cmd" value="_xclick-subscriptions" type="hidden">
    <input name="item_name" value="openFrameworks monthly donation" type="hidden">
    <input name="item_number" value="Monthly Donation" type="hidden">
    <input name="a3" value="" value="1" type="text"><br/>
    <em> €1 minimum</em><p></p>
    <input name="p3" value="1" type="hidden">
    <input name="t3" value="M" type="hidden">
    <input name="lc" value="US" type="hidden">
    <input name="currency_code" value="EUR" type="hidden">
    <input name="src" value="1" type="hidden">
    <input class="buyButton" alt="PayPal – The safer, easier way to pay online." name="submit" value="Subscribe" type="submit">
</form>
</div>
</div>
</div>
