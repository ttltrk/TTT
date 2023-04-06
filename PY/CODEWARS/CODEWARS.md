
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### CODEWARS

---

* [reverse_letter](#reverse_letter)
* [get_sum](#get_sum)
* [stray](#stray)
* [find_multiples](#find_multiples)
* [digital_root](#digital_root)
* [high_and_low](#high_and_low)
* [diamond](#diamond)
* [isLeapYear](#isLeapYear)
* [create_phone_number](#create_phone_number)
* [find_it](#find_it)
* [args_count](#args_count)
* [alphanumeric](#alphanumeric)
* [unscramble_eggs](#unscramble_eggs)
* [solution](#solution)
* [most_frequent_item_count](#most_frequent_item_count)
* [pythagorean_triple](#pythagorean_triple)
* [generate_hashtag](#generate_hashtag)
* [luck_check](#luck_check)
* [number_joy](#number_joy)
* [is_sorted_and_how](#is_sorted_and_how)
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
* [solve](#solve)
* [disemvowel](#disemvowel)
* [squares](#squares)
* [is_it_a_num](#is_it_a_num)
* [sort_dict](#sort_dict)
* [square_num](#square_num)
* [covfefe](#covfefe)
* [between_extremes](#between_extremes)
* [cube_checker](#cube_checker)
* [trim](#trim)
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

#### reverse_letter

```py
#DONE - https://www.codewars.com/kata/58b8c94b7df3f116eb00005b/train/python

def reverse_letter(string):
    l = [chars for chars in string if chars.isalpha()]   
    l.reverse()
    str1 = "".join(l)
    return str1

reverse_letter('ab23c')

>>>
'cba'
>>>
```

[^^^](#CODEWARS)

---

#### get_sum

```py
#DONE - https://www.codewars.com/kata/55f2b110f61eb01779000053/train/python

def get_sum(a,b):
    if a < b:
        return sum([n for n in range(a,b+1)])
    else:
        return sum([n for n in range(b,a+1)])

get_sum(-1,0)

>>>
-1
>>>
```

[^^^](#CODEWARS)

---

#### stray

```py
#DONE - https://www.codewars.com/kata/57f609022f4d534f05000024/train/python

def stray(arr):
    l = [num for num in arr if arr.count(num) == 1]
    for num in l:
        return num

stray([1, 1, 1, 1, 1, 1, 2])

>>>
2
>>>
```

[^^^](#CODEWARS)

---

#### find_multiples

```py
#DONE - https://www.codewars.com/kata/58ca658cc0d6401f2700045f/train/python

def find_multiples(integer, limit):
    return [num for num in range(1,limit+1) if num%integer == 0]

find_multiples(5, 25)

>>>
[5, 10, 15, 20, 25]
>>>
```

[^^^](#CODEWARS)

---

#### digital_root

```py
#DONE - https://www.codewars.com/kata/541c8630095125aba6000c00/train/python

def digital_root(n):
    l1 = [int(num) for num in str(n)]

    res1 = sum(l1)

    if len(str(res1)) == 1:
        return res1
    else:
        l2 = [int(num) for num in str(res1)]
        res2 = sum(l2)
        if len(str(res2)) == 1:
            return sum(l2)
        else:
            l3 = [int(num) for num in str(res2)]
            return sum(l3)

digital_root(493193)

>>>
2
>>>
```

[^^^](#CODEWARS)

---

#### high_and_low

```py
#DONE - https://www.codewars.com/kata/554b4ac871d6813a03000035/train/python

#
# BS
#
# nn = [int(s) for s in numbers.split(" ")]
#

import re

def high_and_low(numbers):

    #Filter positive and negative integers from string
    l = [int(d) for d in re.findall(r'-?\d+', numbers)]
    mx = max([num for num in l])
    mn = min([num for num in l])
    return (f'{mx} {mn}')

high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4")

>>>
'42 -9'
>>>
```

[^^^](#CODEWARS)

---

#### diamond

```py
#DONE - https://www.codewars.com/kata/5503013e34137eeeaa001648/train/python

def diamond(n):

    if n%2 == 0 or n<0:
        return None
    else:
        x = [num*'*' for num in range(n+1) if num%2 == 1]
        x1 = [str(ch) + '\n' for ch in x]
        x2 = []
        x2.append(x1[-1])
        x1.pop(-1)
        test = [num for num in range(1,n)]
        pos = ((n-1)//2)
        ws = [num*' ' for num in range(1,n)][:pos]
        ws.reverse()
        #add each element in both list
        wws = [ws[i] + x1[i] for i in range(len(ws))]
        x3 = wws.copy()
        x3.reverse()
        wws.extend(x2)
        wws.extend(x3)
        res = "".join(wws)
        return res

diamond(5)

>>>
'  *\n ***\n*****\n ***\n  *\n'
>>>
```

[^^^](#CODEWARS)

---

#### isLeapYear

```py
#DONE - https://www.codewars.com/kata/526c7363236867513f0005ca/train/python

def isLeapYear(year):
    v1 = (year % 4 == 0)
    v2 = (year % 100 != 0)
    v3 = (year % 400 == 0)
    return v1 and (v2 or v3)

isLeapYear(1984)

>>>
True
>>>
```

[^^^](#CODEWARS)

---

#### create_phone_number

```py
#DONE - https://www.codewars.com/kata/525f50e3b73515a6db000b83/train/python

def create_phone_number(n):

    n1 = [str(ch) for ch in n[:3]]
    n2 = [str(ch) for ch in n[3:6]]
    n3 = [str(ch) for ch in n[6:]]

    s1 = "".join(n1)
    s2 = "".join(n2)
    s3 = "".join(n3)

    return (f'({s1}) {s2}-{s3}')

create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

>>>
'(123) 456-7890'
>>>
```

[^^^](#CODEWARS)

---

#### find_it

```py
#DONE - https://www.codewars.com/kata/54da5a58ea159efa38000836/train/python

def find_it(seq):
    l = [n for n in seq if seq.count(n)%2 == 1]
    return l[0]

find_it([5,5,5])  

>>>
5
>>>
```

[^^^](#CODEWARS)

---

#### args_count

```py
#DONE - https://www.codewars.com/kata/5c44b0b200ce187106452139/train/python

def args_count(*a,**b):
    return len(a)+len(b)

args_count(2,a=1)

>>>
2
>>>
```

[^^^](#CODEWARS)

---

#### alphanumeric

```py
#DONE - https://www.codewars.com/kata/526dbd6c8c0eb53254000110/train/python

#
# BS
#
# return string.isalnum()
#

def alphanumeric(pwd):

    l = [chars for chars in pwd]
    lx = []

    for chars in l:
        if chars.isalpha() or chars.isdigit():
            lx.append(True)

    if len(l) == 0:
        return False
    elif len(l) == len(lx):
        return True
    else:
        return False

alphanumeric('axbs34.0')

>>>
False
>>>
```

[^^^](#CODEWARS)

---

#### unscramble_eggs

```py
#DONE - https://www.codewars.com/kata/55ea5650fe9247a2ea0000a7/train/python

def unscramble_eggs(word):
    if 'egg' in word:
        word = word.replace('egg','')
        return word
    else:
        return word

unscramble_eggs('ceggodegge heggeregge')

>>>
'code here'
>>>
```

[^^^](#CODEWARS)

---

#### solution

```py
#INP - https://www.codewars.com/kata/514b92a657cdc65150000006/train/python

def solution(number):

    return sum([num for num in range(1, number) if num%3 == 0 or num%5 == 0])

solution(10)

>>>
23
>>>
```

[^^^](#CODEWARS)

---

#### most_frequent_item_count

```py
#DONE - https://www.codewars.com/kata/56582133c932d8239900002e/train/python

def most_frequent_item_count(collection):
    if len(collection) == 0:
        return 0
    else:
        return max([collection.count(nums) for nums in collection])


most_frequent_item_count([3, -1, -1])

>>>
2
>>>
```

[^^^](#CODEWARS)

---

#### pythagorean_triple

```py
#DONE - https://www.codewars.com/kata/5951d30ce99cf2467e000013/train/python

def pythagorean_triple(integers):
    integers.sort()
    if (integers[0]*integers[0])+(integers[1]*integers[1]) == (integers[2]*integers[2]):
        return True
    else:
        return False

pythagorean_triple([3,4,5])

>>>
True
>>>
```

[^^^](#CODEWARS)

---

#### generate_hashtag

```py
#DONE - https://www.codewars.com/kata/52449b062fb80683ec000024/train/python

#
# nice
#
# return False if (len(s) == 0 or len(output) > 140) else output
#

def generate_hashtag(s):
    l = s.split()    
    l1 = [chars.capitalize() for chars in l]    
    s1 = "".join(l1)
    s1 = '#'+s1

    if len(s1) > 140 or len(s) == 0:
        return False
    else:
        return s1


generate_hashtag('hello world')

>>>
'#HelloWorld'
>>>
```

[^^^](#CODEWARS)

---

#### luck_check

```py
#DONE - https://www.codewars.com/kata/5314b3c6bb244a48ab00076c/train/python

def luck_check(string):
    co = len(str(string))
    half = co//2
    l = [str(nums) for nums in str(string)]
    l1 = l[:co//2]
    l2 = l[co//2:]
    ln1 = [int(num) for num in l1]
    ln2 = [int(num) for num in l2]

    if len(ln1) != len(ln2):
        ln2.pop(0)
        if sum(ln1) == sum(ln2):
            return True
        else:

            return False
    else:
        if sum(ln1) == sum(ln2):
            return True
        else:
            return False

luck_check(683000)

>>>
False
>>>
```

[^^^](#CODEWARS)

---

#### number_joy

```py
#DONE - https://www.codewars.com/kata/570523c146edc287a50014b1/train/python

def number_joy(n):

    #int to list
    l = [int(nums) for nums in str(n)]

    r1 = sum(l)

    r2 = str(r1)
    r2 = r2[::-1]

    f = int(r1)*int(r2)

    if f == n and n%r1==0:
        return True, 'Harshad and digit '+str(r1)+', and '+str(r1)+'x'+str(r2)+' = '+str(n)
    elif f != n and n%r1==0:
        return False, 'Harshad but digit '+str(r1)+', and '+str(r1)+'x'+str(r2)+' does not equal '+str(n)
    else:
        return False, 'Not a Harshad number'

number_joy(1998)

>>>
(False, 'Harshad but digit 27, and 27x72 does not equal 1998')
>>>
```

[^^^](#CODEWARS)

---

#### is_sorted_and_how

```py
#DONE - https://www.codewars.com/kata/580a4734d6df748060000045/train/python

def is_sorted_and_how(arr):

    la = arr.copy()  
    ld = arr.copy()

    la.sort()   
    ld.sort()
    ld = ld[::-1]


    if arr == la:
        return 'yes, ascending'
    elif arr == ld:
        return 'yes, descending'
    else:
        return 'no'

is_sorted_and_how([1,2,5,4])

>>>
'no'
>>>
```

[^^^](#CODEWARS)

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

#### solve

```py
#DONE - https://www.codewars.com/kata/5a29a0898f27f2d9c9000058/train/python

#the order is: uppercase letters, lowercase, numbers and special characters.

def solve(s):
    res = []

    isupper = [chars for chars in s if chars.isupper()]
    islower = [chars for chars in s if chars.islower()]
    isnumeric = [chars for chars in s if chars.isnumeric()]

    res.extend([len(isupper), len(islower), len(isnumeric), (len(s)-(len(isupper)+len(islower)+len(isnumeric)))])

    return res

solve("Codewars@codewars123.com")

>>>
[1, 18, 3, 2]
>>>
```

[^^^](#CODEWARS)

---

#### disemvowel

```py
#DONE - https://www.codewars.com/kata/52fba66badcd10859f00097e/solutions/python

#
# BS
#
# return "".join(c for c in string if c.lower() not in "aeiou")
#

def disemvowel(string_):
    x = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U']
    l = [chars for chars in string_ if chars not in x]
    str1 = ''.join(l)
    return str1

disemvowel('HellO')

>>>
'Hll'
>>>
```

[^^^](#CODEWARS)

---

#### squares

```py
#DONE - https://www.codewars.com/kata/5546180ca783b6d2d5000062/train/python

# multiply always with the latest result

#
# BS
#
# return [x**(2**i) for i in range(n)]
#

def squares(x, n):
    if n <= 0:
        return []
    else:
        l,fin = [], []
        l.append(x)
        x = 2
        while x < n+1:
            m = l[-1]*l[-1]
            l.append(m)
            x += 1
        return l


squares(2, 5)

>>>
[2, 4, 16, 256, 65536]
>>>
```

[^^^](#CODEWARS)

---

#### is_it_a_num

```py
#DONE - https://www.codewars.com/kata/596343a24489a8b2a00000a2/train/python

#find the number in the string

def is_it_a_num(s):

    l = [vals for vals in s if vals.isdigit()]    
    str1 = ''.join(l)

    if len(l) == 11 and l[0] == '0':
        return str1
    else:
        return "Not a phone number"

is_it_a_num('S:)0207ERGQREG88349F82!efRF)')

>>>
'02078834982'
>>>
```

[^^^](#CODEWARS)

---

#### sort_dict

```py
#DONE - https://www.codewars.com/kata/53da6a7e112bd15cbc000012/train/python

def sort_dict(d):
    #l = d.items()
    sorted_dict = {}
    sorted_values = sorted(d.values())
    sorted_values.sort(reverse=True)

    for i in sorted_values:
        for k in d.keys():
            if d[k] == i:
                sorted_dict[k] = d[k]

    fin = sorted_dict.items()
    return [ch for ch in fin]

sort_dict({3:1, 2:2, 1:3})

>>>
[(1, 3), (2, 2), (3, 1)]
>>>
```

[^^^](#CODEWARS)

---

#### square_num

```py
#DONE - https://www.codewars.com/kata/5a805d8cafa10f8b930005ba/train/python

#
# BS
#
# return round(n ** 0.5) ** 2
#

def nearest_sq(n):
    simp = [numsk*numsk for numsk in range(0,2000)]
    simp.append(n)
    simp.sort()    
    x = simp.index(n)    
    l = []
    l.append(simp[x])
    l.append(simp[x+1])
    l.append(simp[x-1])    
    l.sort()    
    if l[1]-l[0]<l[2]-l[1]:
        return l[0]
    else:
        return l[2]

nearest_sq(200)

>>>
196
>>>
```

[^^^](#CODEWARS)

---

#### covfefe

```py
#DONE - https://www.codewars.com/kata/592fd8f752ee71ac7e00008a/train/python

def covfefe(s):

    l = s.split()
    print(l)

    #replace a list item with something
    for i in range(len(l)):
        if l[i] == 'coverage':
            l[i] = 'covfefe'

    ss = " ".join(l)
    print(ss)


    if "coverage" in s:
        return ss
    else:
        return s+" covfefe"

covfefe('coverage coverage')

>>>
['coverage', 'coverage']
covfefe covfefe
'covfefe covfefe'
>>>
```

[^^^](#CODEWARS)

---

#### between_extremes

```py
#DONE - https://www.codewars.com/kata/56d19b2ac05aed1a20000430/train/python

def between_extremes(numbers):
    return max(numbers) - min(numbers)


between_extremes([21, 34, 54, 43, 26, 12])

>>>
42
>>>
```

[^^^](#CODEWARS)

---

#### cube_checker

```py
#DONE - https://www.codewars.com/kata/58d248c7012397a81800005c/train/python

def cube_checker(volume, side):
    if volume == side*side*side and volume > 0:
        return True
    else:
        return False

cube_checker(125, 5)

>>>
True
>>>
```

[^^^](#CODEWARS)

---

#### trim

```py
#DONE - https://www.codewars.com/kata/563fb342f47611dae800003c/train/python
def trim(phrase, size):
    if len(phrase) <= size:
        return phrase
    elif size <= 3:
        return phrase[:size]+'...'
    else:
        return phrase[:(size-3)]+'...'

trim("Creating kata is fun", 14)

>>>
'Creating ka...'
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
