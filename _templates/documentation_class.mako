## -*- coding: utf-8 -*-
<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head(modulename)}
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
                  % if is_addon:
                    <a href="https://github.com/openframeworks/ofSite/edit/master/_documentation/addons/${clazz.module}/${clazz.name}.markdown" class="nohover"><img title="edit class on GitHub" src="/images/editclass.png?a=5"/></a>
                  % else:
                    <a href="https://github.com/openframeworks/ofSite/edit/master/_documentation/${clazz.module}/${clazz.name}.markdown" class="nohover"><img title="edit class on GitHub" src="/images/editclass.png?a=5"/></a>
                  % endif
                % endif
                % if not functions is None and len(functions.function_list)>0:
                   % if is_addon:
                     <a href="https://github.com/openframeworks/ofSite/edit/master/_documentation/addons/${functions.module}/${functions.name}_functions.markdown" class="nohover"><img title="edit functions on GitHub" src="/images/editfunctions.png?a=5"/></a>
                   % else:
                     <a href="https://github.com/openframeworks/ofSite/edit/master/_documentation/${functions.module}/${functions.name}_functions.markdown" class="nohover"><img title="edit functions on GitHub" src="/images/editfunctions.png?a=5"/></a>
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
              <%self:filter chain="markdown_template">
${clazz.reference}
              </%self:filter>
              % endif

              % if not clazz is None and clazz.detailed_inline_description.strip("\n").strip(" ") != "":
              <div class="inlined_docs">
                    <h2><strong><em>Documentation from code comments</em></strong></h2><br/>
                    <%self:filter chain="markdown_template">
${clazz.detailed_inline_description}
                    </%self:filter>
              </div>                      
              % endif
              
              % if not functions is None:
              <%self:filter chain="markdown_template">
${functions.description}
              </%self:filter>
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
                
            <!--diqus comments for class/functions module description-->
            <div id="comments_header">
            <h2>comments</h2>
            <p>You can add comments with usage examples or other information for each class, method or variable, for adding documentation to an empty section or reporting errors is better to send a fix or open an issue through <a href="https://github.com/openframeworks/ofSite">github</a>.</p>
            <p>When posting code enclose it in:</p>
            <pre><code class="html">&lt;pre&gt;&lt;code class=&quot;cpp&quot;&gt;&nbsp;&lt;/code&gt;&lt;/pre&gt;</code></pre>
            <br/>
            </div>
            <div id="disqus_thread"></div>
            <script type="text/javascript">

            // DISQUS
            /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */

            var disqus_shortname = 'openframeworks'; // required: replace example with your forum shortname
            //var disqus_developer = 1;

            location_elements = window.location.pathname.split("/");
            module_name = location_elements[location_elements.length-1].split(".")[0];
            section_name = location.hash.split("_")[1];
            console.log(module_name + " " + section_name);
            if(section_name!=undefined && section_name!=''){
            var disqus_identifier = window.location.pathname + "#!show_" + section_name;  
            var disqus_url = window.location.protocol + "//" + window.location.host + window.location.pathname + "#!show_" + section_name;
            var discus_title = document.title + " - " + section_name;
            }else{
            var disqus_identifier = window.location.pathname;
            var disqus_url = window.location.protocol + "//" + window.location.host + window.location.pathname;
            var discus_title = document.title;
            }


            /* * * DON'T EDIT BELOW THIS LINE * * */   
            (function() {
            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
            dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
            })();
            </script>
            <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
            <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
		
        </div><!-- End Submenu right -->
      </div><!-- End page wide -->
      </div><!-- End body wrap -->
      
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>
<%def name="header()">
  <%include file="header.mako"  args="active='documentation'"/>
</%def>

