
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### CODEWARS

---

8 kyu

* [String_Templates_BugFixing5](#String_Templates_BugFixing5)
* [Vowel_remover](#Vowel_remover)
* [](#)
* [](#)

7 kyu

* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

6 kyu

* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)


---

#### String_Templates_BugFixing5

8 kyu

- [link](https://www.codewars.com/kata/55c90cad4b0fe31a7200001f/train/python)

```
Oh no! Timmy hasn't followed instructions very carefully and forgot how to use the new String Template feature, Help Timmy with his string template so it works as he expects!
```

```py
# DONE - https://www.codewars.com/kata/55c90cad4b0fe31a7200001f/train/python
def build_string(*args):
    return f"I like %s!" % ', '.join(map(str, args))

build_string('Cheese','Milk','Chocolate')

>>>
'I like Cheese, Milk, Chocolate!'
>>>
```

[^^^](#CODEWARS)

---

---

#### Vowel_remover

8 kyu

- [link](https://www.codewars.com/kata/5547929140907378f9000039/train/python)

```
Create a function called shortcut to remove all the lowercase vowels in a given string.
```

```
"hello"     -->  "hll"
"codewars"  -->  "cdwrs"
"goodbye"   -->  "gdby"
"HELLO"     -->  "HELLO"
```

```py
a = "szia szia Hello mivan"
m = ['e', 'u', 'i', 'o', 'a']

l = []
l2 = []
l3 = []

l.append(a)
l1 = [i for item in l for i in item.split()]
print(l1)

ll = len(l1)
x = 0
while x < ll:
    if l1[x].islower():
        l1[x] = "kicsi"    
    l3.append(l1[x])
    x += 1

print(l3)
str1 = ' '.join(l3)            
print(str1)
```

```
['szia', 'szia', 'Hello', 'mivan']
['kicsi', 'kicsi', 'Hello', 'kicsi']
kicsi kicsi Hello kicsi
```

[^^^](#CODEWARS)

---
