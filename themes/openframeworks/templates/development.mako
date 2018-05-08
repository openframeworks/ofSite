## -*- coding: utf-8 -*-
<%inherit file="base.tmpl"/>

<%block name="extra_head">
    <script type="text/javascript" src="/assets/js/jquery.columnizer.js" type="text/javascript"></script>
    <script type="text/javascript" src="/assets/js/development.js" type="text/javascript"></script>
</%block>

<%block name="content">
    <div id="body-wrap">
    <div class="page-left-wide">
        ${post.text()}
    </div>
    </div>
</%block>
