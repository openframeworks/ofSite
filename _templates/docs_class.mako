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
            <div id="prose_block">
              <h2>${clazz.name}</h2>
              <p>
              <%self:filter chain="syntax_highlight,markdown_template">
                  ${clazz.reference}
              </%self:filter>
              </p>
              <br/><br/>
              <h3>${clazz.name} functions list</h3>
              <ul class="functionslist">
              % for method in clazz.function_list:
                  % if method.visible and not method.advanced and method.access=='public':
                      <li> <a href="#${method.clazz}-${method.syntax}">${method.returns} ${method.name} ( ${method.parameters} )</a> </li>
                  % endif
              % endfor
              </ul>
              
              <br/><br/>
              
              <h3>${clazz.name} variables list</h3>
              <ul class="varslist">
              % for var in clazz.var_list:
                  % if var.visible and not var.advanced and var.access=='public':
                      <li> <a href="#${var.clazz}-${var.name}">${var.type} ${var.name}</a> </li>
                  % endif
              % endfor
              </ul>
              
              <br/><br/>
              
              <h3>${clazz.name} functions</h3>
              % for method in clazz.function_list:
                    % if method.visible and not method.advanced and method.access=='public':
                        <%include file="docs_method.mako" args="method=method" />    
                    % endif
              % endfor
              
              <h3>${clazz.name} variables</h3>
              % for var in clazz.var_list:
                    % if var.visible and not var.advanced and var.access=='public':
                        <%include file="docs_var.mako" args="var=var" />    
                    % endif
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
  <%include file="header.mako"  args="active='docs'"/>
</%def>
<%def name="footer()">
  <%include file="footer.mako" />
</%def>

