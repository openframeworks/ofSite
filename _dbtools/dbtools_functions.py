import MySQLdb

def names(db,classid):
    cursor=db.cursor()
    sql='SELECT name FROM docs_functions WHERE linktable="class" and linkid= %s'
    cursor.execute(sql,(classid,))
    functions=cursor.fetchall()
    return functions
