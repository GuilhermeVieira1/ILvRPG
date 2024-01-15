from flask import Flask, render_template
from rotas.main import Main
from rotas.mapa import Mapa
from rotas.ficha import Ficha
from rotas.personagem import Personagem
from rotas.campanha import Campanha
from rotas.classe import Classe
from rotas.item import Item
from rotas.comunidade import Comunidade
from rotas.artistica import Artistica
from rotas.game import Game
from rotas.assinatura import Assinatura
from rotas.teste import Teste

app = Flask(__name__, template_folder='pages')

@app.route('/')
def rotaMain():
    return Main()

@app.route('/login')
def rotaLogin():
    return render_template('login.html')

@app.route('/mapa')
def rotaMapa():
    return Mapa()

@app.route('/ficha')
def rotaFicha():
    return Ficha()

@app.route('/personagem')
def rotaPersonagem():
    return Personagem()

@app.route('/campanha')
def rotaCampanha():
    return Campanha()

@app.route('/classe')
def rotaClasse():
    return Classe()

@app.route('/item')
def rotaItem():
    return Item()

@app.route('/comunidade')
def rotaComunidade():
    return Comunidade()

@app.route('/artistica')
def rotaArtistica():
    return Artistica()

@app.route('/game')
def rotaGame():
    return Game()

@app.route('/assinatura')
def rotaAssinatura():
    return Assinatura()

@app.route('/teste')
def rotaTeste():
    return Teste()

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3001, debug=True)