
import os
import re
import logging

from blogofile.cache import bf
import shutil
import sys

import argparse
import glob

sys.path.append(os.getcwd()+"/_filters/asciidoc_template")
from asciidocapi import AsciiDocAPI
import logging
import StringIO
import collections


logger = logging.getLogger("blogofile.post")   

def stripFileLine(line):
    return  line.lstrip(' ').rstrip('\n').rstrip(' ')
    
class AsciiDocArticle:
    def __init__(self,asciidocpath):
        adfile = open(asciidocpath,'r')
        
        outfile = StringIO.StringIO()
        asciidoc = AsciiDocAPI()
        asciidoc.options('--no-header-footer')
        asciidoc.execute(adfile, outfile, backend='html4')
        attributes = asciidoc.asciidoc.document.attributes #.attributes.values
        
        #print attributes
        self.file = os.path.basename(asciidocpath[:asciidocpath.find('.asciidoc')]) + '.html'
        self.date = attributes['date']
        self.title = attributes['doctitle']
        self.summary = attributes['summary']
        self.author = attributes['author']
        self.author_site = attributes['author_site']
        self.body = outfile.getvalue().decode('utf-8','replace').replace('<pre>','<pre><code class="cpp">').replace('</pre>','</code></pre>')
        self.type = 'asciidoc'
        
class MarkdownArticle:
    def __init__(self,markdown):
        mdfile = open(markdown,'r')
        state = 'begin'
        self.file = os.path.basename(markdown[:markdown.find('.markdown')]) + '.html'
        self.date = ''
        self.title = ''
        self.summary = ''
        self.author = ''
        self.author_site = ''
        self.body = ''
        self.type = 'markdown'
        for line in mdfile:
            line = line.decode('utf-8','replace')
            if state=='begin' and stripFileLine(line) =='---':
                state='header'
                continue
            if state=='header' and line.find('date:')==0:
                self.date = stripFileLine(line[line.find(':')+1:])
                continue
            if state=='header' and line.find('title:')==0:
                self.title = stripFileLine(line[line.find(':')+1:])
                continue
            if state=='header' and line.find('summary:')==0:
                self.summary = stripFileLine(line[line.find(':')+1:])
                continue
            if state=='header' and line.find('author:')==0:
                self.author = stripFileLine(line[line.find(':')+1:])
                continue
            if state=='header' and line.find('author_site:')==0:
                self.author_site = stripFileLine(line[line.find(':')+1:])
                continue
            if state=='header' and stripFileLine(line)=='---':
                state = 'body'
                continue     
            if state=='body':
                self.body = self.body + line       
            

def run():
    classes = []
    directory = "_tutorials"
    documentation = bf.config.controllers.tutorials
    categories = []
    
    dirs = os.listdir(directory)
    dirs.sort()
    for catfolder in dirs:
        if not os.path.isdir(os.path.join(directory,catfolder)):
            continue
        articles = []
        category = catfolder[catfolder.find("_")+1:]
        articlesfiles = os.listdir(os.path.join(directory,catfolder));
        articlesfiles.sort()
        for article in articlesfiles:
            file_split = os.path.splitext(article)
            if file_split[1]=='.markdown':
                articleobj = MarkdownArticle(os.path.join(directory,catfolder,article))
                bf.template.materialize_template("tutorial.mako", (os.path.join('tutorials',category),articleobj.file), {'article':articleobj} )
                articles.append(articleobj)
            if file_split[1]=='.asciidoc':
                articleobj = AsciiDocArticle(os.path.join(directory,catfolder,article))
                bf.template.materialize_template("tutorial.mako", (os.path.join('tutorials',category),articleobj.file), {'article':articleobj} )
                articles.append(articleobj)
            if os.path.isdir(os.path.join(directory,catfolder,article)):
                shutil.copytree(os.path.join(directory,catfolder,article),os.path.join('_site','tutorials',category,article))
        categories.append({'category': category, 'articles': articles});
    bf.template.materialize_template("tutorials.mako", ('tutorials',"index.html"), {'categories':categories} )
