import markdown_file

addons = markdown_file.list_all_addons()

for addon in addons:
    print '//----------------------\n\n'
    print "##" + addon + "##\n\n"
    files = markdown_file.list_all_addon_files(addon)
    for f in files:
        print "###" + f + "###\n\n"
        print "__visible: true__\n\n"
        print "__advanced: false__\n\n"
    
