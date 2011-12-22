<%def name="filter(chain)">
  ${bf.filter.run_chain(chain, capture(caller.body))}
</%def>

<%def name="header()">
  <% 
    template_name = bf.template_context['template_name']
    active = template_name[:template_name.find("/")]
  %>
  <%include file="header.mako"  args="active=active" />
</%def>

<%def name="head()">
  <%include file="head.mako" />
</%def>

<%def name="footer()">
  <%include file="footer.mako" />
</%def>

${next.body()}


