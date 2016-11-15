## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />

<%block name="extra_head">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.cycle/3.03/jquery.cycle.all.min.js"></script>
</%block>



<%block name="content">
    <div id="body-wrap">
    <div class="page-left-wide"> 
        ${post.text()}
    </div>
    </div>
</%block>
