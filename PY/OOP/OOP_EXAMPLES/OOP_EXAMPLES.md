
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

```py
class test1:

    var_1 = 25

    def elso(self):
        var_2 = 5
        return test1.var_1 + var_2

    def masodik(self):
        return 3

class test2:

    def harmadik(self):
        return 5

    def negyedik(self):
        print('hi all')

t1 = test1()
t2 = test2()

def control():
    return ((t2.harmadik() + t1.masodik()) + (t1.var_1 - t1.elso()))

print(control()) #3
t2.negyedik() #hi all
test2.negyedik(t2) #hi all

>>>
3
hi all
hi all
>>>
```

```py
class test1:

    def __init__(self):
        print('in init')

    def elso(self):
        return 3

    def masodik(self):
        print('hi all')

t1 = test1()

print(t1.elso())
t1.masodik()

>>>
in init
3
hi all
>>>
```

```py
class test1:

    def __init__(self, a, b, c, d):
        self.a = a
        self.b = b
        self.c = c
        self.d = d

    def elso(self):
        print('az elso ertekek: ', self.a, self.b)

    def masodik(self):
        print('a masodik ertekek: ', self.c, self.d)

t1 = test1('10', '20', '30', '40')

t1.elso()
t1.masodik()

>>>
az elso ertekek:  10 20
a masodik ertekek:  30 40
>>>
```

```py
class test1:
    pass

t1 = test1()
t2 = test1()

print(id(t1))
print(id(t2))

>>>
60030960
60029200
>>>
```

```py
class test1:

    def __init__(self):
        self.name = 'trk'
        self.age = 36

t1 = test1()
t2 = test1()

t1.name = 'ttl'
t1.age = 35

print(t1.name)
print(t2.name)

>>>
ttl
trk
>>>
```

```py
class test1:

    def __init__(self):
        self.name = 'trk'
        self.age = 36

    def update(self):
        self.age = 99

t1 = test1()
t2 = test1()

t1.name = 'ttl'
t1.age = 35

t1.update()

print(t1.age)
print(t2.name)

>>>
99
trk
>>>
```

```py
class test1:

    def __init__(self):
        self.name = 'trk'
        self.age = 36

    def compare(self, t2):
        if self.age == t2.age:
            return True
        else:
            return False

t1 = test1()
t2 = test1()

if t1.compare(t2):
    print('they are same')
else:
    print('they are different')

>>>
they are same
>>>
```

```py
class test1:

    def __init__(self):
        self.name = 'trk'
        self.age = 36

    def compare(self, t2):
        if self.age == t2.age:
            return True
        else:
            return False

t1 = test1()
t1.age = 30
t2 = test1()

if t1.compare(t2):
    print('they are same')
else:
    print('they are different')

>>>
they are different
>>>
```

```py
class Car:

    def __init__(self):
        self.mil = 10
        self.com = "BMW"

c1 = Car()
c2 = Car()

c1.mil = 8

print(c1.com, c1.mil)
print(c2.com, c2.mil)

>>>
BMW 8
BMW 10
>>>
```

```py
class Car:

    wheels = 4

    def __init__(self):
        self.mil = 10
        self.com = "BMW"

c1 = Car()
c2 = Car()

c1.mil = 8
c1.wheels = 5

print(c1.com, c1.mil, c1.wheels)
print(c2.com, c2.mil, c2.wheels)

>>>
BMW 8 5
BMW 10 4
>>>
```

```py
class Car:

    wheels = 4

    def __init__(self):
        self.mil = 10
        self.com = "BMW"

c1 = Car()
c2 = Car()

c1.mil = 8
Car.wheels = 5

print(c1.com, c1.mil, c1.wheels)
print(c2.com, c2.mil, c2.wheels)

>>>
BMW 8 5
BMW 10 5
>>>
```

```py
class Student:

    school = 'trk'

    def __init__(self, m1, m2, m3):
        self.m1 = m1
        self.m2 = m2
        self.m3 = m3

    def avg(self):
        return (self.m1 + self.m2 + self.m3)/3

s1 = Student(99,3,1)
s2 = Student(700, 221, 19)

print(s1.avg())
print(s2.avg())

>>>
34.333333333333336
313.3333333333333
>>>
```

```py
class Student:

    school = 'trk'

    def __init__(self, m1, m2, m3):
        self.m1 = m1
        self.m2 = m2
        self.m3 = m3

    def get_m1(self):
        return self.m1

    def set_m1(self, val):
        self.m1 = val

s1 = Student(99,3,1)
s2 = Student(700, 221, 19)

print(s1.get_m1())
s1.set_m1(1000)
print(s1.get_m1())

>>>
99
1000
>>>
```

[^^^](#OOP_EXAMPLES)

---
