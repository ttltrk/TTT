
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [OOP](https://github.com/ttltrk/TTT/blob/master/PY/OOP/OOP.md)

---

### OOP - FUNCTIONS_IN_CLASSES

---

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

    #instance method
    def code(self):
        print(f'{self.name} is writing code...')

#instance
se1 = SoftwareEngineer("Max", 20, "Junior", 5000)
se2 = SoftwareEngineer("Lisa", 25, "Senior", 7000)

se1.code()
se2.code()

>>>
Max is writing code...
Lisa is writing code...
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

    #instance method
    def code(self):
        print(f'{self.name} is writing code...')

    def code_in_language(self, language):
        print(f'{self.name} is writing code in {language}')


#instance
se1 = SoftwareEngineer("Max", 20, "Junior", 5000)
se2 = SoftwareEngineer("Lisa", 25, "Senior", 7000)

se1.code()
se2.code()

se1.code_in_language("Python")
se1.code_in_language("C++")

>>>
Max is writing code...
Lisa is writing code...
Max is writing code in Python
Max is writing code in C++
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

    #instance method
    def code(self):
        print(f'{self.name} is writing code...')

    def code_in_language(self, language):
        print(f'{self.name} is writing code in {language}')

    def information(self):
        information = f'name = {self.name}, age = {self.age}, level = {self.level}'
        return information



#instance
se1 = SoftwareEngineer("Max", 20, "Junior", 5000)
se2 = SoftwareEngineer("Lisa", 25, "Senior", 7000)

se1.code()
se2.code()

se1.code_in_language("Python")
se1.code_in_language("C++")

print(se1.information())

>>>
Max is writing code...
Lisa is writing code...
Max is writing code in Python
Max is writing code in C++
name = Max, age = 20, level = Junior
>>>
```

#### __str__

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

    #instance method
    def code(self):
        print(f'{self.name} is writing code...')

    def code_in_language(self, language):
        print(f'{self.name} is writing code in {language}')

    #dunder method
    def __str__(self):
        information = f'name = {self.name}, age = {self.age}, level = {self.level}'
        return information

#instance
se1 = SoftwareEngineer("Max", 20, "Junior", 5000)
se2 = SoftwareEngineer("Lisa", 25, "Senior", 7000)

se1.code()
se2.code()

se1.code_in_language("Python")
se1.code_in_language("C++")

print(se1)
print(se2)

>>>
Max is writing code...
Lisa is writing code...
Max is writing code in Python
Max is writing code in C++
name = Max, age = 20, level = Junior
name = Lisa, age = 25, level = Senior
>>>
```

#### __eq__

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

    #instance method
    def code(self):
        print(f'{self.name} is writing code...')

    def code_in_language(self, language):
        print(f'{self.name} is writing code in {language}')

    #dunder method
    def __str__(self):
        information = f'name = {self.name}, age = {self.age}, level = {self.level}'
        return information

    #equal check method
    def __eq__(self, other):
        return self.name == other.name and self.age == other.age

#instance
se1 = SoftwareEngineer("Max", 20, "Junior", 5000)
se2 = SoftwareEngineer("Lisa", 25, "Senior", 7000)
se3 = SoftwareEngineer("Lisa", 25, "Senior", 7000)

se1.code()
se2.code()

se1.code_in_language("Python")
se1.code_in_language("C++")

print(se2 == se3)

>>>
Max is writing code...
Lisa is writing code...
Max is writing code in Python
Max is writing code in C++
True
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

    #instance method
    def code(self):
        print(f'{self.name} is writing code...')

    def code_in_language(self, language):
        print(f'{self.name} is writing code in {language}')

    #dunder method
    def __str__(self):
        information = f'name = {self.name}, age = {self.age}, level = {self.level}'
        return information

    #equal check method
    def __eq__(self, other):
        return self.name == other.name and self.age == other.age

#instance
se1 = SoftwareEngineer("Max", 20, "Junior", 5000)
se2 = SoftwareEngineer("Lisa", 25, "Senior", 7000)
se3 = SoftwareEngineer("Lisa", 27, "Senior", 7000)

se1.code()
se2.code()

se1.code_in_language("Python")
se1.code_in_language("C++")

print(se2 == se3)

>>>
Max is writing code...
Lisa is writing code...
Max is writing code in Python
Max is writing code in C++
False
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

    #instance method
    def code(self):
        print(f'{self.name} is writing code...')

    def code_in_language(self, language):
        print(f'{self.name} is writing code in {language}')

    #dunder method
    def __str__(self):
        information = f'name = {self.name}, age = {self.age}, level = {self.level}'
        return information

    #equal check method
    def __eq__(self, other):
        return self.name == other.name and self.age == other.age

    def entry_salary(age):
        if age < 25:
            return 5000
        elif age < 30:
            return 7000
        return 9000

#instance
se1 = SoftwareEngineer("Max", 20, "Junior", 5000)
se2 = SoftwareEngineer("Lisa", 25, "Senior", 7000)
se3 = SoftwareEngineer("Lisa", 27, "Senior", 7000)


print(SoftwareEngineer.entry_salary(27))

>>>
7000
>>>
```
