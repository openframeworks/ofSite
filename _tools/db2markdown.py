#!/usr/bin/python

import os
import sys
import docs_group
import docs_files
import docs_function
import docs_members
import MySQLdb

docs_root = "/home/arturo/Documentos/new_of_site/_docs"

index = open(docs_root + "/index.markdown",'w')
db = MySQLdb.connect(host='localhost',user='root',passwd='asdqwe34',db='of_site09')
adv_groups = docs_group.list_all(db,'core',True)


def export_vars(db,clazz_file,clazz):
    variables = docs_members.list_all_vars(db,clazz.id)
    for var in variables:
        #if var.visible and not var.advanced
        index.write(var.name+'\n\n')
        clazz_file.write("//----------------------\n\n")
        clazz_file.write( "###" + var.type + " " + var.name + "\n\n")
        clazz_file.write( '_name: ' + var.name + '_\n\n')
        clazz_file.write( '_type: ' + var.type + '_\n\n')
        clazz_file.write( '_access: ' + var.access + '_\n\n')
        clazz_file.write( '_version_started: ' + var.version_started + '_\n\n')
        clazz_file.write( '_version_deprecated: ' + var.version_deprecated + '_\n\n')
        clazz_file.write( '_constant: ' + var.constant + '_\n\n')
        clazz_file.write( '_summary: _\n\n' )
        clazz_file.write( '_visible: ' + ('true' if var.visible else 'false') + '_\n\n' )
        clazz_file.write( '_advanced: ' + ('true' if var.advanced else 'false') + '_\n\n' )
        clazz_file.write( '\n\n_description: _\n\n' )
        if(var.description is not None):
            clazz_file.write( var.description.replace('[code]','\n$$code(lang=c++)\n').replace('[/code]','\n$$/code\n') + "\n\n")
        #clazz_file.write("_end " + method.name + "_\n\n")
        clazz_file.write("\n\n\n\n\n\n\n\n\n\n\n\n")
        
        
def export_methods(db,clazz_file,clazz):
    methods = docs_members.list_all_methods(db,clazz.id)
    for method in methods:
        #if method.visible and not method.advanced
        if len(method.parameters.replace(' ',''))>0:
            index.write(method.name+'(...)\n\n')
        else:
            index.write(method.name+'()\n\n')
        clazz_file.write("//----------------------\n\n")
        clazz_file.write( "###"+method.returns + " " + method.syntax + "\n\n")
        clazz_file.write( '_syntax: ' + method.syntax + '_\n\n')
        clazz_file.write( '_name: ' + method.name + '_\n\n')
        clazz_file.write( '_returns: ' + method.returns + '_\n\n')
        clazz_file.write( '_returns_description: ' + method.returns_description + '_\n\n')
        clazz_file.write( '_parameters: ' + method.parameters.replace('<BR/>',', ').replace('<br/>',', ') + '_\n\n')
        clazz_file.write( '_access: ' + method.access + '_\n\n')
        clazz_file.write( '_version_started: ' + method.version_started + '_\n\n')
        clazz_file.write( '_version_deprecated: ' + method.version_deprecated + '_\n\n')
        clazz_file.write( '_summary: _\n\n' )
        clazz_file.write( '_visible: ' + ('true' if method.visible else 'false') + '_\n\n' )
        clazz_file.write( '_advanced: ' + ('true' if method.advanced else 'false') + '_\n\n' )
        clazz_file.write( '\n\n_description: _\n\n' )
        if(method.description is not None):
            clazz_file.write( method.description.replace('[code]','\n$$code(lang=c++)\n').replace('[/code]','\n$$/code\n') + "\n\n")
        #clazz_file.write("_end " + method.name + "_\n\n")
        clazz_file.write("\n\n\n\n\n\n\n\n\n\n\n\n")

def export_classes(db,group_dir,group):
    classes = docs_files.list_all_classes(db,group.id)
    for clazz in classes:
        print str(clazz.id) + " " + clazz.name + " " + str(clazz.new)
        clazz_file = open(group_dir+"/"+clazz.name+".markdown",'w')
		
        index.write('###' + clazz.name + '###\n\n')
        index.write('__visible: ' + ('true' if clazz.visible else 'false' ) + '__\n\n')            
        index.write('__advanced: ' + ('true' if clazz.advanced else 'false' ) + '__\n\n')            
        index.write('__methods__\n\n')
	
        #clazz_file.write( '<%inherit file="_templates/docs.mako" />\n' )
        clazz_file.write( '#class ' + clazz.name + "\n\n" )
        
        
        clazz_file.write("//----------------------\n\n")
        clazz_file.write( "##Example\n\n\n\n" )
        clazz_file.write("//----------------------\n\n")
        clazz_file.write( "##Reference\n\n\n\n" )
        clazz_file.write("//----------------------\n\n")
        clazz_file.write( "##Methods\n\n\n\n" )
        
        export_methods(db,clazz_file,clazz)
        
                 
        index.write('__variables__\n\n')
        clazz_file.write("//----------------------\n\n")
        clazz_file.write( "##Variables\n\n\n\n" )
        export_vars(db,clazz_file,clazz)
		
        clazz_file.close()	

def export_groups(db,advanced):
    groups = docs_group.list_all(db,'core',advanced)
    for group in groups:
        print str(group.id) + " " + group.name
        group_dir = docs_root + "/" + group.name.replace(' ','_')
        index.write("//----------------------\n\n")
        index.write("##" + group.name + "##\n\n")
        try:
            os.mkdir(group_dir)
        except:
            pass
        export_classes(db,group_dir,group)
        


#index.write( '<%inherit file="_templates/docs.mako" />\n' )
index.write( '\n' )
export_groups(db,False)
export_groups(db,True)
index.close()
