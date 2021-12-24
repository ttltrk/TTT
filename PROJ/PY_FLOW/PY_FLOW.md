
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PROJ](https://github.com/ttltrk/TTT/blob/master/PROJ/PROJ.md)

---

### PY_FLOW

---

```
yfinance >> csv >> postgre >> flask
```

---

- get the list of dividends
- convert it to csv if it is needed
- upload into the db
- link the flask with postgres

---

* [EXTRACT_DIVIDENDS](#EXTRACT_DIVIDENDS)
* [DROP_TABLE_IN_POSTGRES](#DROP_TABLE_IN_POSTGRES)
* [CREATE_TABLE_IN_POSTGRES](#CREATE_TABLE_IN_POSTGRES)
* [IMPORT_CSV_INTO_POSTGRES](#IMPORT_CSV_INTO_POSTGRES)
* [FLASK_AND_POSTGRES](#FLASK_AND_POSTGRES)

---

#### EXTRACT_DIVIDENDS

url: https://bit.ly/dividendchampionsexcel

[^^^](PY_FLOW)

---

#### DROP_TABLE_IN_POSTGRES

```py
import psycopg2 as p2
import pandas as pd

conn = p2.connect(host="*****", database="*****", user="*****", password="*****")

cur = conn.cursor()
cur.execute("drop table trk_test_xy;")

conn.commit() # <- We MUST commit to reflect the inserted data
cur.close()
conn.close()
```

[^^^](PY_FLOW)

---

#### CREATE_TABLE_IN_POSTGRES

```py
import psycopg2 as p2
import pandas as pd

conn = p2.connect(host="*****", database="*****", user="*****", password="*****")
cur = conn.cursor()

#create table
cur.execute("CREATE TABLE trk_test_xy (personid int, lastname varchar(255), firstname varchar(255), \
address varchar(255), city varchar(255));")

conn.commit() # <- We MUST commit to reflect the inserted data
cur.close()
conn.close()
```

[^^^](PY_FLOW)

---

#### IMPORT_CSV_INTO_POSTGRES

```py
import psycopg2 as p2
import pandas as pd

conn = p2.connect(host="*****", database="*****", user="*****", password="*****")
cur = conn.cursor()

with open('test.csv', 'r') as f:
    # Notice that we don't need the `csv` module.
    next(f) # Skip the header row.
    cur.copy_from(f, 'trk_test_xy', sep=',')

conn.commit() # <- We MUST commit to reflect the inserted data
cur.close()
conn.close()
```

---

#### FLASK_AND_POSTGRES

##### db.py

```py
import psycopg2

def get_all_jobs():
  conn = psycopg2.connect(host="******", database="*****", user="*****", password="*****")
  cur = conn.cursor()
  cur.execute("select * from blablabla")
  jobs = cur.fetchall()
  cur.close()
  conn.close()
  return jobs
```

##### app.py

```py
from flask import Flask, render_template
import db

app = Flask(__name__)

@app.route('/', methods=["GET", "POST"])
def index():
    return "hello"

@app.route('/jobs', methods=["GET", "POST"])
def jobs():
    return render_template('jobs.html', jobs=db.get_all_jobs())

if __name__ == "__main__":
    app.run(debug=True)
```

#### base.html

```html
<!DOCTYPE html>
<header>$jobs</header>
<body></body>
```

##### jobs.html (in the templates folder)

```html
<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style>li:nth-child(odd) { background: rgb(233, 233, 240); }</style>
    <style>li:nth-child(even) { background: rgb(212, 212, 236); }</style>
</head>
<body
<!--Print each job from the Postgres "Jobs" database | "Listings" table -->

//{% block content %}
//    <ul>
//    {% for job in jobs %}
//        <li>{{ job }}</li>
//        
//    {% endfor %}
//    </ul>
//{% endblock %}
</body>
```

[^^^](PY_FLOW)

---
