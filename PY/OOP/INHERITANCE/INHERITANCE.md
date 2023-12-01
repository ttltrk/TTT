
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [OOP](https://github.com/ttltrk/TTT/blob/master/PY/OOP/OOP.md)

---

### OOP - INHERITANCE

---

```py
#-----------------------------------------------------

# inherits, extend, override
class Employee:

    def __init__(self, name, age):
        self.name = name
        self.age = age

class SoftwareEngineer(Employee):
    pass

class Designer(Employee):
    pass

#-----------------------------------------------------

se = SoftwareEngineer('Max', 25)
print(se.name, se.age)

d = Designer('Phil', 27)
print(d.name, d.age)

#-----------------------------------------------------

>>>
Max 25
>>>
```

```py
#-----------------------------------------------------

# inherits, extend, override
class Employee:

    def __init__(self, name, age):
        self.name = name
        self.age = age

    def work(self):
        print(f'{self.name} is working...')


class SoftwareEngineer(Employee):
    pass

class Designer(Employee):
    pass

#-----------------------------------------------------

se = SoftwareEngineer('Max', 25)
se.work()

d = Designer('Phil', 27)
d.work()

#-----------------------------------------------------

>>>
Max is working...
Phil is working...
>>>
```

```py
#-----------------------------------------------------

# inherits, extend, override
class Employee:

    def __init__(self, name, age, salary):
        self.name = name
        self.age = age
        self.salary = salary

    def work(self):
        print(f'{self.name} is working...')        

class SoftwareEngineer(Employee):

    def __init__(self, name, age, salary, level):
        super().__init__(name, age, salary)
        self.level = level

class Designer(Employee):
    pass

#-----------------------------------------------------

se = SoftwareEngineer('Max', 25, 6000, 'Junior')
print(se.level)

d = Designer('Phil', 27, 7000)
print(d.salary)

#-----------------------------------------------------

>>>
Junior
7000
>>>
```

---
