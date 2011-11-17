#!/usr/bin/python
import docs_functions
import sys
sys.path.append( "/var/www/test_new_docs/" )

import os
import fileinput
import MySQLdb
import traceback
from HTMLTemplate import Template

class DocsClass:
    def __init__(self,classid):
        self.id = classid
        self.name = ""
        self.new = 0
        self.advanced = False
        self.visible = True
        self.function_list = []
        

    def functions(self):
        return self.function_list      


def list_all(db,fileid):
    cursor=db.cursor()
    sql='SELECT id,name,visible,advanced FROM docs_class WHERE fileid=%s '
    cursor.execute(sql,(fileid,))
    classes=cursor.fetchall()
    class_list = []
    for dbclass in classes:
        clazz = DocsClass(dbclass[0])
        clazz.name = dbclass[1]
        clazz.visible = dbclass[2]
        clazz.advanced = dbclass[3]
    return classes

def getClass(db,classid):
    cursor=db.cursor()
    sql='SELECT name,description FROM docs_class WHERE id=%s'
    cursor.execute(sql,(classid,))
    clazz=cursor.fetchall()
    docs_class = DocsClass(classid)
    docs_class.name = clazz[0][0]
    docs_class.description = clazz[0][1]
    return docs_class

def renderFunctionsDetail(htmlFunction, function):
    htmlFunction.name.content = function.name
    htmlFunction.description.content = function.description
    htmlFunction.syntax.content = function.syntax

def renderClassDetail(tem,clazz):
    tem.docs_class.name.content = clazz.name
    tem.docs_class.description.content = clazz.description
    tem.docs_class.function.repeat(renderFunctionsDetail,clazz.functions())

def class_detail():
    try:
        templates_path = str(os.path.join(os.path.dirname(__file__), 'templates'))

        file = open(templates_path + '/class.html')
        db=MySQLdb.connect(host='localhost',user='root',passwd='asdqwe34',db='of_site09')

        template = Template(renderClassDetail, str(file.read()))
        clazz = getClass(db, 1)
        html = str(template.render(clazz))

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

        html = class_detail()

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
