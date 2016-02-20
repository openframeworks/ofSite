## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />

<%block name="content">
      <div id="body-wrap">

        <div id="getting_started" class="page-wide">
          ${getting_started}
        </div>


        <div id="how_tos" class="page-wide sectiontitle">
          <h2>how-tos <small>a quick reference for common questions</small></h2>
        </div> 

        <div class="page-wide">
        % for category in categories:
            % if len(category["articles"]) > 0:
              <div style="width: 30% !important; float: left; height: 200px;">
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
          <h2>ofBook <small>a collection of openFrameworks guides</small></h2>
        </div>
        <div class="page-wide">
          ${of_book}
        </div>

     </div>
</%block>
