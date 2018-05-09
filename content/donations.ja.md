## -*- coding: utf-8 -*-
.. title: donations


<div class="page-left-medium">
<h1>寄付</h1>

<em>openFrameworksは、多くの様々な無償の貢献によって開発されメンテナンスされています。</em>

<p>寄付はopenFrameworksの開発やドキュメントの改善の助けになり、さらにプロジェクトに必要なサードパーティーのサービスに支払われます。</p>

<p>もしopenFrameworksを商業的に使用していたり、単純にopenFrameworksの開発をサポートしたいと考えているなら、プロジェクトへの寄付について検討してみてください。</p>

<p>もしopenFrameworksへの寄付にかんして何か疑問や助言がありましたら、もしくはあなたが何らかの組織であり別の方法で貢献したいと考えていましたら、emailで連絡してください。

<script type="text/javascript" language="javascript">
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

<div class="donations"><strong>一度だけの寄付</strong><br>
<form action="https://www.paypal.com/cgi-bin/webscr"  method="post" target="_blank">
    <input name="business" value="donations@openframeworks.cc" type="hidden">
    <input name="cmd" value="_donations" type="hidden">
    <input name="item_name" value="openFrameworks one time donation" type="hidden">
    <input name="item_number" value="One Time Donation" type="hidden">
    <input name="amount" value="" type="text"><br/>
    <em>最低 €1 から</em><p></p>
    <input name="lc" value="US" type="hidden">
    <input name="currency_code" value="EUR" type="hidden">
    <input class="buyButton" alt="PayPal – The safer, easier way to pay online." name="submit" value="Donate" type="submit">
</form>
<p>&nbsp;</p>
<p style="font-size: 1.0em; margin-bottom: 0;"><strong>月々の寄付</strong><br></p>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">
    <input name="business" value="donations@openframeworks.cc" type="hidden">
    <input name="cmd" value="_xclick-subscriptions" type="hidden">
    <input name="item_name" value="openFrameworks monthly donation" type="hidden">
    <input name="item_number" value="Monthly Donation" type="hidden">
    <input name="a3" value="" value="1" type="text"><br/>
    <em>最低 €1 から</em><p></p>
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
