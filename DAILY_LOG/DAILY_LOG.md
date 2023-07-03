
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

#### TAKEDA

```
- Experience with one of the following languages:  Java, Scala, or Python
- Understanding of Web Services as well as JSON formats
- Working knowledge of SQL and Relational Databases
- Experience with one of the following NoSQL datastores (Cassandra, MongoDB, Neo4J, …)
- Experience with concepts of Hadoop and Spark
- Understanding of AWS (S3, EC2, Redshift, EMR, Athena) - desired
- Experience with a Rapid UI tools:  EX: Tableau – desired
```

##### WHY

```
- Im more or less 40, rather more than less :)
- I have to choose, what I want to be in life, still dont know, but I try to Working
  on my skills on daily basis
- mental and physical jelth
```

```
- Experience with one of the following languages:  Java, Scala, or Python
```

##### 01_PYTHON

  - IBM
    - rowcounts
    - ssh_logins
    - stg_checks

  - OWN
    - tiny etl
    - codewars

  - PACKAGES
    - [numpy](https://github.com/ttltrk/TTT/blob/master/FLASHCARDS/PYTHON_FLASH/PYTHON_FLASH.md#numpy)
    - [pandas](https://github.com/ttltrk/TTT/blob/master/FLASHCARDS/PYTHON_FLASH/PYTHON_FLASH.md#pandas)
    - [matplotlib](https://github.com/ttltrk/TTT/blob/master/FLASHCARDS/PYTHON_FLASH/PYTHON_FLASH.md#matplotlib)

  - FWK:
    - flask

```py
def takeda(l,n):

    items = len(l)
    junk = items%n
    pure_list = l[:-junk]

    print(pure_list)


    ll,res = [],[]
    x = 0

    while x < n:
        ll.append(pure_list[:n])
        print(ll)
        res.append(ll)
        print(res)
        ll.clear()
        x+=1



takeda([1,2,3,4,5,6,7,8,9,10],3)
```

```
- Working knowledge of SQL and Relational Databases
```

##### 02_SQL

  - POSTGRES >> https://github.com/ttltrk/TTT/blob/master/PSQ/PSQ.md
  - SQL >> https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md

  ```
  DDL – Data Definition Language.
    CREATE, ALTER, DROP, TRUNCATE, RENAME are the DDL commands

  DML – Data Manipulation Language.
    INSERT, UPDATE, DELETE, MERGE are the DML commands.

  DRL/DQL – Data Retrieval Language/Data Query Language.
    SELECT, WHERE, AND OR NOT, ORDER BY, LIMIT, MIN MAX, COUNT AVG SUM, BETWEEN, IN, LIKE, JOIN,
    UNION, GROUP BY

  TCL – Transaction Query Language.
    COMMIT, ROLLBACK, SAVEPOINT, ROLLBACK TO are the TCL commands.

  DCL – Data Control Language.
    GRANT, REVOKE, AUDIT, COMMENT, ANALYZE are the DCL commands.

  SCL – Session Control Language.
    ALTER SESSION,SET ROLL are the SCL commands.
  ```

```
- Understanding of Web Services as well as JSON formats
```

##### 03_WEB_SEVICES

    - [REST_API](https://github.com/ttltrk/TTT/blob/master/PY/WEB/REST_API/REST_API.md)
    - [FLASK](https://github.com/ttltrk/TTT/blob/master/PY/WEB/FLASK/FLASK_BASICS/FLASK_BASICS.md)
    - OWN PROJECT
    - [W3_JSON](https://www.w3schools.com/js/js_json_intro.asp)

    - [DICT_TO_JSON](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/DICT/CONVERT/CONVERT.md)

    - what I know:
      - using rest with flask and postman, send back info using rest
    - how I used:
      - sending info via api and handled by postman

    ```
    @app.route('/most_exps', methods=["GET", "POST"])
    def most_exps():
      return render_template('most_exps.html',most_exps=db.get_most_expensive())

    def get_most_expensive():
      cur = conn.cursor()
      cur.execute("select price, company, symbol from us_div order by price desc limit 10")
      most_exps = cur.fetchall()
      #cur.close()
      #conn.close()
      return most_exps
    ```

```
- Experience with one of the following NoSQL datastores (Cassandra, MongoDB, Neo4J, …)
```

##### 04_MONGODB

  - [YTB](https://www.youtube.com/watch?v=E-1xI85Zog8)
  - [W3](https://www.w3schools.com/python/python_mongodb_getstarted.asp)
  - [OWN](https://github.com/ttltrk/TTT/blob/master/PY/LOGINS/MONGO/MONGO.md)

  ```
  version: 6.06
  mdb shell: 1.10
  ```

```
- Experience with concepts of Hadoop and Spark
```

##### 05_HADOOP_SPARK

  - [SPARK](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/SPARK/SPARK.md)
  - [SPARK_RDD](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/BIG_DATA/BIG_DATA.md)

  - SPARK

    - using via google collab
    - installed via aws s3 to jupyter notebook

    - load the csv into a dataframe
    - using selects
    - how to use sql easly with pyspark >> createOrReplaceTempView

```
- Understanding of AWS (S3, EC2, Redshift, EMR, Athena) - desired
```

##### 06_AWS

  - [AWS](https://github.com/ttltrk/TTT/blob/master/CLOUD/AWS/CCP/CCP.md)

  - working on my AWS certification
  - installed spark via aws s3

##### 07_TABLEU

---
