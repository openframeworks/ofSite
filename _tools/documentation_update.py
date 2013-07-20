#!/usr/bin/python

from lxml import etree
from lxml import objectify
import os
import sys

from documentation_class import DocsClass
from markdown_file import getclass,setclass,getfunctionsfile,setfunctionsfile
from documentation_members import DocsMethod, DocsVar
from documentation_function import DocsFunctionsFile, DocsFunction

of_src = '/home/arturo/Desktop/openFrameworks/libs/openFrameworks/'
of_documentation = of_src + 'build/xml/'
documentation_root = '/home/arturo/Documents/ofSite/documentation/'
#index = open(documentation_root + "index.html.mako",'w')


missing_functions = []

currentversion = "0073"


def update_moved_functions(filename):
    xml = objectify.parse(filename)
    doxygen = xml.getroot()
    
    xmlfunctionsfile = doxygen.compounddef

    
    if xmlfunctionsfile.find('sectiondef')!=None:
        if len([ s for s in xmlfunctionsfile.sectiondef if s.get('kind')=='func'])>0:
            file_split = os.path.splitext(xmlfunctionsfile.compoundname.text)
            functionsfile = getfunctionsfile(file_split[0])
            for section in xmlfunctionsfile.sectiondef:
                if section.get('kind')=='func':
                    for xmlfunction in section.memberdef:
                        for function in missing_functions:
                            if function.name == xmlfunction.name.text:
                                argstring = str(xmlfunction.argsstring.text)
                                params = argstring[argstring.find('(')+1:argstring.rfind(')')]
                                returns = xmlfunction.type.ref.text if hasattr(xmlfunction.type,'ref') else xmlfunction.type.text
                                moved_function = functionsfile.function_by_signature(xmlfunction.name.text, returns, params)
                                moved_function.returns = returns
                                moved_function.description = moved_function.description + '\n\n' + function.description
                                print "moved function: " + function.name
                                
            setfunctionsfile(functionsfile)
    
    
            
def serialize_functionsfile(filename):
    xml = objectify.parse(filename)
    doxygen = xml.getroot()
    
    xmlfunctionsfile = doxygen.compounddef

    
    if xmlfunctionsfile.find('sectiondef')!=None:
        if len([ s for s in xmlfunctionsfile.sectiondef if s.get('kind')=='func'])>0:
            print '\n'
            file_split = os.path.splitext(xmlfunctionsfile.compoundname.text)
            print file_split[0]
            functionsfile = getfunctionsfile(file_split[0])
            print 'new: ' + str(functionsfile.new)
            functions_fromxml = []
            for section in xmlfunctionsfile.sectiondef:
                if section.get('kind')=='func':
                    for xmlfunction in section.memberdef:
                        argstring = str(xmlfunction.argsstring.text)
                        params = argstring[argstring.find('(')+1:argstring.rfind(')')]
                        returns = xmlfunction.type.ref.text if hasattr(xmlfunction.type,'ref') else xmlfunction.type.text
                        function = functionsfile.function_by_signature(xmlfunction.name.text, returns, params)
                        #function.description = function.description.replace("~~~~{.brush cpp}","~~~~{.cpp}").replace('</pre>',"~~~~")
                        function.description = function.description.replace('<p>','').replace('</p>','').replace('<code>','').replace('</code>','').replace('<pre>','')
                        function.returns = returns
                        functions_fromxml.append(function.name)
                        
                        #print function.returns + " " + function.name + xmlfunction.argsstring.text + " new: " + str(function.new)
            
            print "missing functions"
            thisfile_missing_functions = []
            #[f for f in functionsfile.function_list if f not in functions_fromxml.function_list]
            for function in functionsfile.function_list:
                if not function.name in functions_fromxml:
                    print function.name+"("+function.parameters+")"
                    missing_functions.append(function)
                    thisfile_missing_functions.append(function)
            
            for function in thisfile_missing_functions:
                functionsfile.function_list.remove(function)
                
            deprecated_functions = []
            for function in functionsfile.function_list:
                if function.name.find("OF_DEPRECATED_MSG")!=-1:
                    deprecated_functions.append(function)
            for function in deprecated_functions:
                functionsfile.function_list.remove(function);
                        
            functionsfile.function_list.sort(key=lambda function: function.name)
            setfunctionsfile(functionsfile)
                        


def serialize_class(filename):
    print filename
    xml = objectify.parse(filename)
    doxygen = xml.getroot()

    clazz = doxygen.compounddef
    documentation_class = getclass(clazz.compoundname.text)
    
    #f = open('documentation/' + classname + ".html.mako",'w')
    
    #index.write("[" + classname + "](" + classname + ".html)\n\n")
    
    #f.write( '<%inherit file="_templates/documentation.mako" />\n' )
    #f.write( '___' + classname + "___\n" )
    
    inheritsfrom = []
    if clazz.find('derivedcompoundref')!=None:
        inheritsfrom = clazz.derivedcompoundref


    if clazz.find('sectiondef')!=None:
        for section in clazz.sectiondef:
            for member in section.memberdef:
                #if section.get("kind") == public TODO: access, virtual, pure virtual
                if member.get("kind") == 'enum':
                    pass
                else:
                    #f.write( "$$code(lang=c++)\n" )
                    if member.get("kind") == 'variable':
                        var = documentation_class.var_by_name(member.name.text)
                        if not var:
                            var = DocsVar(0)
                            var.name = member.name.text
                            var.access = member.get("prot")
                            var.version_started = currentversion
                            var.version_deprecated = ""
                            var.constant = member.get("mutable")=="no"
                            var.static = member.get("static")
                            var.clazz = documentation_class.name
                            var.type = member.type.ref.text if hasattr(member.type,'ref') else member.type.text
                            documentation_class.var_list.append(var)
                        #f.write( str(member.type.text) + " " + str(member.name.text) + "\n" )
                    if member.get("kind") == 'function' and member.name.text.find("OF_DEPRECATED_MSG")==-1:
                        argstring = str(member.argsstring.text)
                        params = argstring[argstring.find('(')+1:argstring.rfind(')')]
                        returns = member.type.ref.text if hasattr(member.type,'ref') else member.type.text
                        returns = ("" if returns is None else returns)
                        method = documentation_class.function_by_signature(member.name.text, returns, params)
                        method.static = member.get("static")
                        method.clazz = documentation_class.name
                        method.access = member.get("prot")
                        method.returns = returns
                        #method.description = method.description.replace("~~~~{.brush: cpp}","~~~~{.cpp}").replace('</pre>',"~~~~")
                        method.description = method.description.replace('<p>','').replace('</p>','').replace('<code>','').replace('</code>','').replace('<pre>','')
                        if method.new:
                            print "new method " + method.name + " in " + method.clazz
                            method.version_started = currentversion
                        #f.write( str(member.type.text) + " " + str(member.name.text) + str(member.argsstring.text) + "\n" )
                    """if member.name.text.find("OF_DEPRECATED_MSG")!=-1:
                        print "found deprecated function " + member.name.text
                        print "argstring = " + str(member.argsstring.text)
                        print "params = " + member.argsstring.text[member.argsstring.text.find('(')+1:member.argsstring.text.rfind(')')]
                        returns = member.type.ref.text if hasattr(member.type,'ref') else member.type.text
                        print "returns = " + ("" if returns is None else returns)"""
                    #f.write( "$$/code\n\n\n\n" )
    
    #f.close()
    deprecated_methods = []
    for method in documentation_class.function_list:
        if method.name.find("OF_DEPRECATED_MSG")!=-1:
            deprecated_methods.append(method)
    for method in deprecated_methods:
        documentation_class.function_list.remove(method);
        
    documentation_class.function_list.sort(key=lambda function: function.name)
    documentation_class.var_list.sort(key=lambda variable: variable.name)
    setclass(documentation_class)


#index.write( '<%inherit file="_templates/documentation.mako" />\n' )
dir_count=0
file_count=0
for root, dirs, files in os.walk(of_documentation):
    dir_count+=1
    for name in files:       
        file_count+=1
        filename = os.path.join(root, name)
        if name.find('class')==0:
            serialize_class(filename)
        elif name.find('of_')==0 and name.find('8h.xml')!=-1:
            serialize_functionsfile(filename)

for root, dirs, files in os.walk(of_documentation):
    dir_count+=1
    for name in files:       
        file_count+=1
        filename = os.path.join(root, name)
        if name.find('of_')==0 and name.find('8h.xml')!=-1:
            update_moved_functions(filename)

print ""+str(dir_count)+" dirs/"+str(file_count)+" files"

