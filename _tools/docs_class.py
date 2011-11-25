#!/usr/bin/python
import docs_functions
import sys
from docs_members import DocsMethod,DocsVar
sys.path.append( "/var/www/test_new_docs/" )

import os
import fileinput
import MySQLdb
import traceback
from HTMLTemplate import Template

class DocsClass:
    def __init__(self,classid):
        self.id = classid
        self.module = ""
        self.name = ""
        self.new = 0
        self.advanced = False
        self.visible = True
        self.example = ""
        self.reference = ""
        self.function_list = []
        self.var_list = []
        

    def functions(self):
        return self.function_list  
         
    def get_parameter_types(self, parameters_list):
        parameters_types = []
        if len(parameters_list.strip(' '))==0:
            return parameters_types
        for p in parameters_list.split(','):
            parameter = ""
            for e in p.split(' ')[:len(p.split(' '))-1]:
                parameter = parameter + " " + e
            parameters_types.append(parameter)
        return parameters_types
    
    def get_parameter_names(self,parameters_list):
        parameters_names = []
        if len(parameters_list.strip(' '))==0:
            return parameters_names
        for p in parameters_list.split(','):
            p = p.strip(' ')
            if p.find('=')!=-1:
                e = p.split('=')[0].strip(' ')
                parameters_names.append(e.split(' ')[len(e.split(' '))-1] + ' = ' + p.split('=')[1])
            else:
                parameters_names.append(p.split(' ')[len(p.split(' '))-1])
        return parameters_names
    
    def function_by_signature(self, name, returns, parameters):
        method = DocsMethod(0)
        method.name = name
        method.parameters = parameters
        method.syntax = name + "("
        for p in self.get_parameter_names(parameters):
            method.syntax = method.syntax + p + ", "
        method.syntax = method.syntax.rstrip(', ')
        method.syntax = method.syntax + ")"
        method.returns = returns
        method.new = True
        found = False
        for function in self.function_list:
            if function.name == name:
                dst_parameters_types = self.get_parameter_types(function.parameters)
                src_parameters_types = self.get_parameter_types(parameters)

                if(len(src_parameters_types)==len(dst_parameters_types)):
                    a = -1
                    for i in range(len(src_parameters_types)):
                        if src_parameters_types[i] != dst_parameters_types[i]:
                            break
                        else:
                            a = i
                    if a == len(src_parameters_types)-1:
                        function.new = False
                        return function
                        found = True
                        #print 'found ' + function.name
                        break
        if not found:
            #print 'not found ' + method.name
            #clazzmethod = method
            self.function_list.append(method)   
        return method

    def var_by_name(self, name):
        for var in self.var_list:
            if var.name == name:
                return var
        return False
        
        
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
    docs_class.reference = clazz[0][1]
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
