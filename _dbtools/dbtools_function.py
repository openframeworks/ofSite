
def names(db,classid,advanced):
    cursor=db.cursor()
    sql='SELECT id,name FROM documentation_functions WHERE linktable="class" and linkid= %s and advanced=%s'
    cursor.execute(sql,(classid,advanced))
    functions=cursor.fetchall()
    return functions

def list_all(db,classid,advanced):
    cursor=db.cursor()
    sql='SELECT id,name FROM documentation_functions WHERE linkid=%s and linktable="class" and advanced=%s and visible=1 ORDER BY sortid'
    cursor.execute(sql,(classid,advanced,))
    functions=cursor.fetchall()
    function_list = []
    for dbfunction in functions:
        function = DocsFunction(dbfunction[0])
        function.name = dbfunction[1]
        function.new = 1
        function_list.append(function)
    return function_list
