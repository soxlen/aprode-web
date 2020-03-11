from flask import Flask, render_template, request, redirect, url_for, flash
from datetime import datetime
import posts

# initializations
app = Flask(__name__)

# errores
@app.errorhandler(404)
def pagina_no_existe(e):
    return render_template('errors/404.html'), 404

# routes
@app.route('/', methods=['POST','GET'])
def Index():
    recientes = posts.posts_recientes()
    return render_template('index.html', recientes = recientes),200


@app.route('/blog', methods=['POST','GET'])
def Blog():
    post = posts.lista_post()
    recientes = posts.posts_recientes()
    return render_template('blog.html', posts = post, recientes = recientes),200


@app.route('/new_post', methods=['GET','POST'])
def new_post():
    post = []
    if request.method == 'POST':
        post.append(request.form['link'])
        post.append(request.form['titulo'])
        post.append(request.form['descripcion'])
        post.append(request.form['contenido'])
        posts.new_post(post)
        return redirect('/blog')
    return render_template('new_post.html')


@app.route('/new_pagina', methods=['GET','POST'])
def new_pag():
    post = []
    if request.method == 'POST':
        post.append(request.form['link'])
        post.append(request.form['titulo'])
        post.append(request.form['descripcion'])
        post.append(request.form['contenido'])
        posts.new_post(post)
        return redirect('/blog')
    return render_template('new_post.html')


@app.route('/post/<id>', methods=['GET','POST'])
def post(id):
    recientes = posts.posts_recientes()
    data = posts.datapost(id)
    return render_template('blog-details.html', data = data, recientes = recientes)


@app.route('/pagina/<id>', methods=['POST','GET'])
def pagina(id):
    return render_template('pagina.html')


# starting the app
if __name__ == "__main__":
  app.run()
