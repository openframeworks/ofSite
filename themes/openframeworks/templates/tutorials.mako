## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />
<%namespace name="of" file="of_helpers.tmpl"/>

<%block name="content">
      <div id="body-wrap">

        <div id="getting_started" class="page-wide">
          <%include file="tutorials_getting_started.mako" args="parent_locals=locals()" />
        </div>


        <div id="how_tos" class="page-wide sectiontitle">
          <h2>${ of.msg("how-tos", locals()) } <small>${ of.msg("a quick reference for common questions", locals()) }</small></h2>
        </div>

        <div class="page-wide how-tos">
        % for category in categories:
            % if len(category["articles"]) > 0 and category["isHowTo"]:
              <div style="width: 32% !important; float: left; min-height: 200px; margin: 5px;">
                <div style="background: #eee;">  
                        <h2>${category["category"]}</h2>
                    </div><!-- End Page Wide -->
                    <ul>
                    % for article in category["articles"]:
                      % if article.type == "howto":
                         %if lang in article.translations.keys():
                             <li>&gt; <a href="${article.translations[lang].path}"> ${article.translations[lang].title} </a></br>
                                 <p>${article.translations[lang].summary}</p>
                             </li>
                         %else:
                             <li><a href="${article.path}"> ${article.title} </a></br>
                                 <!--<p>${article.summary}</p> -->
                             </li>
                         %endif
                      % endif
                    % endfor
                    </ul>
              </div>
            % endif
        % endfor
        </div>

        <div id="ofBook" class="page-wide sectiontitle">
          <h2>ofBook <small>${ of.msg("a collection of openFrameworks guides", locals()) }</small></h2>
        </div>
        <div class="page-wide">
          ${of_book}
        </div>

     </div>
</%block>
