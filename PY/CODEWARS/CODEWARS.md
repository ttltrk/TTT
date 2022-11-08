
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### CODEWARS

---

* [vowel_one](#vowel_one)
* [is_square](#is_square)
* [changing_letters](#changing_letters)
* [expanded_form](#expanded_form)
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
* [](#)
* [](#)
* [powers_of_two](#powers_of_two)
* [Replace_all_dots](#Replace_all_dots)
* [String_Templates_BugFixing5](#String_Templates_BugFixing5)
* [Vowel_remover](#Vowel_remover)

---

#### vowel_one

```py
#DONE - https://www.codewars.com/kata/580751a40b5a777a200000a1/train/python

def vowel_one(s):

    for vowel in s:
        if vowel in ('a','e','i','o','u','A','E','I','O','U'):
            s = s.replace(vowel, '1')
        else:
            s = s.replace(vowel, '0')
    return s

vowel_one('Hello')

>>>
'01001'
>>>
```

[^^^](#CODEWARS)

---

#### is_square

```py
#DONE - https://www.codewars.com/kata/54c27a33fb7da0db0100040e/train/python

#
# BS
#
# return n >= 0 and (n**0.5) % 1 == 0
#

def is_square(n):   

    simp = [nums*nums for nums in range(0,100)]

    if n in simp:
        return True
    else:
        return False


is_square(24)

>>>
False
>>>
```

[^^^](#CODEWARS)

---

#### changing_letters

```py
#DONE - https://www.codewars.com/kata/5831c204a31721e2ae000294/solutions/python

#
# changing_letters
#
# BS
#
#for vowel in st:
#    if vowel in ('a','e','i','o','u'):
#          st = st.replace(vowel, vowel.upper())

s = "HelloWorld"
fin = s.replace('a','A').replace('e','E').replace('i','I').replace('o','O').replace('u','U')
print(fin)

>>>
HEllOWOrld
>>>
```

[^^^](#CODEWARS)

---

#### expanded_form

```py
#DONE - https://www.codewars.com/kata/5842df8ccbd22792a4000245/train/python

def expanded_form(num):

    conv = str(num)
    cr = len(conv)
    l = [nums for nums in conv if nums != '0']
    li = [nums for nums in conv]

    x = []
    for nums in range(0,cr):
        x.append(nums*'0')

    x.reverse()

    #Element-wise addition of 2 lists
    fin = [a+b for a,b in zip(li, x)]
    ff = []
    for nums in fin:
        if nums[0] != '0':
            ff.append(nums)

    str1 = " + ".join(ff)
    return str1    

expanded_form(70304)

>>>
'70000 + 300 + 4'
>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---
####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---

####

```py

>>>

>>>
```

[^^^](#CODEWARS)

---


#### powers_of_two

```py
#DONE - https://www.codewars.com/kata/57a083a57cb1f31db7000028/train/python

def powers_of_two(n):
    l = []    
    for nums in range(n+1):
        l.append(2**nums)   
    return l

powers_of_two(4)

>>>
[1, 2, 4, 8, 16]
>>>
```

[^^^](#CODEWARS)

---

#### Replace_all_dots

```py
def replace_dots(str):
    return str.replace(".", "-")

replace_dots("one.two.three")

>>>
'one-two-three'
>>>
```

[^^^](#CODEWARS)

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
