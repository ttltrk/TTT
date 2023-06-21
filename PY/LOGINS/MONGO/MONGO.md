
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
* [INSERT_MULTIPLE_DOCU](#INSERT_MULTIPLE_DOCU)
* [INSERT_MULTIPLE_DOCU_SPEC_ID](#INSERT_MULTIPLE_DOCU_SPEC_ID)
* [FIND_ONE](#FIND_ONE)
* [FIND_ALL](#FIND_ALL)
* [QUERY](#QUERY)
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

#find the record_id
print(x.inserted_id)

#find the content
x = mycol.find_one()
print(x)

>>>
['chances']
64919244f77e7a943f53f5ea
{'_id': ObjectId('64918edcf77e7a943f53f5e4'), 'name': 'John', 'address': 'Highway 37'}
>>>
```

If you do not specify an _id field, then MongoDB will add one for you and assign a unique id for each document.

[^^^](#MONGO)

---

#### INSERT_MULTIPLE_DOCU

```py
import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["multiple_db"]
mycol = mydb["customers"]

mylist = [
  { "name": "Amy", "address": "Apple st 652"},
  { "name": "Hannah", "address": "Mountain 21"},
  { "name": "Michael", "address": "Valley 345"},
  { "name": "Sandy", "address": "Ocean blvd 2"},
  { "name": "Betty", "address": "Green Grass 1"},
  { "name": "Richard", "address": "Sky st 331"},
  { "name": "Susan", "address": "One way 98"},
  { "name": "Vicky", "address": "Yellow Garden 2"},
  { "name": "Ben", "address": "Park Lane 38"},
  { "name": "William", "address": "Central st 954"},
  { "name": "Chuck", "address": "Main Road 989"},
  { "name": "Viola", "address": "Sideway 1633"}
]

x = mycol.insert_many(mylist)

#print list of the _id values of the inserted documents:
print(x.inserted_ids)

>>>
[ObjectId('649192fcf77e7a943f53f606'), ObjectId('649192fcf77e7a943f53f607'), ObjectId('649192fcf77e7a943f53f608'), ObjectId('649192fcf77e7a943f53f609'), ObjectId('649192fcf77e7a943f53f60a'), ObjectId('649192fcf77e7a943f53f60b'), ObjectId('649192fcf77e7a943f53f60c'), ObjectId('649192fcf77e7a943f53f60d'), ObjectId('649192fcf77e7a943f53f60e'), ObjectId('649192fcf77e7a943f53f60f'), ObjectId('649192fcf77e7a943f53f610'), ObjectId('649192fcf77e7a943f53f611')]
>>>
```

[^^^](#MONGO)

---

#### INSERT_MULTIPLE_DOCU_SPEC_ID

```py
import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["multipledb_spec"]
mycol = mydb["customers"]

mylist = [
  { "_id": 1, "name": "John", "address": "Highway 37"},
  { "_id": 2, "name": "Peter", "address": "Lowstreet 27"},
  { "_id": 3, "name": "Amy", "address": "Apple st 652"},
  { "_id": 4, "name": "Hannah", "address": "Mountain 21"},
  { "_id": 5, "name": "Michael", "address": "Valley 345"},
  { "_id": 6, "name": "Sandy", "address": "Ocean blvd 2"},
  { "_id": 7, "name": "Betty", "address": "Green Grass 1"},
  { "_id": 8, "name": "Richard", "address": "Sky st 331"},
  { "_id": 9, "name": "Susan", "address": "One way 98"},
  { "_id": 10, "name": "Vicky", "address": "Yellow Garden 2"},
  { "_id": 11, "name": "Ben", "address": "Park Lane 38"},
  { "_id": 12, "name": "William", "address": "Central st 954"},
  { "_id": 13, "name": "Chuck", "address": "Main Road 989"},
  { "_id": 14, "name": "Viola", "address": "Sideway 1633"}
]

x = mycol.insert_many(mylist)

#print list of the _id values of the inserted documents:
print(x.inserted_ids)

>>>
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
>>>
```

[^^^](#MONGO)

---

#### FIND_ONE

```py
import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["multipledb_spec"]
mycol = mydb["customers"]

x = mycol.find_one()

print(x)

>>>
{'_id': 1, 'name': 'John', 'address': 'Highway 37'}
>>>
```

[^^^](#MONGO)

---

#### FIND_ALL

```py
import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["multipledb_spec"]
mycol = mydb["customers"]

for x in mycol.find():
    print(x)

>>>
{'_id': 1, 'name': 'John', 'address': 'Highway 37'}
{'_id': 2, 'name': 'Peter', 'address': 'Lowstreet 27'}
{'_id': 3, 'name': 'Amy', 'address': 'Apple st 652'}
{'_id': 4, 'name': 'Hannah', 'address': 'Mountain 21'}
{'_id': 5, 'name': 'Michael', 'address': 'Valley 345'}
{'_id': 6, 'name': 'Sandy', 'address': 'Ocean blvd 2'}
{'_id': 7, 'name': 'Betty', 'address': 'Green Grass 1'}
{'_id': 8, 'name': 'Richard', 'address': 'Sky st 331'}
{'_id': 9, 'name': 'Susan', 'address': 'One way 98'}
{'_id': 10, 'name': 'Vicky', 'address': 'Yellow Garden 2'}
{'_id': 11, 'name': 'Ben', 'address': 'Park Lane 38'}
{'_id': 12, 'name': 'William', 'address': 'Central st 954'}
{'_id': 13, 'name': 'Chuck', 'address': 'Main Road 989'}
{'_id': 14, 'name': 'Viola', 'address': 'Sideway 1633'}
>>>
```

[^^^](#MONGO)

---

#### QUERY

```py
import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["multipledb_spec"]
mycol = mydb["customers"]

myquery = {'address': 'Apple st 652'}

mydoc = mycol.find(myquery)

for x in mydoc:
  print(x)

>>>
{'_id': 3, 'name': 'Amy', 'address': 'Apple st 652'}
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
