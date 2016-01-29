## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />

<%block name="extra_head">
% if lang == 'en':
    <script src="/tipuesearch_content.js"></script>
% else:
    <script src="/${lang}/tipuesearch_content.js"></script>
% endif
<script src="/assets/js/tipuesearch_set.js"></script>
<script src="/assets/js/tipuesearch.min.js"></script>
<link href="/assets/css/tipuesearch.css" rel="stylesheet">
<script>
$(document).ready(function() {
     $('#tipue_search_input').tipuesearch();
});
</script>
</%block>


<%block name="content">
    <div id="body-wrap">	
        <div class="page-wide">
        %if search_form:
            ${search_form}
            <div id="tipue_search_content"></div>
        %endif
        </div>
    </div>
</%block>
