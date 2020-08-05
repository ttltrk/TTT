
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [FLASK](https://github.com/ttltrk/TTT/blob/master/PY/WEB/FLASK/FLASK.md)

---

### FLASK_BASICS

---

```

```

---

* [HELLO_WORLD](#HELLO_WORLD)
* [ADD_LINKS](#ADD_LINKS)
* [DYNAMIC_ROW](#DYNAMIC_ROW)

---

#### HELLO_WORLD

```py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return '<h1>Hello Puppy!</h1>'

if __name__ == '__main__':
    app.run()
```

[^^^](#FLASK_BASICS)

---

#### ADD_LINKS

```py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return '<h1>Hello Puppy!</h1>'

@app.route('/information')
def info():
    return '<h1>Puppies are cute!</h1>'

if __name__ == '__main__':
    app.run()
```

[^^^](#FLASK_BASICS)

---

#### DYNAMIC_ROW

```py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return '<h1>Hello Puppy!</h1>'

@app.route('/information')
def info():
    return '<h1>Puppies are cute!</h1>'

@app.route('/puppy/<name>')
def puppy(name):
    #return "<h1>This is a page for {}</h1>".format(name)
    return "Upper case: {}".format(name.upper())

if __name__ == '__main__':
    app.run()
```

[^^^](#FLASK_BASICS)

---
