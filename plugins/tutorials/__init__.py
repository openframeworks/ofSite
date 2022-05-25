from nikola.plugin_categories import Task
from nikola import utils
import os
import time
import re
import logging

import shutil
import sys

import argparse
import glob

import logging
import collections
import pathlib
import markdown

"""
sys.path.append(os.path.join(os.path.dirname(__file__),"asciidoc_template"))
from asciidocapi import AsciiDocAPI
"""

logger = logging.getLogger("blogofile.post")   

def stripFileLine(line):
    return  line.lstrip(' ').rstrip('\n').rstrip(' ')
        
class MarkdownArticle:
    def __init__(self,markdown, directory, lang, is_translation):
        mdfile = open(markdown,'r')
        state = 'begin'
        self.file = markdown
        if is_translation:
            self.path = os.path.splitext(markdown[len(directory)+1: markdown.find('.markdown')].lower())[0] + '/'
        else:
            self.path = markdown[len(directory)+1: markdown.find('.markdown')].lower() + '/'
        self.date = ''
        self.title = ''
        self.summary = ''
        self.author = ''
        self.author_site = ''
        self.translator = ''
        self.translator_site = ''
        self.translated_from = ''
        self.body = ''
        self.type = 'markdown'
        self.lang = lang
        self.type = 'tutorial'
        self.modification_date = time.ctime(os.path.getmtime(markdown))
        self.translations = {}
        self.original = None
        self.original_newer = False
        for line in mdfile:
            #line = line.decode('utf-8','replace')
            if state=='begin' and stripFileLine(line).strip(' ') =='---':
                state='header'
                continue
            if state=='header' and line.find('date:')!=-1:
                self.date = stripFileLine(line[line.find(':')+1:]).strip(' ')
                continue
            if state=='header' and line.find('title:')!=-1:
                self.title = stripFileLine(line[line.find(':')+1:]).strip(' ')
                continue
            if state=='header' and line.find('summary:')!=-1:
                self.summary = stripFileLine(line[line.find(':')+1:]).strip(' ')
                continue
            if state=='header' and line.find('author:')!=-1:
                self.author = stripFileLine(line[line.find(':')+1:]).strip(' ')
                continue
            if state=='header' and line.find('author_site:')!=-1:
                self.author_site = stripFileLine(line[line.find(':')+1:]).strip(' ')
                continue
            if state=='header' and line.find('translator:')!=-1:
                self.translator = stripFileLine(line[line.find(':')+1:]).strip(' ')
                continue
            if state=='header' and line.find('translator_site:')!=-1:
                self.translator_site = stripFileLine(line[line.find(':')+1:]).strip(' ')
                continue
            if state=='header' and line.find('translated_from:')!=-1:
                self.translated_from = stripFileLine(line[line.find(':')+1:]).strip(' ')
                continue
            if state=='header' and line.find('type:')!=-1:
                self.type = stripFileLine(line[line.find(':')+1:]).strip(' ')
                continue
            if state=='header' and stripFileLine(line).strip(' ')=='---':
                return  
                   
class AsciidocArticle:
    def __init__(self,asciidoc,directory,lang,is_translation):
        mdfile = open(asciidoc,'r')
        self.file = asciidoc
        if is_translation:
            self.path = os.path.splitext(asciidoc[len(directory)+1:asciidoc.find('.asciidoc')].lower())[0] + '/'
        else:
            self.path = asciidoc[len(directory)+1:asciidoc.find('.asciidoc')].lower() + '/'
        self.date = ''
        self.title = ''
        self.summary = ''
        self.author = ''
        self.author_site = ''
        self.translator = ''
        self.translator_site = ''
        self.body = ''
        self.type = 'asciidoc'
        self.lang = lang
        self.translations = {}
        for line in mdfile:
            if line.find(':date:')!=-1:
                self.date = stripFileLine(line[line[1:].find(':')+2:]).strip(' ')
                continue
            if line.find(':title:')!=-1:
                self.title = stripFileLine(line[line[1:].find(':')+2:]).strip(' ')
                continue
            if line.find(':summary:')!=-1:
                self.summary = stripFileLine(line[line[1:].find(':')+2:]).strip(' ')
                continue
            if line.find(':author:')!=-1:
                self.author = stripFileLine(line[line[1:].find(':')+2:]).strip(' ')
                continue
            if line.find(':author_site:')!=-1:
                self.author_site = stripFileLine(line[line[1:].find(':')+2:]).strip(' ')
                continue
            if line.find(':translator:')!=-1:
                self.translator = stripFileLine(line[line[1:].find(':')+2:]).strip(' ')
                continue
            if line.find(':translator_site:')!=-1:
                self.translator_site = stripFileLine(line[line[1:].find(':')+2:]).strip(' ')
                continue
            if stripFileLine(line).find(":")!=0:
                return   

def create_file(in_path, out_path):
    try:
        os.makedirs(os.path.dirname(out_path))
    except:
        pass
    shutil.copyfile(in_path, out_path)
    


class TutorialsTask(Task):
    """Generates the tutorials contents."""

    name = "tutorials"
    description = "Generate OF tutorials"
    
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
        tasks = {}
        classes = []
        folder_name = "learning"
        directory = os.path.join(self.site.original_cwd, folder_name)
        template_name = "tutorials.mako"
        categories = []
        
        dirs = os.listdir(directory)
        dirs.sort()
        files = []
        for catfolder in dirs:
            if not os.path.isdir(os.path.join(directory,catfolder)):
                continue
            articles = []
            translations = []
            category = catfolder[catfolder.find("_")+1:]
            articlesfiles = os.listdir(os.path.join(directory,catfolder));
            articlesfiles.sort()
            for article in articlesfiles:
                file_split = os.path.splitext(article)
                extension = file_split[1]
                lang_split = article.split(".")
                lang = self.site.config['DEFAULT_LANG'] if len(lang_split)<3 else lang_split[1]
                is_translation = lang != self.site.config['DEFAULT_LANG']
                folder = os.path.join(directory,catfolder,article)
                if extension=='.markdown':
                    path = os.path.join(directory,catfolder,article)
                    files += [path]
                    articleobj = MarkdownArticle(path, directory, lang, is_translation)
                    if not is_translation:
                        articles.append(articleobj)
                    else:
                        translations.append(articleobj)
                elif extension=='.asciidoc':
                    path = os.path.join(directory,catfolder,article)
                    files += [path]
                    articleobj = AsciidocArticle(path, directory, lang, is_translation)
                    if not is_translation:
                        articles.append(articleobj)
                    else:
                        translations.append(articleobj)
                elif os.path.isdir(folder):
                    for lang in self.kw['translations']:
                        if lang == self.site.config['DEFAULT_LANG']: 
                            out_folder = os.path.join(self.site.original_cwd, 'output',folder_name,catfolder,article.lower())
                        else:
                            out_folder = os.path.join(self.site.original_cwd, 'output',lang,folder_name,catfolder,article.lower())
                            
                        for root, dirs, file_ins in os.walk(folder):
                            for f in file_ins:
                                in_path = os.path.join(root,f)
                                out_path = os.path.join(out_folder, f)
                                yield utils.apply_filters({
                                    'basename': self.name,
                                    'name': in_path + "." + lang,
                                    'file_dep': [in_path, __file__],
                                    'targets': [out_path],
                                    'actions': [
                                        (create_file, (in_path, out_path))
                                    ],
                                    'clean': True,
                                    'uptodate': [utils.config_changed({
                                        1: self.kw,
                                    })],
                                }, self.kw['filters'])
            
                
            def find_translations(article):
                article_file_name = os.path.splitext(article.file)[0]
                it = filter((lambda possible_translation: os.path.splitext(os.path.splitext(possible_translation.file)[0])[0] == article_file_name), translations)
                article_translations = {}
                for translation in it:
                    translation.original = article
                    article_translations[translation.lang] = translation
                return article_translations
                
            def collect_translations(article):
                article.translations = find_translations(article)
                return article
                
            articles = list(map(collect_translations, articles))


            categories.append({'category': category, 'articles': articles});
            
        for lang in self.kw['translations']:

            ### -----------------------------------
            ### 3) BOTTOM SECTION: GUIDES FROM OF-BOOK ###

            of_book_path = os.path.join(directory, "of_book.md")
            if lang != self.site.config['DEFAULT_LANG']:
                of_book_lang_path = utils.get_translation_candidate(self.site.config, of_book_path, lang)
                p = pathlib.Path(of_book_lang_path)
                if p.exists():
                    of_book_path = of_book_lang_path
            of_book = open(of_book_path).read()
            

            ### -----------------------------------
            ### 4) BOTTOM SECTION: how to improve the doc ###

            contributing_to_docs_path = os.path.join(directory, "contributing_to_docs.md")
            if lang != self.site.config['DEFAULT_LANG']:
                contributing_to_docs_lang_path = utils.get_translation_candidate(self.site.config, contributing_to_docs_path, lang)
                p = pathlib.Path(contributing_to_docs_lang_path)
                if p.exists():
                    contributing_to_docs_path = contributing_to_docs_lang_path
            contributing_to_docs = markdown.markdown(open(contributing_to_docs_path).read())


            context = {}
            context["lang"] = lang
            if lang == self.site.config['DEFAULT_LANG']: 
                context["permalink"] = '/' + folder_name + '/'
            else:
                context["permalink"] = '/' + lang + '/' + folder_name + '/'
            context["of_book"] = of_book
            context["contributing_to_docs"] = contributing_to_docs
            context["title"] = "learning"
            context['categories'] = categories
            short_tdst = os.path.join(self.kw['translations'][lang], folder_name, "index.html")
            tdst = os.path.normpath(os.path.join(self.kw['output_folder'], short_tdst))
            template_dep = self.site.template_system.template_deps(template_name)
            template_dep += [contributing_to_docs_path]
            template_dep += files
            template_dep += [__file__]
            template_dep += [os.path.join(self.site.original_cwd, "messages", "of_messages_" + lang + ".py")]
            yield utils.apply_filters({
                'basename': self.name,
                'name': tdst,
                'file_dep': template_dep,
                'targets': [tdst],
                'actions': [
                    (self.site.render_template, (template_name, tdst, context))
                ],
                'clean': True,
                'uptodate': [utils.config_changed({
                    1: self.kw,
                })],
            }, self.kw['filters'])


