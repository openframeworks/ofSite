from nikola.plugin_categories import Task
from nikola import utils

import os
import re
import logging

import shutil
import sys
import random

import argparse
import shutil
import glob

import pathlib
from bs4 import BeautifulSoup

sys.path.append( os.path.dirname(os.path.realpath(__file__))+"/tools" )
import markdown_file
from markdown import markdown

logger = logging.getLogger("documentation")    
        
def uniqify(seq):
    seen = set()
    seen_add = seen.add
    return [ x for x in seq if x not in seen and not seen_add(x)]

entry_js = '"title": "{title}", "text": "{text}", "tags": "{tags}", "url": "{url}"'
def unique(s):
    """Return a list of the elements in s, but without duplicates.

    For example, unique([1,2,3,1,2,3]) is some permutation of [1,2,3],
    unique("abcabc") some permutation of ["a", "b", "c"], and
    unique(([1, 2], [2, 3], [1, 2])) some permutation of
    [[2, 3], [1, 2]].

    For best speed, all sequence elements should be hashable.  Then
    unique() will usually work in linear time.

    If not possible, the sequence elements should enjoy a total
    ordering, and if list(s).sort() doesn't raise TypeError it's
    assumed that they do enjoy a total ordering.  Then unique() will
    usually work in O(N*log2(N)) time.

    If that's not possible either, the sequence elements must support
    equality-testing.  Then unique() will usually work in quadratic
    time.
    """

    n = len(s)
    if n == 0:
        return []

    # Try using a dict first, as that's the fastest and will usually
    # work.  If it doesn't work, it will usually fail quickly, so it
    # usually doesn't cost much to *try* it.  It requires that all the
    # sequence elements be hashable, and support equality comparison.
    u = {}
    try:
        for x in s:
            u[x] = 1
    except TypeError:
        del u  # move on to the next method
    else:
        return u.keys()

    # We can't hash all the elements.  Second fastest is to sort,
    # which brings the equal elements together; then duplicates are
    # easy to weed out in a single pass.
    # NOTE:  Python's list.sort() was designed to be efficient in the
    # presence of many duplicate elements.  This isn't true of all
    # sort functions in all languages or libraries, so this approach
    # is more effective in Python than it may be elsewhere.
    try:
        t = list(s)
        t.sort()
    except TypeError:
        del t  # move on to the next method
    else:
        assert n > 0
        last = t[0]
        lasti = i = 1
        while i < n:
            if t[i] != last:
                t[lasti] = last = t[i]
                lasti += 1
            i += 1
        return t[:lasti]

    # Brute force is all that's left.
    u = []
    for x in s:
        if x not in u:
            u.append(x)
    return u

def cleanhtml(html):
    soup = BeautifulSoup(html,"html.parser")
    # kill all script and style elements
    for script in soup(["script", "style"]):
        script.extract()    # rip it out
    text = soup.get_text()
    return text.replace("\n","<br/>").replace('"','\\"')
    
def lang_prefix(lang, site):
    if lang == site.config['DEFAULT_LANG']: 
        return ""
    else:
        return "/" + lang 
        
def camel_case_to_words(name):
    s1 = re.sub('(.)([A-Z][a-z]+)', r'\1_\2', name)
    return re.sub('([a-z0-9])([A-Z])', r'\1_\2', s1).lower().split("_")
    
def tags_from_of_name(element):
    return " ".join(unique(camel_case_to_words(element.name[2:])))
        
def tags_from_method_name(element):
    return " ".join(unique(camel_case_to_words(element.name)))
    
def function_to_js(function, functions_file, site, lang):
    if function.advanced or not function.visible or functions_file.advanced or not functions_file.visible:
        return ''
        
    if len(function.description) > len(function.inlined_description):
        reference = function.description
    else:
        reference = function.inlined_description
    reference = cleanhtml(reference)
    url = site.abs_link( lang_prefix(lang, site) + '/documentation/' + functions_file.module + "/" + functions_file.name + "/#!show_" + function.name )
    tags = tags_from_of_name(function) + " " + tags_from_of_name(functions_file) + " " + functions_file.name + " " + functions_file.module + " function"
    return "{" + entry_js.format(title=function.name, text=reference, tags=tags, url=url) + "},\n"

def functions_file_to_js(clazz, site, lang):
    if clazz.advanced or not clazz.visible:
        return ''
        
    reference = cleanhtml(clazz.description)
    url = site.abs_link( lang_prefix(lang, site) + '/documentation/' + clazz.module + "/" + clazz.name + "/" )
    tags = tags_from_of_name(clazz) + " " + clazz.module + " functions"
    return "{" + entry_js.format(title=clazz.name, text=reference, tags=tags, url=url) + "},\n"
    
def class_to_js(clazz, site, lang):
    if clazz.advanced or not clazz.visible:
        return ''

    if len(clazz.reference) > len(clazz.detailed_inline_description):
        reference = clazz.reference
    else:
        reference = clazz.detailed_inline_description
    reference = cleanhtml(reference)
    url = site.abs_link( lang_prefix(lang, site) + '/documentation/' + clazz.module + "/" + clazz.name + "/" )
    tags = tags_from_of_name(clazz) + " " + clazz.module + " class"
    return "{" + entry_js.format(title=clazz.name, text=reference, tags=tags, url=url) + "},\n"

def method_to_js(function, clazz, site, lang):
    if function.advanced or not function.visible or  clazz.advanced or not clazz.visible:
        return ''
        
    if len(function.description) > len(function.inlined_description):
        reference = function.description
    else:
        reference = function.inlined_description
    reference = cleanhtml(reference)
    url = site.abs_link( lang_prefix(lang, site) + '/documentation/' + clazz.module + "/" + clazz.name + "/#!show_" + function.name )
    tags = tags_from_method_name(function) + " " + tags_from_of_name(clazz) + " " + clazz.name + " " + clazz.module + " method"
    return "{" + entry_js.format(title=clazz.name+"::"+function.name, text=reference, tags=tags, url=url) + "},\n"

def module_to_js(module, module_intro_content, site, lang):
    reference = cleanhtml(module_intro_content)
    url = site.abs_link( lang_prefix(lang, site) + '/documentation/' + module + "/" )
    return "{" + entry_js.format(title=module, text=reference, tags="module " + module, url=url) + "},\n"

rel_url_regex = re.compile(r'\[([^\]]*)\]\(([^/]((?!://).)*)\)')
def relative_urls(text):
    return rel_url_regex.sub(r'[\1](../\2)', text)
    
def of_classes_to_links(text, classes_simple_name, module_lookup):
    for class_name in classes_simple_name:
        rep = "(?!\[[^[\]]*)"+class_name+"(?![^[\]]*\])"
        #rep = "/("+class_name + "[\s(])(?![^\[]*\])/g"
        dst_pattern = "<a href=\"/documentation/"+module_lookup[class_name]+"/"+class_name+"\" class=\"docs_class\" >"+class_name+"</a> "
        text = re.sub(rep,dst_pattern,text)
    return text
    
class DocsTask(Task):
    """Generates the tutorials contents."""

    name = "documentation"
    description = "Generate OF docs"
      
    def create_docs(self):
        tasks = {}
        classes = []
        directory = "documentation"
            
        classes = markdown_file.getclass_list()
        classes_simple_name = markdown_file.getclass_list(False)            
        addon_classes = markdown_file.list_all_addons()
        
        module_lookup = dict()
        core_index = dict()
        addons_index = dict()
        module_subtitles = dict()
        
        docs_dir = os.path.join(self.site.original_cwd, "documentation")
        md_extensions = self.site.config.get("MARKDOWN_EXTENSIONS")
        content_js = {}
        
        class_template = "documentation_class.mako"
        class_template_dep = self.site.template_system.template_deps(class_template)
        module_template = "documentation_module_intro.mako"
        
        # start js string for docs search
        for lang in self.kw['translations']:
            content_js[lang] = 'var tipuesearch = {"pages": ['
        
        # Create an index of which module each class is in for generated links to other classes
        for class_name in classes:
            clazz = markdown_file.getclass(class_name)
            if clazz.istemplated:
                module_lookup[class_name[:-1]] = clazz.module    
            else:
                module_lookup[class_name] = clazz.module
        
        # classes docs
        for clazz_name in classes:
            clazz = markdown_file.getclass(clazz_name)
            if clazz.istemplated:
                clazz.name = clazz.name[:-1]

            clazz.detailed_inline_description = relative_urls(clazz.detailed_inline_description)
            clazz.detailed_inline_description = markdown(clazz.detailed_inline_description, md_extensions)
            clazz.detailed_inline_description = of_classes_to_links(clazz.detailed_inline_description, classes_simple_name, module_lookup)

            clazz.reference = relative_urls(clazz.reference)
            clazz.reference = markdown(clazz.reference, md_extensions)
            clazz.reference = of_classes_to_links(clazz.reference, classes_simple_name, module_lookup)
            
            # methods in class
            for function in clazz.function_list:
                function.description = relative_urls(function.description)
                function.description = of_classes_to_links(function.description, classes_simple_name, module_lookup)
                function.description = markdown(function.description, md_extensions)
                
                function.inlined_description = relative_urls(function.inlined_description)
                function.inlined_description = of_classes_to_links(function.inlined_description, classes_simple_name, module_lookup)
                function.inlined_description = markdown(function.inlined_description, md_extensions)
                for lang in self.kw['translations']: 
                    content_js[lang] += method_to_js(function, clazz, self.site, lang)
                
            # inheritance
            def gen_link(class_name): 
                return "<a href=\"/documentation/" + module_lookup[class_name] + "/" + class_name + "\" class=\"docs_class\" >"+class_name+"</a> " if class_name in module_lookup else ""
            def filter_out_empty(class_name): 
                return class_name!="" 
            clazz.extends = list(filter(filter_out_empty, map(gen_link, clazz.extends)))
                
            # c functions in the class file
            functions_file = markdown_file.getfunctionsfile(clazz.name)
            for function in functions_file.function_list:
                function.description = relative_urls(function.description)
                function.description = of_classes_to_links(function.description, classes_simple_name, module_lookup)
                function.description = markdown(function.description, md_extensions)
                
                function.inlined_description = relative_urls(function.inlined_description)
                function.inlined_description = of_classes_to_links(function.inlined_description, classes_simple_name, module_lookup)
                function.inlined_description = markdown(function.inlined_description, md_extensions)
                for lang in self.kw['translations']:
                    content_js[lang] += function_to_js(function, functions_file, self.site, lang)
                    
            # render template + js for search
            env = {
                "modulename": clazz.name,
                "clazz": clazz,
                "functions": functions_file,
                "classes_list": classes,
                "is_addon": (clazz.name in addon_classes)
            }
            md_file = "documentation/" + module_lookup[class_name] + "/" + class_name + ".markdown"
            for lang in self.kw['translations']:
                env["lang"] = lang
                env["title"] = clazz.name
                env["permalink"] = self.kw['translations'][lang] + '/documentation/' + clazz.module + "/" + clazz.name + "/" 
                short_tdst = os.path.join(self.kw['translations'][lang], 'documentation', clazz.module, clazz.name,"index.html")
                tdst = os.path.normpath(os.path.join(self.kw['output_folder'], short_tdst))
                """yield utils.apply_filters({
                    'basename': self.name,
                    'name': clazz.name,
                    'file_dep': class_template_dep + md_file,
                    'targets': tdst,
                    'actions': [
                        (self.site.render_template, (template_name, tdst, env))
                    ],
                    'clean': True,
                    'uptodate': [utils.config_changed({
                        1: self.kw,
                    })],
                }, self.kw['filters'])"""
                self.site.render_template(class_template, tdst, env)
                content_js[lang] += class_to_js(clazz, self.site, lang)
            
            # add to index core or addons
            if not clazz.module in addon_classes:
                if not clazz.module in core_index.keys():
                    core_index[clazz.module] = []
                if functions_file!=None:
                    for function in functions_file.function_list:
                        clazz.function_list.append(function)
                core_index[clazz.module].append(clazz)
            else:
                if not clazz.module in addons_index.keys():
                    addons_index[clazz.module] = []
                if functions_file!=None:
                    for function in functions_file.function_list:
                        clazz.function_list.append(function)
                addons_index[clazz.module].append(clazz)
            
            
        # generate c functions docs
        function_files = markdown_file.getfunctionsfiles_list()
        for functionfile_name in function_files:
            if functionfile_name in classes_simple_name:
                continue
            functions_file = markdown_file.getfunctionsfile(functionfile_name)

    # might be needed at some point?
    #        functions_file.reference = str(functions_file.reference)
    #        for func in function_files:
    #            functions_file.reference = str.replace(functions_file.reference, class_name, "<a href=\"../"+clazz.module+"/"+class_name+".html\">"+class_name+"</a>")
            
            for function in functions_file.function_list:
                function.description = relative_urls(function.description)
                function.description = of_classes_to_links(function.description, classes_simple_name, module_lookup)
                function.description = markdown(function.description, md_extensions)
                
                function.inlined_description = relative_urls(function.inlined_description)
                function.inlined_description = of_classes_to_links(function.inlined_description, classes_simple_name, module_lookup)
                function.inlined_description = markdown(function.inlined_description, md_extensions)
                for lang in self.kw['translations']:
                    content_js[lang] += function_to_js(function, functions_file, self.site, lang)
                
            # render template + js for search
            env = {
                "modulename": functions_file.name,
                "clazz": None,
                "functions": functions_file,
                "is_addon": (functions_file.name in addon_classes) 
            }
            for lang in self.kw['translations']:
                env["lang"] = lang
                env["title"] = clazz.name
                env["permalink"] = self.kw['translations'][lang] + '/documentation/' + functions_file.module + "/" + functions_file.name + "/" 
                short_tdst = os.path.join(self.kw['translations'][lang], 'documentation', functions_file.module, functions_file.name,"index.html")
                tdst = os.path.normpath(os.path.join(self.kw['output_folder'], short_tdst))
                self.site.render_template(class_template, tdst, env)
                content_js[lang] += functions_file_to_js(functions_file, self.site, lang)
            
            # add to index core or addons
            if not functions_file.module in addon_classes:
                if not functions_file.module in core_index:
                    core_index[functions_file.module] = []
                core_index[functions_file.module].append(functions_file)
            else:
                if not functions_file.module in addons_index:
                    addons_index[functions_file.module] = []
                addons_index[functions_file.module].append(functions_file)
            
        
        # copy images and render intros
        for root, dirs, files in os.walk(directory):
            """ copy images to their folders """
            for name in files:
                file_split = os.path.splitext(name)
                if file_split[1]==".jpeg" or file_split[1]==".jpg" or file_split[1]==".gif" or file_split[1]==".png":
                    try:
                        os.mkdir(os.path.join('_site','documentation',os.path.basename(root)))
                    except:
                        pass
                    shutil.copyfile(os.path.join(root,name), os.path.join('output','documentation',os.path.basename(root),name))
                    
            """ create module introductions """
            for module in dirs:
                if module!="addons":
                    module_intro = os.path.join(root,module,"introduction.markdown")
                    if os.path.isfile(module_intro):
                        module_intro_file = open(module_intro)
                        module_intro_content = module_intro_file.read()
                        module_subtitles[module] = module_intro_content.splitlines()[0].strip('##').strip(' ')
                        module_intro_content = markdown(module_intro_content, md_extensions)
                        for lang in self.kw['translations']:
                            context = {}
                            context["lang"] = lang
                            context["title"] = module
                            context["module"] = module
                            context["intro_content"] = module_intro_content
                            context["permalink"] = self.kw['translations'][lang] + '/documentation/' + module + "/"
                            if lang == self.site.config['DEFAULT_LANG']: 
                                short_tdst = os.path.join('documentation', module, "index.html")
                            else:
                                short_tdst = os.path.join(self.kw['translations'][lang], 'documentation', module, "index.html")
                            tdst = os.path.normpath(os.path.join(self.kw['output_folder'], short_tdst))
                            if module.find("ofx") == 0:
                                context["classes"] = addons_index[module]
                                self.site.render_template(module_template, tdst, context)
                            else:
                                context["classes"] = core_index[module]
                                self.site.render_template(module_template, tdst, context)
                        
                            content_js[lang] += module_to_js(module, module_intro_content, self.site, lang)
                    else:
                        module_subtitles[module] = None
            
        # close js for docs search and save per language
        for lang in self.kw['translations']:
            content_js[lang] += ']};'
            content_js_file = open("output" + lang_prefix(lang, self.site) + "/tipuesearch_content.js","w")
            content_js_file.write(content_js[lang])
            content_js_file.close()
        
        # render index file
        template_name = "documentation.mako"
        for lang in self.kw['translations']:
            #lang_suffix = self.kw['translations'][lang]
            docs_intro_path = os.path.join(docs_dir, "index.md")   
            if lang != self.site.config['DEFAULT_LANG']: 
                docs_intro_lang_path = utils.get_translation_candidate(self.site.config, docs_intro_path, lang)
                p = pathlib.Path(docs_intro_lang_path)
                if p.exists():
                    docs_intro_path = docs_intro_lang_path 
            docs_intro = open(docs_intro_path).read()
            for key in self.site.GLOBAL_CONTEXT.keys():
                if isinstance(self.site.GLOBAL_CONTEXT[key], str):
                   docs_intro = docs_intro.replace('${' + key + '}', self.site.GLOBAL_CONTEXT[key])
            docs_intro = markdown(docs_intro, md_extensions)
            context = {}
            context["lang"] = lang
            context["title"] = "documentation"
            context["docs_intro"] = docs_intro
            context['core'] = core_index
            context['addons'] = addons_index
            context['module_subtitles'] = module_subtitles
            context["permalink"] = self.kw['translations'][lang] + '/documentation/'
            short_tdst = os.path.join(self.kw['translations'][lang], "documentation", "index.html")
            tdst = os.path.normpath(os.path.join(self.kw['output_folder'], short_tdst))
            self.site.render_template(template_name, tdst, context)
        
    def gen_tasks(self):
        self.kw = {
            'strip_indexes': self.site.config['STRIP_INDEXES'],
            'output_folder': self.site.config['OUTPUT_FOLDER'],
            'cache_folder': self.site.config['CACHE_FOLDER'],
            'default_lang': self.site.config['DEFAULT_LANG'],
            'filters': self.site.config['FILTERS'],
            'translations': self.site.config['TRANSLATIONS'],
            'global_context': self.site.GLOBAL_CONTEXT,
            'tzinfo': self.site.tzinfo,
        }
        template_name = "documentation.mako"
        template_dep = self.site.template_system.template_deps(template_name)
        class_template_name = "documentation_class.mako"
        class_template_dep = self.site.template_system.template_deps(class_template_name)
        index_block_template_name = "documentation_index_block.mako"
        index_block_template_dep = self.site.template_system.template_deps(index_block_template_name)
        module_intro_template_name = "documentation_module_intro.mako"
        module_intro_template_dep = self.site.template_system.template_deps(module_intro_template_name)
        tdst = []
        for lang in self.kw['translations']:
            short_tdst = os.path.join(self.kw['translations'][lang], "documentation", "index.html")
            tdst.append(os.path.normpath(os.path.join(self.kw['output_folder'], short_tdst)))
            
        docs_md = []
        directory = os.path.join(self.site.original_cwd, "documentation")
        for root, subFolders, files in os.walk(directory):
            for file in files:
                f = os.path.join(root,file)
                docs_md.append(f)
            
        yield utils.apply_filters({
            'basename': self.name,
            'name': "documentation",
            'file_dep': template_dep + docs_md + class_template_dep + index_block_template_dep + module_intro_template_dep + [__file__, 'conf.py'] ,
            'targets': tdst,
            'actions': [
                (self.create_docs, ())
            ],
            'clean': True,
            'uptodate': [utils.config_changed({
                1: self.kw,
            })],
        }, self.kw['filters'])
    
            
    
