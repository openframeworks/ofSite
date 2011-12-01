#!/usr/bin/python

from lxml import etree
from lxml import objectify
import os
import sys

from docs_class import DocsClass
from markdown_file import getclass,setclass
from docs_members import DocsMethod, DocsVar

of_src = '/home/arturo/Escritorio/openFrameworks/addons'
of_docs = of_src + '/doxygensource/xml/'

currentversion = "007"

def serialize_class(filename):
    xml = objectify.parse(filename)
    doxygen = xml.getroot()

    clazz = doxygen.compounddef
    docs_class = getclass(clazz.compoundname.text)
    
    inheritsfrom = []
    if clazz.find('derivedcompoundref')!=None:
        inheritsfrom = clazz.derivedcompoundref


    if clazz.find('sectiondef')!=None:
        for section in clazz.sectiondef:
            for member in section.memberdef:
                if member.get("kind") == 'enum':
                    pass
                else:
                    if member.get("kind") == 'variable':
                        var = docs_class.var_by_name(member.name.text)
                        if not var:
                            var = DocsVar(0)
                            var.name = member.name.text
                            var.access = member.get("prot")
                            var.version_started = currentversion
                            var.version_deprecated = ""
                            var.constant = member.get("mutable")=="no"
                            var.static = member.get("static")
                            var.clazz = docs_class.name
                            var.type = member.type.ref.text if hasattr(member.type,'ref') else member.type.text
                            docs_class.var_list.append(var)
                    if member.get("kind") == 'function':
                        argstring = str(member.argsstring.text)
                        params = argstring[argstring.find('(')+1:argstring.rfind(')')]
                        returns = member.type.ref.text if hasattr(member.type,'ref') else member.type.text
                        returns = ("" if returns is None else returns)
                        method = docs_class.function_by_signature(member.name.text, returns, params)
                        method.static = member.get("static")
                        method.clazz = docs_class.name
                        method.access = member.get("prot")
                        method.returns = returns
                        if method.new:
                            method.version_started = currentversion
    
    setclass(docs_class)


for root, dirs, files in os.walk(of_docs):
    for name in files:       
        filename = os.path.join(root, name)
        if name.find('class')==0:

            serialize_class(filename)

