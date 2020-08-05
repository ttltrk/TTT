
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [FLASK](https://github.com/ttltrk/TTT/blob/master/PY/WEB/FLASK/FLASK.md)

---

### FLASK_HTML_TEMPLATE

---

```

```

---

* [FLASK_LIST](#FLASK_LIST)
* [FLASK_LIST_WITH_FOR_LOOP](#FLASK_LIST_WITH_FOR_LOOP)
* [FLASK_LIST_WITH_IF_ELSE](#FLASK_LIST_WITH_IF_ELSE)
* [USER_LOGIN](#USER_LOGIN)

---

#### FLASK_LIST

```py
from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    l=[1,2,3,4,5]
    return render_template('basic.html',flaskList=l)

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
	<h1>{{flaskList}}</h1>
</body>

</html>
'''
```

[^^^](#FLASK_HTML_TEMPLATE)

---

#### FLASK_LIST_WITH_FOR_LOOP

```py
from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    l=[1,2,3,4,5]
    return render_template('basic.html',flaskList=l)

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
	<ul>
		{% for item in flaskList %}
		<li>{{item}}</li>
		{% endfor %}
	</ul>
</body>

</html>
'''
```

[^^^](#FLASK_HTML_TEMPLATE)

---

#### FLASK_LIST_WITH_IF_ELSE

```py
from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    puppies=['boby','pupu','rufus']
    return render_template('basic.html',flaskList=puppies)

if __name__ == '__main__':
    app.run()

'''
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>
</head>

<body>
	<ul>
		{% for item in flaskList %}
		<li>{{item}}</li>
		{% endfor %}
	</ul>

	{% if 'rufus' in flaskList %}
		<p>Found you Rufus</p>
	{% else %}
		<p>hmm...rufus is not in the list</p>
	{% endif %}
</body>

</html>
'''
```

[^^^](#FLASK_HTML_TEMPLATE)

---

#### USER_LOGIN

```py
from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    user_logged_in=True
    return render_template('basic.html',flaskList=user_logged_in)

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
	{% if flaskList %}
		<p>Welcome</p>
	{% else %}
		<p>Please log in</p>
	{% endif %}
</body>

</html>
'''
```

[^^^](#FLASK_HTML_TEMPLATE)

---
