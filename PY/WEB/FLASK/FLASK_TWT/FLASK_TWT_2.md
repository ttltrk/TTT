
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

- 01 - without content

```html
<!doctype html>
<html>
<head>
	<title>Home page</title>
</head>
<body>
	<h1>Home page!</h1>
	<p>Hello!</p>
</body>
</html>
```

```py
from flask import Flask, redirect, url_for, render_template

app = Flask(__name__)

@app.route("/")
def home():
    #load the below mentioned html file
    return render_template("twt_index.html")

if __name__ == "__main__":
    app.run()
```

- 02 with content

```html
<!doctype html>
<html>
<head>
	<title>Home page</title>
</head>
<body>
	<h1>Home page!</h1>
	<p>{{content}}</p>
</body>
</html>
```

```py
from flask import Flask, redirect, url_for, render_template

app = Flask(__name__)

@app.route("/<name>")
def home(name):
    #load the below mentioned html file
    return render_template("twt_index.html", content=name)

if __name__ == "__main__":
    app.run()
```

- 03 with more variable

```html
<!doctype html>
<html>
<head>
	<title>Home page</title>
</head>
<body>
	<h1>Home page!</h1>
	<p>{{content}}</p>
	<p>{{r}}</p>
</body>
</html>
```

```py
from flask import Flask, redirect, url_for, render_template

app = Flask(__name__)

@app.route("/<name>")
def home(name):
    #load the below mentioned html file
    return render_template("twt_index.html", content=name, r=2)

if __name__ == "__main__":
    app.run()
```

- 04 with for loop

```html
<!doctype html>
<html>
<head>
	<title>Home page</title>
</head>
<body>
	<h1>Home page!</h1>
	{% for _ in range(0,10) %}
		<p>Hello</p>
	{% endfor %}
</body>
</html>
```

```py
#02_03

from flask import Flask, redirect, url_for, render_template

app = Flask(__name__)

@app.route("/<name>")
def home(name):
    #load the below mentioned html file
    return render_template("twt_index_loop.html", content=name, r=2)

if __name__ == "__main__":
    app.run()
```

---
