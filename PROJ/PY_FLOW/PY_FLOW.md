
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

#### base.html (in the templates folder)

```html
<!DOCTYPE html>
<header>$jobs</header>
<html>

    <head>
        <title>My first blog post</title>
    </head>

    <body>

        <h1>My first blog post</h1>
        <h2>This is my first blog post</h2>

        <p>
          This is very <strong>strong</strong> text! I would like to <em>emphasize</em> how important it is.<br> And also never <u>forget</u>.<br>
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,
        </p>

        <a href="http://127.0.0.1:5000/jobs">check the divs</a>

        <h2>HTML is amazing</h2>

        <p>
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,
        </p>

        <p>Loretta Howell</p>

    </body>

</html>
```

##### jobs.html (in the templates folder)

```html
<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style>li:nth-child(odd) { background: rgb(233, 233, 240); }</style>
    <style>li:nth-child(even) { background: rgb(212, 212, 236); }</style>
</head>
<body>
<a href="http://127.0.0.1:5000/">HOME</a>
<!--Print each job from the Postgres "Jobs" database | "Listings" table -->

{% block content %}
    <ul>
    {% for job in jobs %}
        <li>{{ job }}</li>

    {% endfor %}
    </ul>
{% endblock %}
</body>
```

[^^^](PY_FLOW)

---
