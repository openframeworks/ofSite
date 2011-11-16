#!/usr/bin/python

from lxml import etree
from lxml import objectify
import os
import sys

of_src = '/home/arturo/Escritorio/openFrameworks/libs/openFrameworks/'
of_docs = of_src + 'doxygensource/xml/'
index = open('docs/' + "index.html.mako",'w')

def serialize_class(filename):
    xml = objectify.parse(filename)
    doxygen = xml.getroot()

    clazz = doxygen.compounddef

    classname = clazz.compoundname.text
    
    f = open('docs/' + classname + ".html.mako",'w')
    
    index.write("[" + classname + "](" + classname + ".html)\n\n")
    
    f.write( '<%inherit file="_templates/docs.mako" />\n' )
    f.write( '___' + classname + "___\n" )
    
    inheritsfrom = []
    if clazz.find('derivedcompoundref')!=None:
        inheritsfrom = clazz.derivedcompoundref

    variables = []
    functions = []
    enums     = []

    if clazz.find('sectiondef')!=None:
        for section in clazz.sectiondef:
            for member in section.memberdef:
                #if section.get("kind") == public TODO: access, virtual, pure virtual
                if member.get("kind") == 'enum':
                    pass
                else:
                    f.write( "$$code(lang=c++)\n" )
                    if member.get("kind") == 'variable':
                        f.write( str(member.type.text) + " " + str(member.name.text) + "\n" )
                    if member.get("kind") == 'function':
                        f.write( str(member.type.text) + " " + str(member.name.text) + str(member.argsstring.text) + "\n" )
                    f.write( "$$/code\n\n\n\n" )
    
    f.close()


index.write( '<%inherit file="_templates/docs.mako" />\n' )
for root, dirs, files in os.walk(of_docs):
    for name in files:       
        filename = os.path.join(root, name)
        if name.find('class')==0:

            serialize_class(filename)

