## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />

<%block name="content">
      <div id="body-wrap">	
	    <div class="page-wide">        
	        <!--h1>tutorials</h1-->
            <h3>${tutorials_intro}</h3>
        </div><!-- End Page Wide -->  
        % for category in categories:
            % if len(category["articles"]) > 0:
                <div class="page-wide sectiontitle">  
                        <h2>${category["category"]}</h2>
                    </div><!-- End Page Wide -->
                <div class="page-wide">  
                    <ul class="articles">
                    % for article in category["articles"]:
                         %if lang in article.translations.keys():
                             <li><a href="${article.translations[lang].path}"> ${article.translations[lang].title} </a></br>
                                 <p>${article.translations[lang].summary}</p>
                             </li>
                         %else:
                             <li><a href="${article.path}"> ${article.title} </a></br>
                                 <p>${article.summary}</p>
                             </li>
                         %endif
                    % endfor
                    </ul>
                </div><!-- End Page Wide -->
            % endif
        % endfor
          

        <div id="wishlist" class="page-wide sectiontitle">  
          <h2>tutorial wish list</h2>
        </div>
        <div class="page-wide">
          <p>These are highly desired tutorials. To contribute a tutorial, fork the <a href="http://github.com/openframeworks/ofSite">ofSite repository in github</a> and add your tutorial in markdown or asciidoc format inside the _tutorials folder.</p>
          <ul>
            <li>basics of graphics - how to draw things</li>
            <li>ofPixels, ofTexture, ofImage</li>
            <li>gl - getting started, ofFbo, ofVbo</li>
            <li>cameras - basics of ofEasyCam, ofCamera</li>
            <li>std::map</li>
          </ul>
        </div>
     </div>
</%block>

