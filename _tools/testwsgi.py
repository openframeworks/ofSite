#!/usr/bin/python

import sys
sys.path.append( "/var/www/test_new_documentation/" )

import os
import fileinput
import documentation_group

import MySQLdb
import traceback
from HTMLTemplate import Template


def renderFunction(functionLink, function):
    functionLink.link.content = function.name
    functionLink.link.atts['href'] = 'function?id' + str(function.id)
    if function.new:
        functionLink.link.atts['class'] += ' new'

def renderClass(htmlclass, doc_class):
    htmlclass.name.content = doc_class.name
    htmlclass.name.atts['href'] = 'class?id' + str(doc_class.id)
    htmlclass.function.repeat(renderFunction, doc_class.functions())

def renderGroup(htmlgroup, group):
    htmlgroup.name.content = group.name
    htmlgroup.doc_class.repeat(renderClass, group.classes())
    htmlgroup.function.repeat(renderFunction, group.functions())

def renderIndex(tem, groups):
    tem.group.repeat(renderGroup, groups)

def index():
    try:
        templates_path = str(os.path.join(os.path.dirname(__file__), 'templates'))

        file = open(templates_path + '/index.html')
        db=MySQLdb.connect(host='localhost',user='root',passwd='asdqwe34',db='of_site09')

        template = Template(renderIndex, str(file.read()))
        groups = documentation_group.list_all(db,"core", 0)
        html = str(template.render(groups))

    except Exception as inst:
        exc_type, exc_value, exc_traceback = sys.exc_info()
        error = str(inst)           # __str__ allows args to printed directly
        error += "<br/>"
        error += str(traceback.format_exception(exc_type, exc_value,
                                          exc_traceback))
        error.replace('\n',"<br/>")

        return "Unexpected error:<br/>", error
    return [html]

def application(environ, start_response):
    template = ""
    try:
        start_response('200 OK', [('Content-Type', 'text/html')])

        html = index()

    except Exception as inst:
        exc_type, exc_value, exc_traceback = sys.exc_info()
        error = str(inst)           # __str__ allows args to printed directly
        error += "<br/>"
        error += repr(traceback.format_exception(exc_type, exc_value,
                                          exc_traceback))
        error.replace('\n',"<br/>")

        return "Unexpected error:<br/>", error
    return html

if __name__ == '__main__':
    from wsgiref.handlers import CGIHandler
    CGIHandler().run(application)

