
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [FLASK](https://github.com/ttltrk/TTT/blob/master/PY/WEB/FLASK/FLASK.md)

---

### FLASK_HTML_TEMPLATE

---

```

```

---

* [FLASK_HTML_TEMP](#FLASK_HTML_TEMP)
* [FLASK_HTML_TEMP_VAR_01](#FLASK_HTML_TEMP_VAR_01)
* [FLASK_HTML_TEMP_VAR_02](#FLASK_HTML_TEMP_VAR_02)
* [FLASK_HTML_TEMP_VAR_03](#FLASK_HTML_TEMP_VAR_03)

---

#### FLASK_HTML_TEMP

```py
from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    return render_template('basic.html')

if __name__ == '__main__':
    app.run()
```

[^^^](#FLASK_HTML_TEMPLATE)

---

#### FLASK_HTML_TEMP_VAR_01

```py
from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    name="trk"
    return render_template('basic.html',my_var1=name)

if __name__ == '__main__':
    app.run()

'''
html part

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>
</head>

<body>
	<h1>My name as String = {{my_var1}}</h1>
</body>

</html>
'''
```

[^^^](#FLASK_HTML_TEMPLATE)

---

#### FLASK_HTML_TEMP_VAR_02

```py
from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    name="trk"
    letters=list(name)
    return render_template('basic.html',my_var1=name, my_var2=letters)

if __name__ == '__main__':
    app.run()

'''
HTML part

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>
</head>

<body>
	<h1>My name as String = {{my_var1}}</h1>
	<h1>My name as List = {{my_var2}}</h1>
	<h1>My first char of my name is = {{my_var2[0]}}</h1>
</body>

</html>
'''
```

[^^^](#FLASK_HTML_TEMPLATE)

---

#### FLASK_HTML_TEMP_VAR_03

```py
from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    name="trk"
    letters=list(name)
    pup_dictionary={'pup_name':'Sammy'}
    return render_template('basic.html',my_var1=name, my_var2=letters, my_var3=pup_dictionary)

if __name__ == '__main__':
    app.run()

'''
HTML part

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>
</head>

<body>
	<h1>My name as String = {{my_var1}}</h1>
	<h1>My name as List = {{my_var2}}</h1>
	<h1>My first char of my name is = {{my_var2[0]}}</h1>
	<h1>Dictionary = {{my_var3}}</h1>
	<h1>name of the pup is = {{my_var3['pup_name']}}</h1>
</body>

</html>
'''
```

[^^^](#FLASK_HTML_TEMPLATE)

---
