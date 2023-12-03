
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [OOP](https://github.com/ttltrk/TTT/blob/master/PY/OOP/OOP.md)

---

### OOP - POLYMORPHISM

---

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

    def work(self):
        print(f'{self.name} is coding...')    

    def debug(self):
        print(f'{self.name} is debugging ... ')

class Designer(Employee):

    def work(self):
        print(f'{self.name} is designing...')

    def draw(self):
        print(f'{self.name} is drawing ... ')

#-----------------------------------------------------

employees = [SoftwareEngineer('Max', 25, 6000, 'Junior'),
             SoftwareEngineer('Lisa', 25, 6000, 'Junior'),
             Designer('Phil', 27, 7000)]

def motivate_employees(employees):
    for employee in employees:
        employee.work()

motivate_employees(employees)      

#-----------------------------------------------------

>>>
Max is coding...
Lisa is coding...
Phil is designing...
>>>
```

---
