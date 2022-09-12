from bottle import route, run, template
from bottle import static_file
import random


@route('/')
def home():
    return template('home')


@route('/cards')
def cards():
    return template('cards')


@route('/modal')
def modal():
    return template('modal')


@route('/contenido-modal')
def contenido_modal():
    return template('contenido-modal')


@route('/ok')
def ok():
    return "ok" 


@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='./static')


lista_de_numeros = ['10/12/123']

@route('/listas')
def listas():
    global lista_de_numeros
    return template('listas', lista_de_numeros=lista_de_numeros, cantidad=len(lista_de_numeros))


@route('/agregar')
def agregar():
    global lista_de_numeros

    lista_de_numeros.append(str(random.randint(1000, 2000)))
    return template('post-agregar', lista_de_numeros=lista_de_numeros, cantidad=len(lista_de_numeros))

run(host='localhost', debug=True, reloader=True, port=8080)
