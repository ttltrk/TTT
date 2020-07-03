
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [OOP](https://github.com/ttltrk/TTT/blob/master/PY/OOP/OOP.md)

---

### OOP_EXAMPLES

---

* [](#)
* [](#)
* []()
* []()
* []()
* []()
* []()

---

####

```py
class Employee:

    def __init__(self, name, number, place):
        self.name = name
        self.number = number
        self.place = place

    def displayEmployeeDetailsName(self):
        return self.name

    def displayEmployeeDetailsNumber(self):
        return self.number

    def displayEmployeeDetailsPlace(self):
        return self.place

class Dates:

    def __init__(self, date):
        self.date = date

    def displayEmpDate(self):
        return self.date

e_emp1 = Employee('Su', 2, 'DS')
e_emp2 = Employee('Mate', 3, 'BA')
d_emp1 = Dates(2015)
d_emp2 = Dates(2017)

ee_11 = e_emp1.displayEmployeeDetailsName()
ee_12 = e_emp1.displayEmployeeDetailsNumber()
ee_13 = e_emp1.displayEmployeeDetailsPlace()

ee_21 = e_emp2.displayEmployeeDetailsName()
ee_22 = e_emp2.displayEmployeeDetailsNumber()
ee_23 = e_emp2.displayEmployeeDetailsPlace()

de_11 = d_emp1.displayEmpDate()
de_21 = d_emp2.displayEmpDate()

print(ee_11 , ee_12 , de_11)
print(ee_13, ee_22, de_21)

>>>
Su 2 2015
DS 3 2017
>>>
```

```py
class N1:

    def __init__(self, n1):
        self.n1 = n1

    def Number1(self):
        return self.n1


class N2:

    def __init__(self, n2):
        self.n2 = n2

    def Number2(self):
        return self.n2

NUM1 = N1(10)
NUM2 = N2(15)

NN1 = NUM1.Number1()
NN2 = NUM2.Number2()

print(NN1 + NN2)
print(NN1 - NN2)
print(NN1 * NN2)

>>>
25
-5
150
>>>
```

[^^^](#OOP_EXAMPLES)

---
