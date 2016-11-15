## -*- coding: utf-8 -*-
<%inherit file="base.tmpl"/>

<%block name="extra_head">
    <script type="text/javascript" src="/assets/js/encoder.js"></script>
    <script type="text/javascript"  src="/assets/js/gallery.js">   </script>
</%block>

<%block name="content">
<div id="body-wrap">
    <div class="page-wide">
    ${post.text()}
    <br/><br/>
    <div id="gallery"></div>
    </div>
</div>
</%block>
