import pymysql

def new_pagina(pag):
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             db='aprode-web',
                             charset='utf8',
                             cursorclass=pymysql.cursors.DictCursor)
    try:
        with connection.cursor() as cursor:
            sql = "INSERT INTO `paginas`(`imagen`, `titulo`, `descripcion`,`contenido`)\
                 VALUES ('"+pag[0]+"','"+pag[1]+"','"+pag[2]+"','"+pag[3]+"')"
            cursor.execute(sql)
            connection.commit()
            connection.close()  
    finally:
        pass


def datapagina(id):
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             db='aprode-web',
                             charset='utf8',
                             cursorclass=pymysql.cursors.DictCursor)
    try:
        with connection.cursor() as cursor:
            sql = "SELECT * FROM `paginas` WHERE `id` = "+id+""
            cursor.execute(sql)
            data= cursor.fetchall()
            if data == ():
                data = ''
            connection.close()
            return data
    finally:
        pass