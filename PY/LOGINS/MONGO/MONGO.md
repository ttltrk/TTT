
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [LOGINS](https://github.com/ttltrk/TTT/blob/master/PY/LOGINS/LOGINS.md)

---

### MONGO

---

```

```

---

* [LINKS](#LINKS)
* [COMMAND_LINE](#COMMAND_LINE)
* [CREATE_DB](#CREATE_DB)
* [CHECK_DBS](#CHECK_DBS)
* [CREATE_COLLECTION](#CREATE_COLLECTION)
* []()
* []()
* []()
* []()

---

```
MongoDB stores data in JSON-like documents, which makes the database very flexible and scalable.
```

---

#### LINKS

- YT

* [MongoDB with Python Crash Course - Tutorial for Beginners](https://www.youtube.com/watch?v=E-1xI85Zog8)

---

#### COMMAND_LINE

```
C:\Users\ZZ01SD693>mongosh
Current Mongosh Log ID: 64918abb815573a2c8e28284
Connecting to:          mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+1.10.0
Using MongoDB:          6.0.6
Using Mongosh:          1.10.0

For mongosh info see: https://docs.mongodb.com/mongodb-shell/


To help improve our products, anonymous usage data is collected and sent to MongoDB periodically (https://www.mongodb.com/legal/privacy-policy).
You can opt-out by running the disableTelemetry() command.

------
   The server generated these startup warnings when booting
   2023-06-20T11:17:08.366+02:00: Access control is not enabled for the database. Read and write access to data and configuration is unrestricted
------

test> show dbs
admin       40.00 KiB
config      72.00 KiB
gigigi      72.00 KiB
local       40.00 KiB
mydatabase  40.00 KiB
trkdb       40.00 KiB
test> use cmd_db
switched to db cmd_db
```

In MongoDB, a database is not created until it gets content!


[^^^](#MONGO)

---

#### CREATE_DB

To create a database in MongoDB, start by creating a MongoClient object, then specify a connection URL with the correct ip address and the name of the database you want to create.

```py
import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")

mydb = myclient["test_db"]
```

[^^^](#MONGO)

---

#### CHECK_DBS

```py
import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")

print(myclient.list_database_names())

>>>
['admin', 'config', 'gigigi', 'local', 'mydatabase', 'trkdb']
>>>
```

[^^^](#MONGO)

---

#### CREATE_COLLECTION

```py
### td

import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")

#create db
mydb = myclient["takeda"]

#create collection
mycol = mydb["chances"]

#insert data into collection
mydict = { "name": "John", "address": "Highway 37" }
x = mycol.insert_one(mydict)

#check the collection
print(mydb.list_collection_names())

#find the content
x = mycol.find_one()
print(x)

>>>
['chances']
{'_id': ObjectId('64918edcf77e7a943f53f5e4'), 'name': 'John', 'address': 'Highway 37'}
>>>
```

[^^^](#MONGO)

---

####

```py

```

[^^^](#MONGO)

---

####

```py

```

[^^^](#MONGO)

---

####

```py

```

[^^^](#MONGO)

---
