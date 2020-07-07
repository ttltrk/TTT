
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

```py
class Student:

    school = 'trk'

    def __init__(self, m1):
        self.m1 = m1

    def get_m1(self):
        return self.m1

    def set_m1(self, val):
        self.m1 = val

s1 = Student(100)

def kapcsolo():
    i = input('legyen valtoztatas? \n '
              'Yes = y, No = n \n '
              'alapbol 100-as az erosseg \n \n ')
    if i == 'y':
        v = int(input('allitsd be... \n'))
        s1.set_m1(v)
        print('az uj erosseg: ', s1.get_m1())
    else:
        print('az erosseg 100-as maradt')

kapcsolo()

>>>
legyen valtoztatas?
 Yes = y, No = n
 alapbol 100-as az erosseg

 y
allitsd be...
111
az uj erosseg:  111

legyen valtoztatas?
 Yes = y, No = n
 alapbol 100-as az erosseg

 n
az erosseg 100-as maradt 100
>>>
```

```py
class Student:

    school = 'trk'

    def __init__(self, m1, m2, m3):
        self.m1 = m1
        self.m2 = m2
        self.m3 = m3

    @classmethod
    def info(cls):
        return cls.school

s1 = Student(100,200,300)


print(Student.info())

>>>
trk
>>>
```

```py
class Student:

    school = 'trk'

    def __init__(self, m1, m2, m3):
        self.m1 = m1
        self.m2 = m2
        self.m3 = m3

    @classmethod
    def getSchool(cls):
        return cls.school

    @staticmethod
    def info():
        print("This is Student class...in abc module")

s1 = Student(100,200,300)


print(Student.getSchool())
Student.info()

>>>
trk
This is Student class...in abc module
>>>
```

```py
class Student:

    def __init__(self, name, rollno):
        self.name = name
        self.rollno = rollno

    def show(self):
        print(self.name, self.rollno)

s1 = Student('trk', 2)
s2 = Student('vrg', 3)

s1.show()
s2.show()

>>>
trk 2
vrg 3
>>>
```

```py
class Student:

    def __init__(self, name, rollno):
        self.name = name
        self.rollno = rollno
        self.lap = self.Laptop

    def show(self):
        print(self.name, self.rollno)

    class Laptop:

        def __init__(self):
            self.brand = 'HP'
            self.cpu = 'i5'
            self.ram = 8

s1 = Student('trk', 2)
s2 = Student('vrg', 3)

lap1 = s1.lap
lap2 = s2.lap

print(lap1)

>>>
<class '__main__.Student.Laptop'>
>>>
```

```py
class Student:

    def __init__(self, name, rollno):
        self.name = name
        self.rollno = rollno
        self.lap = self.Laptop()

    def show(self):
        print(self.name, self.rollno)
        self.lap.show()

    class Laptop:

        def __init__(self):
            self.brand = 'HP'
            self.cpu = 'i5'
            self.ram = 8

        def show(self):
            print(self.brand, self.cpu, self.ram)

s1 = Student('trk', 2)
s2 = Student('vrg', 3)

lap1 = Student.Laptop()
lap2 = Student.Laptop()

s1.show()

>>>
trk 2
HP i5 8
>>>
```

```py
class A:

    def Feat1(self):
        print("Feat1 is working")

    def Feat2(self):
        print("Feat2 is working")

class B(A):

    def Feat3(self):
        print("Feat3 is working")

    def Feat4(self):
        print("Feat4 is working")

a1 = A()
b1 = B()


a1.Feat1()
a1.Feat2()

b1.Feat1()
b1.Feat2()
b1.Feat3()
b1.Feat4()

>>>
Feat1 is working
Feat2 is working
Feat1 is working
Feat2 is working
Feat3 is working
Feat4 is working
>>>
```

```py
class A:

    def Feat1(self):
        print("Feat1 is working")

    def Feat2(self):
        print("Feat2 is working")

class B(A):

    def Feat3(self):
        print("Feat3 is working")

    def Feat4(self):
        print("Feat4 is working")

class C(B):

    def Feat5(self):
        print("Feat5 is working")

    def Feat6(self):
        print("Feat6 is working")

a1 = A()
b1 = B()
c1 = C()

print('------------ \n')
print('A class: \n')
a1.Feat1()
a1.Feat2()
print('\n ------------ \n')
print('B class: \n')
b1.Feat1()
b1.Feat2()
b1.Feat3()
b1.Feat4()
print('\n ------------ \n')
print('C class: \n')
c1.Feat1()
c1.Feat2()
c1.Feat3()
c1.Feat4()
c1.Feat5()
c1.Feat6()

>>>
------------

A class:

Feat1 is working
Feat2 is working

 ------------

B class:

Feat1 is working
Feat2 is working
Feat3 is working
Feat4 is working

 ------------

C class:

Feat1 is working
Feat2 is working
Feat3 is working
Feat4 is working
Feat5 is working
Feat6 is working
>>>
```

```py
class A:

    def Feat1(self):
        print("Feat1 is working")

    def Feat2(self):
        print("Feat2 is working")

class B():

    def Feat3(self):
        print("Feat3 is working")

    def Feat4(self):
        print("Feat4 is working")

class C(A,B):

    def Feat5(self):
        print("Feat5 is working")

    def Feat6(self):
        print("Feat6 is working")

a1 = A()
b1 = B()
c1 = C()

print('------------ \n')
print('A class: \n')
a1.Feat1()
a1.Feat2()
print('\n ------------ \n')
print('B class: \n')
b1.Feat3()
b1.Feat4()
print('\n ------------ \n')
print('C class: \n')
c1.Feat1()
c1.Feat2()
c1.Feat3()
c1.Feat4()
c1.Feat5()
c1.Feat6()

>>>
------------

A class:

Feat1 is working
Feat2 is working

 ------------

B class:

Feat3 is working
Feat4 is working

 ------------

C class:

Feat1 is working
Feat2 is working
Feat3 is working
Feat4 is working
Feat5 is working
Feat6 is working
>>>
```

```py
class A:

    def __init__(self):
        print('Print A init')

    def Feat1(self):
        print("Feat1 is working")

    def Feat2(self):
        print("Feat2 is working")

class B(A):

    def __init__(self):
        print('Print B init')

    def Feat3(self):
        print("Feat3 is working")

    def Feat4(self):
        print("Feat4 is working")


b = B()

>>>
Print B init
>>>
```

```py
class A:

    def __init__(self):
        print('Print A init')

    def Feat1(self):
        print("Feat1 is working")

    def Feat2(self):
        print("Feat2 is working")

class B(A):

    def __init__(self):
        super().__init__()
        print('Print B init')

    def Feat3(self):
        print("Feat3 is working")

    def Feat4(self):
        print("Feat4 is working")


b = B()

>>>
Print A init
Print B init
>>>
```

```py
class A:

    def __init__(self):
        print('Print A init')

    def Feat1(self):
        print("Feat1 is working")

    def Feat2(self):
        print("Feat2 is working")

class B:

    def __init__(self):
        print('Print B init')

    def Feat3(self):
        print("Feat3 is working")

    def Feat4(self):
        print("Feat4 is working")

class C(A,B):

    def __init__(self):
        print('Print C init')


b = C()

>>>
Print C init
>>>
```

```py
class A:

    def __init__(self):
        print('Print A init')

    def Feat1(self):
        print("Feat1 is working")

    def Feat2(self):
        print("Feat2 is working")

class B:

    def __init__(self):
        print('Print B init')

    def Feat3(self):
        print("Feat3 is working")

    def Feat4(self):
        print("Feat4 is working")

class C(A,B):

    def __init__(self):
        super().__init__()
        print('Print C init')


b = C()

>>>
Print A init
Print C init
>>>
```

```py
class PyCharm:

    def execute(self):
        print("compiling")
        print("running")

class Laptop:

    def code(self, ide):
        ide.execute()

ide = PyCharm()

lap1 = Laptop()
lap1.code(ide)

>>>
compiling
running
>>>
```

[^^^](#OOP_EXAMPLES)

---
