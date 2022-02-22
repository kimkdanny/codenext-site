from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def hello():
    return render_template('index.html',  user='Sadman')
    
@app.route('/test')
def test():
    return 'Test 1'


