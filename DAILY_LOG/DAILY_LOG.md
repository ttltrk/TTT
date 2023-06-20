
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

##### 03_WEB_SEVICES

    - [REST_API](https://github.com/ttltrk/TTT/blob/master/PY/WEB/REST_API/REST_API.md)
    - [FLASK](https://github.com/ttltrk/TTT/blob/master/PY/WEB/FLASK/FLASK_BASICS/FLASK_BASICS.md)
    - OWN PROJECT >>

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


##### 04_MONGODB

  - [YTB](https://www.youtube.com/watch?v=E-1xI85Zog8)
  - [W3](https://www.w3schools.com/python/python_mongodb_getstarted.asp)

  ```
  version: 6.06
  mdb shell: 1.10
  ```

##### 05_HADOOP_SPARK

  - [SPARK](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/SPARK/SPARK.md)

##### 06_AWS

  - [AWS](https://github.com/ttltrk/TTT/blob/master/CLOUD/AWS/CCP/CCP.md)

##### 07_TABLEU

---
