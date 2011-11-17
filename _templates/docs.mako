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
        <div class="page-left-wide">
          <div id="main_block">
            <div id="prose_blocka">
            % for block in blocks:
                <%include file="docs_index_block.mako" args="block=block" />
            % endfor
            </div><!-- End Prose Block -->
          </div><!-- End Main Block -->
        </div>
      </div>
      
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>



<%def name="head()">
  <%include file="head.mako" />
</%def>


<%def name="header()">
  <%include file="header.mako" />
</%def>


<%def name="footer()">
  <%include file="footer.mako" />
</%def>


<%def name="col1(body)">
    <%
    col1_text = u""
    col2_pos = body.find('--col2--')
    if col2_pos!=-1:
        col1_text = '<div class="docs_col">' + body[:col2_pos] + '</div>'
    else:
        col1_text = '<div class="docs_col">' +  body + '</div>'
    %>
    ${col1_text}
</%def>


<%def name="col2(body)">
    <%
    col2_text = u""
    col2_pos = body.find('--col2--')
    col3_pos = body.find('--col3--')
    if col2_pos!=-1:
        if col3_pos!=-1:
            col2_text = '<div class="docs_col">' + body[col2_pos + 8:col_3_pos] + '</div>'
        else:
            col2_text = '<div class="docs_col">' + body[col2_pos + 8:] + '</div>'
    %>
    ${col2_text}
</%def>


<%def name="col3(body)">
    <%
    col3_text = u""
    col3_pos = body.find('--col3--')
    col4_pos = body.find('--col4--')
    if col3_pos!=-1:
        if col4_pos!=-1:
            col3_text = '<div class="docs_col">' + body[col3_pos + 8:col_4_pos] + '</div>'
        else:
            col3_text = '<div class="docs_col">' + body[col3_pos + 8:] + '</div>'
    %>
    ${col3_text}
</%def>


<%def name="col4(body)">
    <%
    col4_text = u""
    col4_pos = body.find('--col4--')
    if col4_pos!=-1:
        col4_text = '<div class="docs_col">' + body[:col4_pos + 8:] + '</div>'
    %>
    ${col4_text}
</%def>
