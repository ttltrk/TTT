
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### CODEWARS

---

8 kyu

* [Vowel_remover](#Vowel_remover)
* [](#)
* [](#)
* [](#)

7 kyu

* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

6 kyu

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

---

#### Vowel_remover_8kyu

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
a = "heyho ES heyho"
m = ['e', 'u', 'i', 'o', 'a']
l,l1,l2 = [],[],[]

l.append(a)

#Split a sentence into list of words
l1 = [i for item in l for i in item.split()]

print(l1)

#for chars in l1:
#    if chars.islower() and chars in m:

'''
for chars in l1:
    if chars.isupper():
        l2.append(chars)
    else:
        if chars not in l:
            l1.append(chars)

'''
str1 = ''.join(l1)            
print(str1)
```

```
['heyho', 'ES', 'heyho']
heyhoESheyho
```

[^^^](#CODEWARS)

---
