
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### PROFILER

---

```

```

---

* [BASICS](#BASICS)

---

#### BASICS

```

```

```py
import cProfile

def check():
    l = [1, 2, 3]
    for n in l:
        return n

print(check())

cProfile.run('check()')

>>>
1
         4 function calls in 0.000 seconds

   Ordered by: standard name

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.000    0.000    0.000    0.000 <string>:1(<module>)
        1    0.000    0.000    0.000    0.000 der.py:3(check)
        1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
        1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}



Process finished with exit code 0
>>>
```

[^^^](#PROFILER)
