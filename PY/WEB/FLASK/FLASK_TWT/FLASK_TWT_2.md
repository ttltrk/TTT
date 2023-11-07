
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [FLASK](https://github.com/ttltrk/TTT/blob/master/PY/WEB/FLASK/FLASK.md)

---

### FLASK_TWT_2

---

#### 01

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
