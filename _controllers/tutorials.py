
import os
import re
import logging

import blogofile_bf as bf
import shutil
import sys

import argparse
import shutil
import glob

import sets

logger = logging.getLogger("blogofile.post")   

def stripFileLine(line):
    return  line.lstrip(' ').rstrip('\n').rstrip(' ')

class Article:
    def __init__(self,markdown):
        mdfile = open(markdown,'r')
        state = 'begin'
        self.file = os.path.basename(markdown[:markdown.find('.markdown')]) + '.html'
        self.date = ''
        self.title = ''
        self.summary = ''
        self.body = ''
        for line in mdfile:
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

    for root, dirs, files in os.walk(directory):
        dirs.sort()
        for name in dirs:
            if len(os.listdir(os.path.join(root,name)))>0:
                categories.append(name[name.find("_")+1:])
    
    bf.writer.materialize_template("tutorials.mako", ('tutorials',"index.html"), {'categories':categories} )
    
    for catfolder in os.listdir(directory):
        if not os.path.isdir(os.path.join(directory,catfolder)):
            continue
        articles = []
        category = catfolder[catfolder.find("_")+1:]
        for article in os.listdir(os.path.join(directory,catfolder)):
            file_split = os.path.splitext(article)
            if file_split[1]=='.markdown':
                article = Article(os.path.join(directory,catfolder,article))
                bf.writer.materialize_template("tutorial.mako", (os.path.join('tutorials',category),article.file), {'categories':categories,'article':article} )
                articles.append(article)
        bf.writer.materialize_template("tutorials_category.mako", (os.path.join('tutorials',category),"index.html"), {'categories':categories,'category':category,'articles':articles} )
