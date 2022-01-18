
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PROJ](https://github.com/ttltrk/TTT/blob/master/PROJ/PROJ.md)

---

### PY_FLOW

---

```
dripinvesting.org >> csv >> postgre >> flask
```

---

- get the list of dividends
- convert it to csv if it is needed
- upload into the db
- link the flask with postgres

---

* [PREPARE_AND_DB_PART](#PREPARE_AND_DB_PART)
* [FLASK_AND_POSTGRES](#FLASK_AND_POSTGRES)

---

#### PREPARE_AND_DB_PART

```py
#-----------------------------------------------------------------
# mandatory packages
#-----------------------------------------------------------------

import webbrowser
import os
from openpyxl import Workbook, load_workbook
import json
import pandas as pd
import psycopg2 as p2

#-----------------------------------------------------------------
# prepare the file
#-----------------------------------------------------------------

webbrowser.open('https://bit.ly/dividendchampionsexcel')

print('01 - source file load >> DONE')

#-----------------------------------------------------------------
#rename and move the file
#preparing the files - hous-keeping, removing the old/used files
#-----------------------------------------------------------------

os.remove("US_DIV_EX.xlsx")
os.remove("US_DIV_EX.csv")

# Absolute path of a file
old_name = r"C:\****\****\Downloads\U.S.DividendChampions (13).xlsx"
new_name = r"C:\****\****\Desktop\****\****\****\****\US_DIV_EX.xlsx"

# Renaming the file
os.rename(old_name, new_name)

print('02 - rename and file move >> DONE')

#-----------------------------------------------------------------
# preparing/selecting the file/worksheet
#-----------------------------------------------------------------

wb = load_workbook('US_DIV_EX.xlsx')
sheets = wb.sheetnames

sh1 = wb['Champions']

#count the rows and columns
row=sh1.max_row
column=sh1.max_column

#creating the empty lists
l1,l2,l4,l5,l6,l7 = [],[],[],[],[],[]

#-----------------------------------------------------------------
# iterating through the cells
#-----------------------------------------------------------------

#how to reach the 1st column from 4th row
for i in range (4,row+1):
    result1 = sh1.cell(i,1).value
    l1.append(result1)

#how to reach the 2nd column from 4th row
for i in range (4,row+1):
    result2 = sh1.cell(i,2).value
    res2 = result2.replace(",", " ")
    l2.append(res2)

#how to reach the 4th column from 4th row
for i in range (4,row+1):
    result4 = sh1.cell(i,4).value
    l4.append(result4)

#how to reach the 5th column from 4th row
for i in range (4,row+1):
    result5 = sh1.cell(i,5).value
    l5.append(result5)

#how to reach the 6th column from 4th row
for i in range (4,row+1):
    result6 = sh1.cell(i,6).value
    l6.append(result6)

#how to reach the 7th column from 4th row
for i in range (4,row+1):
    result7 = sh1.cell(i,7).value
    l7.append(result7)

#-----------------------------------------------------------------    
# pandas part
#-----------------------------------------------------------------

#adding the headers    
data = {
    'Symbol':l1,
    'Company':l2,
    'Sector': l4,
    'Years': l5,
    'Price': l6,
    'DIV Yield': l7
}

#preparing the dataframe
df = pd.DataFrame(data)

#creating the final file
final = df.to_csv('US_DIV_EX.csv')

print('03 - preparing the worksheet >> DONE')

#-----------------------------------------------------------------    
# DB part
#-----------------------------------------------------------------

# credentials
conn = p2.connect(host="127.0.0.1", database="******", user="******", password="******")
cur = conn.cursor()

#drop table
cur.execute("drop table us_div;")

conn.commit() # <- We MUST commit to reflect the inserted data
cur.close()
conn.close()

print('04 - drop the target table >> DONE')

#create table
conn = p2.connect(host="127.0.0.1", database="******", user="******", password="******")
cur = conn.cursor()

cur.execute("CREATE TABLE us_div (id int, symbol varchar(255), company varchar(255), sector varchar(255), years int, price dec, div_yield dec);")

conn.commit() # <- We MUST commit to reflect the inserted data
cur.close()
conn.close()

print('05 - create the target table >> DONE')

#-----------------------------------------------------------------
# upload the values into the target table
#-----------------------------------------------------------------

conn = p2.connect(host="127.0.0.1", database="******", user="******", password="******")
cur = conn.cursor()

with open('US_DIV_EX.csv', 'r') as f:
    # Notice that we don't need the `csv` module.
    next(f) # Skip the header row.
    cur.copy_from(f, 'us_div', sep=',')

conn.commit() # <- We MUST commit to reflect the inserted data
cur.close()
conn.close()

print('06 - upload the values into the target table >> DONE')
print('1-7 part DONE, start the flask....')

#%run C:\Users\AttilaTorok\Desktop\ADM\MM\PY\GOPAS\FL\flask_sql\app.py
```

---

#### FLASK_AND_POSTGRES

##### db.py

```py
#-----------------------------------------------------------------
# mandatory packages

import psycopg2

#-----------------------------------------------------------------
# postgre connection

conn = psycopg2.connect(host="*******", database="*******", user="*******", password="*******")

#-----------------------------------------------------------------
# separate sql queries

def get_most_expensive():
  cur = conn.cursor()
  cur.execute("select price, company, symbol from us_div order by price desc limit 10")
  most_exps = cur.fetchall()
  #cur.close()
  #conn.close()
  return most_exps

def get_most_cheapest():
  cur = conn.cursor()
  var = 'TDS'
  cur.execute("select price, company, symbol from us_div order by price asc limit 10")
  most_cheaps = cur.fetchall()
  #cur.close()
  #conn.close()
  return most_cheaps

def get_oldest():
  cur = conn.cursor()
  cur.execute("select years, price, company, symbol from us_div order by years desc limit 10")
  oldest = cur.fetchall()
  return oldest

def get_biggest_dy():
  cur = conn.cursor()
  cur.execute("select div_yield, price, company, symbol from us_div order by div_yield desc limit 10")
  biggest_dy = cur.fetchall()
  return biggest_dy

def actual_search(name):
  cur = conn.cursor()
  cur.execute("select * from us_div where symbol = '" + name + "'")
  actualSearch = cur.fetchall()
  return actualSearch
```

##### app.py

```py
#-----------------------------------------------------------------
# mandatory packages

import db
import pandas as pd
import psycopg2 as p2
from flask import Flask, render_template, request, redirect, url_for
from openpyxl import Workbook, load_workbook
import psycopg2
#from flask_restful import Resource, Api

#-----------------------------------------------------------------
# site settings

app = Flask(__name__)
#api = App(app)

@app.route('/', methods=["GET", "POST"])
def index():
    return render_template('base.html')

@app.route('/most_exps', methods=["GET", "POST"])
def most_exps():
    return render_template('most_exps.html',most_exps=db.get_most_expensive())

@app.route('/most_cheaps', methods=["GET", "POST"])
def most_cheaps():
    return render_template('most_cheaps.html',most_cheaps=db.get_most_cheapest())

@app.route('/oldest_papers', methods=["GET", "POST"])
def oldest():
    return render_template('oldest_papers.html',oldest=db.get_oldest())

@app.route('/biggest_dy', methods=["GET", "POST"])
def biggest_dy():
    return render_template('biggest_dy.html',biggest_dy=db.get_biggest_dy())

@app.route('/<name>', methods=["GET", "POST"])
def actual_search(name):
    return render_template('search.html',actual_search=db.actual_search(name))

if __name__ == "__main__":
    app.run(debug=True)
```

#### base.html

```html
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h2>dividend details</h2>
  <a href="http://127.0.0.1:5000/">H</a> | <a href="http://127.0.0.1:5000/most_exps">most_expensive</a> | <a href="http://127.0.0.1:5000/most_cheaps">most_cheapest</a> | <a href="http://127.0.0.1:5000/oldest_papers">oldest_papers</a> | <a href="http://127.0.0.1:5000/biggest_dy">biggest_div_yield</a>
  <div class="mt-4 p-5 bg-primary text-white rounded">
    <h1>dividend details</h1>
	<p>enjoy..</p>
  </div>
</div>

</body>
</html>
```

##### most_exps.html

using jinja template

```html
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h2>dividend details</h2>
  <a href="http://127.0.0.1:5000/">H</a> | <a href="http://127.0.0.1:5000/most_exps">most_expensive</a> | <a href="http://127.0.0.1:5000/most_cheaps">most_cheapest</a> | <a href="http://127.0.0.1:5000/oldest_papers">oldest_papers</a> | <a href="http://127.0.0.1:5000/biggest_dy">biggest_div_yield</a>
  <div class="mt-4 p-5 bg-primary text-white rounded">
    <h1>top 10 most expensive champion dividend</h1>
	<p>below you can find the top 10 most expensive champion dividend </p>
    {% block content %}
      <ul>
      {% for most_exp in most_exps %}
        <li>{{ most_exp }}</li>
      {% endfor %}
      </ul>
    {% endblock %}
  </div>
</div>

</body>
</html>
```

#### most_cheaps.html

```html
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h2>dividend details</h2>
  <a href="http://127.0.0.1:5000/">H</a> | <a href="http://127.0.0.1:5000/most_exps">most_expensive</a> | <a href="http://127.0.0.1:5000/most_cheaps">most_cheapest</a> | <a href="http://127.0.0.1:5000/oldest_papers">oldest_papers</a> | <a href="http://127.0.0.1:5000/biggest_dy">biggest_div_yield</a>
  <div class="mt-4 p-5 bg-primary text-white rounded">
    <h1>top 10 most cheapest champion dividend</h1>
	<p>below you can find the top 10 most cheapest champion dividend </p>
    {% block content %}
      <ul>
      {% for most_cheap in most_cheaps %}
        <li>{{ most_cheap }}</li>
      {% endfor %}
      </ul>
    {% endblock %}
  </div>
</div>

</body>
</html>
```

#### oldest_papers.html

```html
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h2>dividend details</h2>
  <a href="http://127.0.0.1:5000/">H</a> | <a href="http://127.0.0.1:5000/most_exps">most_expensive</a> | <a href="http://127.0.0.1:5000/most_cheaps">most_cheapest</a> | <a href="http://127.0.0.1:5000/oldest_papers">oldest_papers</a> | <a href="http://127.0.0.1:5000/biggest_dy">biggest_div_yield</a>
  <div class="mt-4 p-5 bg-primary text-white rounded">
    <h1>top 10 oldest champion dividend</h1>
	<p>below you can find the top 10 oldest champion dividend </p>
    {% block content %}
      <ul>
      {% for old in oldest %}
        <li>{{ old }}</li>
      {% endfor %}
      </ul>
    {% endblock %}
  </div>
</div>

</body>
</html>
```

#### biggest_dy.html

```html
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h2>dividend details</h2>
  <a href="http://127.0.0.1:5000/">H</a> | <a href="http://127.0.0.1:5000/most_exps">most_expensive</a> | <a href="http://127.0.0.1:5000/most_cheaps">most_cheapest</a> | <a href="http://127.0.0.1:5000/oldest_papers">oldest_papers</a> | <a href="http://127.0.0.1:5000/biggest_dy">biggest_div_yield</a>
  <div class="mt-4 p-5 bg-primary text-white rounded">
    <h1>top 10 biggest dividend yield champion dividend</h1>
	<p>below you can find the top 10 biggest dividend yield champion dividend </p>
    {% block content %}
      <ul>
      {% for biggest in biggest_dy %}
        <li>{{ biggest }}</li>
      {% endfor %}
      </ul>
    {% endblock %}
  </div>
</div>

</body>
</html>
```

#### search.html

```html
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h2>dividend details</h2>
  <a href="http://127.0.0.1:5000/">H</a> | <a href="http://127.0.0.1:5000/most_exps">most_expensive</a> | <a href="http://127.0.0.1:5000/most_cheaps">most_cheapest</a> | <a href="http://127.0.0.1:5000/oldest_papers">oldest_papers</a> | <a href="http://127.0.0.1:5000/biggest_dy">biggest_div_yield</a> | <a href="http://127.0.0.1:5000/actualSearch">search</a>
  <div class="mt-4 p-5 bg-primary text-white rounded">
    <h1>Search</h1>
	<p>below you can find your actaul search... </p>
	{% block content %}
	  <ul>
      {% for search in actual_search %}
        <li>{{ search }}</li>
      {% endfor %}
      </ul>
    {% endblock %}
  </div>
</div>

</body>
</html>
```

[^^^](PY_FLOW)

---
