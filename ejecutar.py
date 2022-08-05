from bottle import route, run, template
from bottle import static_file


@route('/')
def home():
    return template('home')

@route('/cards')
def cards():
    return template('cards')


@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='./static')
 

run(host='localhost', debug=True, reloader=True, port=8080)
