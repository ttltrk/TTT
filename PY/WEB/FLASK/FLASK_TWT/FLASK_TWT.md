
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [FLASK](https://github.com/ttltrk/TTT/blob/master/PY/WEB/FLASK/FLASK.md)

---

### FLASK_TWT

---

```
- FLASK_TWT

-- website

--- static
--- templates
--- __init__.py
--- auth.py
--- models.py
--- views.py

-- main.py

```

---

#### main.py

```py
from website import create_app

app = create_app()

if __name__ == '__main__':
    app.run(debug=True)
```

[^^^](#FLASK_BASICS)

---

#### __init__.py

```py
from flask import Flask

def create_app():

    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'blablabla'

    from .views import views
    from .auth import auth

    app.register_blueprint(views, url_prefix='/')
    app.register_blueprint(auth, url_prefix='/')

    return app
```

[^^^](#FLASK_BASICS)

---

#### auth.py

```py
from flask import Blueprint

auth = Blueprint('auth', __name__)
```

[^^^](#FLASK_BASICS)

---

#### views.py

```py
from flask import Blueprint

views = Blueprint('views', __name__)

@views.route('/')
def home():
    return "<h1>Test</h1>"
```

[^^^](#FLASK_BASICS)

---
