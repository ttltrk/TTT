
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

#### JSON

---

> JSON is a syntax for storing and exchanging data.
>
> JSON is text, written with JavaScript object notation.

---

##### JSON in Python

Python has a built-in package called json, which can be used to work with JSON data.

```py
import json
```

[^^^](#JSON)

---

##### Parse JSON - Convert from JSON to Python

If you have a JSON string, you can parse it by using the ```json.loads()``` method.
The result will be a Python dictionary.

```py
import json

# some JSON:
x =  '{ "name":"John", "age":30, "city":"New York"}'

# parse x:
y = json.loads(x)

# the result is a Python dictionary:
print(y["age"])

>>>
30
>>>
```

[^^^](#JSON)

---

##### Convert from Python to JSON

If you have a Python object, you can convert it into a JSON string by using the ```json.dumps()``` method.

```py
import json

# a Python object (dict):
x = {
  "name": "John",
  "age": 30,
  "city": "New York"
}

# convert into JSON:
y = json.dumps(x)

# the result is a JSON string:
print(y)

>>>
{"name": "John", "age": 30, "city": "New York"}
>>>
```


You can convert Python objects of the following types, into JSON strings:

- dict
- list
- tuple
- string
- int
- float
- True
- False
- None

```py
import json

print(json.dumps({"name": "John", "age": 30}))
print(json.dumps(["apple", "bananas"]))
print(json.dumps(("apple", "bananas")))
print(json.dumps("hello"))
print(json.dumps(42))
print(json.dumps(31.76))
print(json.dumps(True))
print(json.dumps(False))
print(json.dumps(None))

>>>
{"name": "John", "age": 30}
["apple", "bananas"]
["apple", "bananas"]
"hello"
42
31.76
true
false
null
>>>
```

When you convert from Python to JSON, Python objects are converted into the JSON (JavaScript) equivalent:

| Python | JSON |
| --- | --- |
| dict	| Object |
| list	| Array |
| tuple	| Array |
| str	| String |
| int	| Number |
| float	| Number |
| True	| true |
| False	| false |
| None	| null |

[^^^](#JSON)

---

[^^^](#JSON)

---

[^^^](#JSON)

---
