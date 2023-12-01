
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [OOP](https://github.com/ttltrk/TTT/blob/master/PY/OOP/OOP.md)

---

### OOP - CREATE_CLASSES

---

```PY
# position, name, age, level, salary
se1 = ["Software Engineer", "Max", 20, "Junior", 5000]
se2 = ["Software Engineer", "Lisa", 25, "Senior", 7000]
```

```py
#class
class SoftwareEngineer:

    def __init__(self, name, age, level, salary):
        #instance attributes
        self.name = name
        self.age = age
        self.level = level
        self.salary = salary

#instance
se1 = SoftwareEngineer("Max", 20, "Junior", 5000)
print(se1.name, se1.age)

>>>
Max 20
>>>
```

```py
#class
class SoftwareEngineer:

    #class attribute
    alias = "Keyboard Magician"

    def __init__(self, name, age, level, salary):
        #instance attributes
        self.name = name
        self.age = age
        self.level = level
        self.salary = salary

#instance
se1 = SoftwareEngineer("Max", 20, "Junior", 5000)

print(se1.alias)
print(SoftwareEngineer.alias)

>>>
Keyboard Magician
Keyboard Magician
>>>
```
