## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />

<%block name="extra_head">
    <script src="/assets/js/jquery.columnizer.min.js"></script>
    <script src="/assets/js/documentation.js"></script>
</%block>

<%block name="content">
      <div id="body-wrap">
          <div class="page-wide">
          
              <div id="docstitle"><h1>${modulename}</h1></div>
              <div id="editdocs">
                % if not clazz is None:
                  % if is_addon:
                    <a href="https://github.com/openframeworks/ofSite/edit/master/documentation/addons/${clazz.module}/${clazz.name}.markdown" class="nohover"><img title="edit class on GitHub" src="/images/editclass.png?a=5"/></a>
                  % else:
                    <a href="https://github.com/openframeworks/ofSite/edit/master/documentation/${clazz.module}/${clazz.name}.markdown" class="nohover"><img title="edit class on GitHub" src="/images/editclass.png?a=5"/></a>
                  % endif
                % endif
                % if not functions is None and len(functions.function_list)>0:
                   % if is_addon:
                     <a href="https://github.com/openframeworks/ofSite/edit/master/documentation/addons/${functions.module}/${functions.name}_functions.markdown" class="nohover"><img title="edit functions on GitHub" src="/images/editfunctions.png?a=5"/></a>
                   % else:
                     <a href="https://github.com/openframeworks/ofSite/edit/master/documentation/${functions.module}/${functions.name}_functions.markdown" class="nohover"><img title="edit functions on GitHub" src="/images/editfunctions.png?a=5"/></a>
                   % endif
                % endif
              </div>
              
          </div>
          
          
        <div class="page-wide">
		    <div class="submenucol-left">
		     <!-- list of methods -->
             % if not clazz is None and len([x for x in clazz.function_list if not x.advanced and x.visible and x.access=='public'])>0:
		     <p class="top_list_header">class methods</p>
             <ul class="functionslist">
                 <% prevmethod = "" %>
                 % for method in clazz.function_list:
                     % if prevmethod != method.name and method.visible and not method.advanced and method.access=='public':
                         % if len(method.description) <= 1 and len(method.inlined_description) <= 1:
                         <li class="noDoc">
                         % else:
                         <li>
                         % endif
                         <a href="#show_${method.name}" class="${method.name}" data-lookup="${method.name}">${method.name}()</a></li>
                     % endif
                     <% prevmethod = method.name %>
                 % endfor
             </ul>
             % endif
            
             
             
             <!-- list of variables -->              
             % if not clazz is None and len([x for x in clazz.var_list if not x.advanced and x.visible and x.access=='public'])>0:
                <p class="top_list_header">variables</p>
                <ul class="functionslist">
                     % for var in clazz.var_list:
                         % if var.visible and not var.advanced and var.access=='public':
                             % if len(var.description) <= 1:
                            <li class="noDoc">
                            % else:
                            <li>
                            % endif
                            <a href="#show_${var.name}" class="${var.name}" data-lookup="${var.name}">${var.type} ${var.name}</a> </li>
                         % endif
                     % endfor
                 </ul>
             % endif
            
             
            
             <!-- list of functions -->              
             % if len([x for x in functions.function_list if not x.advanced and x.visible])>0:
            <p class="top_list_header">global functions</p>
                <ul class="functionslist">
                     <% prevmethod = "" %>
                     % for method in functions.function_list:
                         % if prevmethod != method.name and method.visible and not method.advanced:
                             % if len(method.description) <= 1 and len(method.inlined_description) <= 1:
                            <li class="noDoc">
                            % else:
                            <li>
                            % endif
                            <a href="#show_${method.name}" class="${method.name}" data-lookup="${method.name}">${method.name}()</a></li>
                         % endif
                         <% prevmethod = method.name %>
                     % endfor
                 </ul>
             % endif
		    </div>
	    <div class="submenucol-right">
            <div class="documentation_detail class_documentation">
              % if not clazz is None:
                % if len(clazz.extends)>0:
                    <h2><strong><em>Extends</em></strong></h2>
                    <p>This class extends others, you can call their methods on an instance of ${clazz.name} too:</p>
                    <ul>
                    % for base in clazz.extends:
                        <li>${base}</li>
                    % endfor
                    </ul>
                % endif
${clazz.reference}
              % endif

              % if not clazz is None and clazz.detailed_inline_description.strip("\n").strip(" ") != "" and clazz.get_inlined_docs_similarity()<0.8:
                  % if clazz.reference.strip("\n").strip(" ") != "":
                    <div class="inlined_docs">
                  % endif
                        <h2><strong><em>Documentation from code comments</em></strong></h2><br/>
    ${clazz.detailed_inline_description}
                  % if clazz.reference.strip("\n").strip(" ") != "":
                    </div>   
                  % endif                   
              % endif
              
              % if not functions is None:
${functions.description}
              % endif
           </div>
                  
            <!-- methods detail -->
            % if not clazz is None and len([x for x in clazz.function_list if not x.advanced and x.visible and x.access=='public'])>0:
              <!--h2><a name="methods"></a>${clazz.name} methods</h2-->
              % for method in clazz.function_list:
                    % if method.visible and not method.advanced and method.access=='public':
                        <%include file="documentation_method.mako" args="method=method" />    
                    % endif
              % endfor
            % endif

            <!-- vars detail -->
            % if not clazz is None and len([x for x in clazz.var_list if not x.advanced and x.visible and x.access=='public'])>0:
              <!--h2><a name="variables"></a>${clazz.name} variables</h2!-->
              % for var in clazz.var_list:
                    % if var.visible and not var.advanced and var.access=='public':
                        <%include file="documentation_var.mako" args="var=var" />    
                    % endif
              % endfor
            % endif 

            <!-- functions detail -->
            % if len([x for x in functions.function_list if not x.advanced and x.visible])>0:
              <!--h2><a name="functions"></a>${functions.name} functions</h2-->
              % for method in functions.function_list:
                    % if method.visible and not method.advanced:
                        <%include file="documentation_function.mako" args="function=method" />    
                    % endif
              % endfor
            % endif
            <hr/>
            
            <div id="comments_header">
            <p>If you have any doubt about the usage of this module you can ask in the <a href="http://forum.openframeworks.cc">forum</a>.</p>
            <p>If you want to contribute better documentation or start documenting this section you can do so 
                % if not clazz is None:
                  % if is_addon:
                    <a href="https://github.com/openframeworks/ofSite/edit/master/documentation/addons/${clazz.module}/${clazz.name}.markdown">here</a>
                  % else:
                    <a href="https://github.com/openframeworks/ofSite/edit/master/documentation/${clazz.module}/${clazz.name}.markdown">here</a>
                  % endif
                % elif not functions is None and len(functions.function_list)>0:
                   % if is_addon:
                     <a href="https://github.com/openframeworks/ofSite/edit/master/documentation/addons/${functions.module}/${functions.name}_functions.markdown">here</a>
                   % else:
                     <a href="https://github.com/openframeworks/ofSite/edit/master/documentation/${functions.module}/${functions.name}_functions.markdown">here</a>
                   % endif
                % endif.
            </p>
            <p>If you find anything wrong with this docs you can report any error by opening an 
                % if not clazz is None:
                    <a href="https://github.com/openframeworks/ofSite/issues/new?title=Documentation problem in ${clazz.name}">issue</a></p>
                % elif not functions is None:
                    <a href="https://github.com/openframeworks/ofSite/issues/new?title=Documentation problem in ${functions.name}">issue</a></p>
                % endif
            </div>
        </div><!-- End Submenu right -->
      </div><!-- End page wide -->
      </div><!-- End body wrap -->
</%block>

