
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [DICT](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/DICT/DICT.md)

---

### CONVERT

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

---
