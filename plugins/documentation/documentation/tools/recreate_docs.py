import markdown_file
addons = markdown_file.list_all_addons()
classes = markdown_file.getclass_list()
for clazz_name in classes:
	clazz = markdown_file.getclass(clazz_name,True)
	markdown_file.setclass(clazz,clazz.module in addons)

function_files = markdown_file.getfunctionsfiles_list()
for function_file_name in function_files:
	functions_file = markdown_file.getfunctionsfile(function_file_name)
	markdown_file.setfunctionsfile(functions_file, functions_file.module in addons)
