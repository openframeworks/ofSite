<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
    <script src="${bf.config.site.url}/js/jquery.columnizer.min.js"></script>
    <script src="${bf.config.site.url}/js/documentation.js"></script>
  </head>
  <body>
    <div id="content">
      ${self.header()}
      <div id="body-wrap">
          <div class="page-wide">
          
              <div id="docstitle"><h1>${modulename}</h1></div>
              <div id="editdocs">
                % if not clazz is None:
                    <a href="https://github.com/openframeworks/ofSite/blob/master/_documentation/${clazz.module}/${clazz.name}.markdown" class="nohover"><img title="edit class on GitHub" src="/images/editclass.png"/></a>
                % endif
                % if not functions is None and len(functions.function_list)>0:
                    <a href="https://github.com/openframeworks/ofSite/blob/master/_documentation/${functions.module}/${functions.name}_functions.markdown" class="nohover"><img title="edit functions on GitHub" src="/images/editfunctions.png"/></a>
                % endif
              </div>
              
          </div>
          
          <div class="page-left-wide">
          <div id="main_block">
            <div id="prose_block">
              <p>
              <%self:filter chain="markdown_template">
              % if not clazz is None:
${clazz.reference}
              % endif
              % if not functions is None:
${functions.description}
              % endif
              </%self:filter>
              </p>
        	</div><!-- End Prose Block -->
         </div><!-- End Main Block -->
	</div>
		<div class="page-wide">
      	<div id="top_list">
             
             <!-- list of methods -->
             % if not clazz is None and len([x for x in clazz.function_list if not x.advanced and x.visible and x.access=='public'])>0:
               
 			
			<p class="top_list_header"><a href="#methods">class methods</a></p>
			
                 <ul class="functionslist">
                     <% prevmethod = "" %>
                     % for method in clazz.function_list:
                         % if prevmethod != method.name and method.visible and not method.advanced and method.access=='public' and (method.name!=method.clazz) and (method.name != "~" + method.clazz):
                             <% params = "()" if method.parameters=="" else "(...)" %> 
                             <li> <a href="#${method.name}">${method.name}${params}</a> </li>
                         % endif
                         <% prevmethod = method.name %>
                     % endfor
                 </ul>
             % endif
            
             
             
             <!-- list of variables -->              
             % if not clazz is None and len([x for x in clazz.var_list if not x.advanced and x.visible and x.access=='public'])>0:
                <p class="top_list_header"><a href="#variables">class variables</a></p>
                <ul class="functionslist">
                     % for var in clazz.var_list:
                         % if var.visible and not var.advanced and var.access=='public':
                             <li> <a href="#${var.name}">${var.type} ${var.name}</a> </li>
                         % endif
                     % endfor
                 </ul>
             % endif
            
             
            
             <!-- list of functions -->              
             % if len([x for x in functions.function_list if not x.advanced and x.visible])>0:
            <p class="top_list_header"><a href="#functions">functions</a></p>
                <ul class="functionslist">
                     <% prevmethod = "" %>
                     % for method in functions.function_list:
                         % if prevmethod != method.name and method.visible and not method.advanced:
                             <% params = "()" if method.parameters=="" else "(...)" %> 
                             <li> <a href="#${method.name}">${method.name}${params}</a> </li>
                         % endif
                         <% prevmethod = method.name %>
                     % endfor
                 </ul>
             % endif
            
		</div>

	</div>
		<div class="page-left-wide">
          <div id="main_block">
            <div id="prose_block">	
              
              <!-- methods detail -->
              % if not clazz is None and len([x for x in clazz.function_list if not x.advanced and x.visible and x.access=='public'])>0:
                  <h2><a name="methods"></a>${clazz.name} methods</h2>
                  % for method in clazz.function_list:
                        % if method.visible and not method.advanced and method.access=='public' and (method.name!=method.clazz) and (method.name != "~" + method.clazz):
                            <%include file="documentation_method.mako" args="method=method" />    
                        % endif
                  % endfor
              % endif
              
              <!-- vars detail -->
              % if not clazz is None and len([x for x in clazz.var_list if not x.advanced and x.visible and x.access=='public'])>0:
                  <h2><a name="variables"></a>${clazz.name} variables</h2>
                  % for var in clazz.var_list:
                        % if var.visible and not var.advanced and var.access=='public':
                            <%include file="documentation_var.mako" args="var=var" />    
                        % endif
                  % endfor
              % endif 
              
              <!-- functions detail -->
              % if len([x for x in functions.function_list if not x.advanced and x.visible])>0:
                  <h2><a name="functions"></a>${functions.name} functions</h2>
                  % for method in functions.function_list:
                        % if method.visible and not method.advanced:
                            <%include file="documentation_function.mako" args="function=method" />    
                        % endif
                  % endfor
              % endif
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
<%def name="header()">
  <%include file="header.mako"  args="active='documentation'"/>
</%def>

