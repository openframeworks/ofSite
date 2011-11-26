import markdown_file

modules = markdown_file.list_all_modules()

for module in modules:
    print '//----------------------\n\n'
    print "##" + module + "##\n\n"
    files = markdown_file.list_all_files(module)
    for f in files:
        print "###" + f + "###\n\n"
        print "__visible: true__\n\n"
        print "__advanced: false__\n\n"
    
