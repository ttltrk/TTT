
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### CODEWARS

---

* [open_or_senior](#open_or_senior)
* [get_positions](#get_positions)
* [incrementer](#incrementer)
* [largest_elements](#largest_elements)
* [fizzbuzz](#fizzbuzz)
* [html_special_chars](#html_special_chars)
* [volumes_of_cuboids](#volumes_of_cuboids)
* [vowel_one](#vowel_one)
* [is_square](#is_square)
* [changing_letters](#changing_letters)
* [expanded_form](#expanded_form)
* [is_square](#is_square2)
* [kooka_counter](#kooka_counter)
* [get_count](#get_count)
* [shorter_reverse_longer](#shorter_reverse_longer)
* [get_sum_of_digits](#get_sum_of_digits)
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
* [](#)
* [](#)
* [](#)
* [](#)
* [powers_of_two](#powers_of_two)
* [Replace_all_dots](#Replace_all_dots)
* [String_Templates_BugFixing5](#String_Templates_BugFixing5)
* [Vowel_remover](#Vowel_remover)

---

#### open_or_senior

```py
#DONE - https://www.codewars.com/kata/5502c9e7b3216ec63c0001aa/train/python

def open_or_senior(data):

    l = []
    for nums in data:
        if nums[0] >= 55 and nums[1] > 7:
            l.append("Senior")
        else:
            l.append("Open")

    return l

open_or_senior([(16, 23),(73,1),(56, 20),(1, -1)])

>>>
['Open', 'Open', 'Senior', 'Open']
>>>
```

[^^^](#CODEWARS)

---

#### get_positions

```py
#DONE - https://www.codewars.com/kata/56d8f14cba01a83cdb0002a2/train/python

def get_positions(n):
    l1 = [0,1,2]
    l2 = [0,0,0,1,1,1,2,2,2]
    l3 = [0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2]
    f = []

    f.append(l1[n%3])
    f.append(l2[n%9])
    f.append(l3[n%27])

    return tuple(f)

get_positions(98)

>>>
(2, 2, 1)
>>>
```

[^^^](#CODEWARS)

---

#### incrementer

```py
#DONE - https://www.codewars.com/kata/590e03aef55cab099a0002e8/train/python

def incrementer(nums):
    l = [n for n in range(1,len(nums)+1)]
    #Element-wise addition of 2 lists
    m1 = [a+b for a,b in zip(l, nums)]
    m2 = [str(n) for n in m1]

    f = []

    for n in m2:
        if len(n)>1:
            f.append(n[1])
        else:
            f.append(n)
    return [int(n) for n in f]

incrementer([3, 6, 9, 8, 9])

>>>
[4, 8, 2, 2, 4]
>>>
```

[^^^](#CODEWARS)

---

#### largest_elements

```py
#DONE - https://www.codewars.com/kata/53d32bea2f2a21f666000256/train/python

#
# BS
#
#xs.sort()
#return xs[-n:]
#

def largest(n,xs):
    xs.sort()
    xs.reverse()
    fin = xs[:n]
    fin.sort()
    return fin

largest(2,[10,9,8,7,6,5,4,3,2,1])

>>>
[9, 10]
>>>
```

[^^^](#CODEWARS)

---

#### fizzbuzz

```py
#DONE - https://www.codewars.com/kata/5300901726d12b80e8000498/train/python

def fizzbuzz(n):

    l = []

    for num in range(1,n+1):
        if num%15 == 0:
            l.append('fizzbuzz')
        elif num%5 == 0:
            l.append('buzz')
        elif num%3 == 0:
            l.append('fizz')
        else:
            l.append(num)
    return l

fizzbuzz(15)

>>>
[1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz', 'buzz', 11, 'fizz', 13, 14, 'fizzbuzz']
>>>
```

[^^^](#CODEWARS)

---

#### html_special_chars

```py
#DONE but wrong in CW - https://www.codewars.com/kata/56bcaedfcf6b7f2125001118/train/python

#< --> &lt;
#> --> &gt;
#" --> &quot;
#& --> &amp;

def html_special_chars(data):
    for ch in data:
        if ch == '<':
            data = data.replace(ch,'&lt;')
        elif ch == '>':
            data = data.replace(ch,'&gt;')
        elif ch == '"':
            data = data.replace(ch,'&quot;')
        elif ch == '&':
            data = data.replace(ch,'&amp;')
    return data

html_special_chars("<h2>Hello World</h2>")

>>>
'&lt;h2&gt;Hello World&lt;/h2&gt;'
>>>
```

[^^^](#CODEWARS)

---

#### volumes_of_cuboids

```py
#DONE - https://www.codewars.com/kata/58cb43f4256836ed95000f97/train/python

#
# BS
#
# return abs((a[1]*a[2]*a[0])-b[1]*b[2]*b[0])
#

def find_difference(a, b):

    ar = (a[0]*a[1]*a[2])
    br = (b[0]*b[1]*b[2])

    if ar > br:
        return ar-br
    else:
        return br-ar

find_difference([28, 21, 2], [26, 12, 20])

>>>
5064
>>>
```

[^^^](#CODEWARS)

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

#### is_square2

```py
#DONE - https://www.codewars.com/kata/56853c44b295170b73000007/train/python

def is_square(arr):

    simp = [nums*nums for nums in range(0,1000)]
    h = []
    for n in arr:
        if n not in simp:
            h.append(n)    

    if len(arr) == 0:
        return None
    elif len(h)>0:
        return False
    else:
        return True

is_square([1,2,3,4,5])

>>>
False
>>>
```

[^^^](#CODEWARS)

---

#### kooka_counter

```py
#DONE - https://www.codewars.com/kata/58e8cad9fd89ea0c6c000258/solutions/python

def kooka_counter(laughing):
    ed = laughing.replace('a','').replace('A','')
    l=[]

    if len(laughing) == 0:
        return 0
    elif ed[0] == 'h':
        l.append('h')
        for ch in ed:
            if ch != l[-1]:
                l.append(ch)
        return len(l)
    elif ed[0] == 'H':
        l.append('H')
        for ch in ed:
            if ch != l[-1]:
                l.append(ch)
        return len(l)


kooka_counter("HAhaHAhahahahahahaHAhaHAHAHA")

>>>
7
>>>
```

[^^^](#CODEWARS)

---

#### get_count

```py
#DONE - https://www.codewars.com/kata/54ff3102c1bad923760001f3/solutions/python

def get_count(sentence):
    return len([ch for ch in sentence if ch in 'aeiou'])

get_count('aeiou')

>>>
5
>>>
```

[^^^](#CODEWARS)

---

#### shorter_reverse_longer

```py
#DONE - https://www.codewars.com/kata/54557d61126a00423b000a45/train/python

def shorter_reverse_longer(a,b):

    #reverse the string
    if len(a) >= len(b):
        return b+a[::-1]+b
    else:
        return a+b[::-1]+a

shorter_reverse_longer("first", "abcde")

>>>
abcdetsrifabcde
>>>
```

[^^^](#CODEWARS)

---

#### get_sum_of_digits

```py
#DONE - https://www.codewars.com/kata/563d59dd8e47a5ed220000ba/train/python

#
# BS
#
# return sum(int(d) for d in str(n))
#

def get_sum_of_digits(num):
    s = str(num)
    ls = [num for num in s]
    li = [int(num) for num in ls]
    return sum(li)

get_sum_of_digits(123)

>>>
6
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
