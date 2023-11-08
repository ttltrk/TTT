
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [FLASK](https://github.com/ttltrk/TTT/blob/master/PY/WEB/FLASK/FLASK.md)

---

### FLASK_TWT_2

---

* [01_HOW_TO_MAKE_A_WEBSITE](#01_HOW_TO_MAKE_A_WEBSITE)
* [02_HTML_TEMPLATES](#02_HTML_TEMPLATES)
* [03_ADDING_BOOTSTRAP](#03_ADDING_BOOTSTRAP)
* [04_HTTP_METHODS](#04_HTTP_METHODS)
* [05_SESSIONS](#05_SESSIONS)
* [06_MESSAGE_FLASHING](#06_MESSAGE_FLASHING)
* [07_USING_SQLALCHEMY](#07_USING_SQLALCHEMY)
* [08_ADDING_DELETING_UPDATING_USERS](#08_ADDING_DELETING_UPDATING_USERS)
* [09_](#09_)
* [10_](#10_)
* [11_](#11_)
* [12_](#12_)

---

#### 01_HOW_TO_MAKE_A_WEBSITE

```py
from flask import Flask, redirect, url_for

app = Flask(__name__)

@app.route("/")
def home():
    return 'helolelo'

@app.route("/<name>")
def user(name):
    return f"hello {name}"

@app.route("/admin")
def admin():
    return redirect(url_for("home"))


if __name__ == "__main__":
    app.run()
```

---

#### 02_HTML_TEMPLATES
