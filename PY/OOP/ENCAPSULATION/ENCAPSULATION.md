
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [OOP](https://github.com/ttltrk/TTT/blob/master/PY/OOP/OOP.md)

---

### OOP - ENCAPSULATION

---

```py
class SoftwareEngineer:

    def __init__(self, name, age):
        self.name = name
        self.age = age
        self._salary = 5000
        self._num_bugs_solved = 0

se = SoftwareEngineer('Max', 25)

print(se.name, se.age, se._salary)

>>>
Max 25 5000
>>>
```

```py
class SoftwareEngineer:

    def __init__(self, name, age):
        self.name = name
        self.age = age
        self.__salary = 5000
        self._num_bugs_solved = 0

se = SoftwareEngineer('Max', 25)

print(se.name, se.age, se.__salary)

>>>
AttributeError: 'SoftwareEngineer' object has no attribute '__salary'
>>>
```

```py
#-----------------------------------------------------

class SoftwareEngineer:

    def __init__(self, name, age):
        self.name = name
        self.age = age
        self._salary = None
        self._num_bugs_solved = 0

    #getter
    def get_salary(self):
        return self._salary

    #setter
    def set_salary(self, value):
        self._salary = value

#-----------------------------------------------------        

se = SoftwareEngineer('Max', 25)
se.set_salary(6000)

#-----------------------------------------------------

print(se.name, se.age)
print(se.get_salary())

#-----------------------------------------------------

>>>
Max 25
6000
>>>
```

```py
#-----------------------------------------------------

class SoftwareEngineer:

    def __init__(self, name, age):
        self.name = name
        self.age = age
        self._salary = None
        self._num_bugs_solved = 0

    def code(self):
        self._num_bugs_solved += 1

    #getter
    def get_salary(self):
        return self._salary

    #setter
    def set_salary(self, base_value):
        # check value, enforce constraints
        self._salary = self._calculate_salary(base_value)

    def _calculate_salary(self, base_value):
        if self._num_bugs_solved < 10:
            return base_value
        if self._num_bugs_solved < 100:
            return base_value * 2
        return base_value * 3

#-----------------------------------------------------        

se = SoftwareEngineer('Max', 25)
print(se.name, se.age)

for i in range(70):
    se.code()

print(se._num_bugs_solved)    

se.set_salary(6000)

#-----------------------------------------------------

print(se.get_salary())

#-----------------------------------------------------

>>>
Max 25
70
12000
>>>
```

---
