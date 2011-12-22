import markdown_file

modules = markdown_file.list_all_modules()

for module in modules:
    print '//----------------------\n\n'
    print "##" + module + "##\n\n"
    files = markdown_file.list_all_files(module)
    for f in files:
        onlyfunctionsfile = False
        if f.endswith("_functions"):
            if f[:-10] in files:
                continue
            else:
                f = f[:-10]
                onlyfunctionsfile = True
        print "###" + f + "###\n"
        print "__visible: true__\n"
        print "__advanced: false__\n"
        
        if onlyfunctionsfile:
            functionsfile = markdown_file.getfunctionsfile(f)
            prevfunction = ""
            print '__functions__'
            for function in functionsfile.function_list:
                if prevfunction == function.name:
                    continue
                params = "()" if function.parameters=="" else "(...)"
                print function.name + params + '\n'
                prevfunction = function.name
        print '\n\n\n'
            
    
