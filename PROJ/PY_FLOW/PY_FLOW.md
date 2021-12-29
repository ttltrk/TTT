
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
* [PREPARE_THE_FILE_BEFORE_IMPORT](#PREPARE_THE_FILE_BEFORE_IMPORT)
* [MOVING_CLEARED_DATA_INTO_A_NEW_FILE](#MOVING_CLEARED_DATA_INTO_A_NEW_FILE)
* [DROP_TABLE_IN_POSTGRES](#DROP_TABLE_IN_POSTGRES)
* [CREATE_TABLE_IN_POSTGRES](#CREATE_TABLE_IN_POSTGRES)
* [IMPORT_CSV_INTO_POSTGRES](#IMPORT_CSV_INTO_POSTGRES)
* [FLASK_AND_POSTGRES](#FLASK_AND_POSTGRES)

---

#### EXTRACT_DIVIDENDS

url: https://bit.ly/dividendchampionsexcel

```py
import webbrowser

webbrowser.open('https://bit.ly/dividendchampionsexcel')
```

[^^^](PY_FLOW)

---

#### PREPARE_THE_FILE_BEFORE_IMPORT

```py
#download the source file
import webbrowser

webbrowser.open('https://bit.ly/dividendchampionsexcel')
```

```py
#rename and move the file
import os

# Absolute path of a file
old_name = r"C:\bla\bla\bla\U.S.DividendChampions.xlsx"
new_name = r"C:\bla\bla\bla\US_DIV_EX.xlsx"

# Renaming the file
os.rename(old_name, new_name)
```

[^^^](PY_FLOW)

---

#### MOVING_CLEARED_DATA_INTO_A_NEW_FILE

```py
from openpyxl import Workbook, load_workbook
import pandas as pd

wb = load_workbook('US_DIV_EX.xlsx')
sheets = wb.sheetnames

sh1 = wb['Champions']

row=sh1.max_row
column=sh1.max_column

#creating the empty lists
l1,l2,l4,l5,l6,l7 = [],[],[],[],[],[]

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

#print(df)

#creating the final file
final = df.to_csv('new_data.csv')
```

[^^^](PY_FLOW)

---

#### DROP_TABLE_IN_POSTGRES

```py
import psycopg2 as p2
import pandas as pd

conn = p2.connect(host="*****", database="*****", user="*****", password="*****")
cur = conn.cursor()

cur.execute("drop table us_div;")

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
cur.execute("CREATE TABLE us_div (id int, symbol varchar(255), company varchar(255), sector varchar(255), years int, price dec, div_yield dec);")

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

with open('new_data.csv', 'r') as f:
    # Notice that we don't need the `csv` module.
    next(f) # Skip the header row.
    cur.copy_from(f, 'us_div', sep=',')

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
    return render_template('base.html')

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

using jinja template

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
