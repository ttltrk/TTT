
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [FLASK](https://github.com/ttltrk/TTT/blob/master/PY/WEB/FLASK/FLASK.md)

---

### FLASK_BASICS

---

```

```

---

* [HELLO_WORLD](#HELLO_WORLD)
* []()
* []()
* []()
* []()

---

#### HELLO_WORLD

```py
import flask

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
