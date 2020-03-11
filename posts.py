import pymysql
import pymysql.cursors
import datetime


def new_post(post):
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             db='aprode-web',
                             charset='utf8',
                             cursorclass=pymysql.cursors.DictCursor)
    try:
        with connection.cursor() as cursor:
            sql = "INSERT INTO `post_blog`(`imagen`, `titulo`, `descripcion`,`contenido`)\
                 VALUES ('"+post[0]+"','"+post[1]+"','"+post[2]+"','"+post[3]+"')"
            cursor.execute(sql)
            connection.commit()
            connection.close()   
    finally:
        pass


def lista_post():
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             db='aprode-web',
                             charset='utf8',
                             cursorclass=pymysql.cursors.DictCursor)
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `id`, `imagen`, `titulo`, `descripcion` FROM `post_blog` ORDER BY `post_blog`.`id` DESC"
            cursor.execute(sql)
            data= cursor.fetchall()
            if data == ():
                data = ''
            connection.close()
            return data
    finally:
        pass
        

def posts_recientes():
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             db='aprode-web',
                             charset='utf8',
                             cursorclass=pymysql.cursors.DictCursor)
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `id`, `imagen`, `titulo`, `descripcion` FROM `post_blog` ORDER BY `post_blog`.`id` DESC LIMIT 3"
            cursor.execute(sql)
            data= cursor.fetchall()
            if data == ():
                data = ''
            connection.close()
            return data
    finally:
        pass
        

def datapost(id):
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             db='aprode-web',
                             charset='utf8',
                             cursorclass=pymysql.cursors.DictCursor)
    try:
        with connection.cursor() as cursor:
            sql = "SELECT * FROM `post_blog` WHERE `id` = "+id+""
            cursor.execute(sql)
            data= cursor.fetchall()
            if data == ():
                data = ''
            connection.close()
            return data
    finally:
        pass