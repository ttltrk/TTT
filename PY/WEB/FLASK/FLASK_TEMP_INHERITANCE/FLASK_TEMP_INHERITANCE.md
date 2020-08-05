
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [FLASK](https://github.com/ttltrk/TTT/blob/master/PY/WEB/FLASK/FLASK.md)

---

### FLASK_TEMP_INHERITANCE

---

```

```

---

* [FLASK_TMP_INH](#FLASK_TMP_INH)

---

#### FLASK_TMP_INH

```py
from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    return render_template('home.html')

@app.route('/puppy/<name>')
def pup_name(name):
    return render_template('puppy.html',myvar1=name)

if __name__ == '__main__':
    app.run()

'''

////////////////////////////////////////////////////////////////////////
//base.html

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Puppy rock</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Puppies Rock!</a>
	</nav>

	{% block content %}

	{% endblock %}

</body>

</html>

////////////////////////////////////////////////////////////////////////
//home.html

{% extends "base.html" %}

{% block content %}
	<h1>This is the hompage</h1>
	<h2>go to /puppy/name</h2>
{% endblock %}

////////////////////////////////////////////////////////////////////////
//puppy.html

{% extends "base.html" %}

{% block content %}
	<h1>This is the puppy page for: {{myvar1}}</h1>
{% endblock %}

////////////////////////////////////////////////////////////////////////

'''
```

[^^^](#FLASK_TEMP_INHERITANCE)

---
