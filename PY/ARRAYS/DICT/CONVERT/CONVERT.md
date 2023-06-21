
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [DICT](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/DICT/DICT.md)

---

### CONVERT

---

- [DICT_TO_JSON](#DICT_TO_JSON)
- [JSON_TO_PANDAS](#JSON_TO_PANDAS)

---

#### DICT_TO_JSON

```py
import json

# Data to be written
dictionary ={
  "id": "04",
  "name": "sunil",
  "department": "HR"
}

# Serializing json  
json_object = json.dumps(dictionary, indent = 4)
print(json_object)

>>>
{
    "id": "04",
    "name": "sunil",
    "department": "HR"
}
>>>
```

```py
import json

# Data to be written
dictionary ={
    "name" : "sathiyajith",
    "rollno" : 56,
    "cgpa" : 8.6,
    "phonenumber" : "9976770500"
}

with open("sample.json", "w") as outfile:
    json.dump(dictionary, outfile)

>>>
{"name": "sathiyajith", "rollno": 56, "cgpa": 8.6, "phonenumber": "9976770500"}
>>>
```

[^^^](#CONVERT)

---

#### JSON_TO_PANDAS

```py
import json
import pandas as pd

# Opening JSON file
f = open('sample.json')

# returns JSON object as
# a dictionary
data = json.load(f)

#load the data from json into the lists
l1 = [x for x in data.keys()]
l2 = [x for x in data.values()]

print(l1)
print(l2)
print(' ')

#list into the dictionary again
dic = dict(zip(l1,l2))
print(dic)
print(' ')

myvar = pd.Series(dic)

print(myvar)

# Closing file
f.close()

>>>
['name', 'rollno', 'cgpa', 'phonenumber']
['sathiyajith', 56, 8.6, '9976770500']

{'name': 'sathiyajith', 'rollno': 56, 'cgpa': 8.6, 'phonenumber': '9976770500'}

name           sathiyajith
rollno                  56
cgpa                   8.6
phonenumber     9976770500
dtype: object
>>>
```

[^^^](#CONVERT)

---
