
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [OOP](https://github.com/ttltrk/TTT/blob/master/PY/OOP/OOP.md)

---

### RPI

---

* [TURTLE](#TURTLE)
* [KNOCK_KNOCK](#KNOCK_KNOCK)
* []()
* []()
* []()
* []()
* []()

---

#### TURTLE

```py
from turtle import Turtle
from random import randint

laura = Turtle()
laura.color('red')
laura.shape('turtle')
laura.penup()
laura.goto(-160, 100)
laura.pendown()

rik = Turtle()
rik.color('blue')
rik.shape('turtle')
rik.penup()
rik.goto(-70, 100)
rik.pendown()

lauren = Turtle()
lauren.color('green')
lauren.shape('turtle')
lauren.penup()
lauren.goto(-80, 100)
lauren.pendown()

carrieanne = Turtle()
carrieanne.color('red')
carrieanne.shape('turtle')
carrieanne.penup()
carrieanne.goto(-290, 100)
carrieanne.pendown()

for movement in range(100):
    laura.forward(randint(1,5))
    rik.forward(randint(1,5))
    lauren.forward(randint(1,5))
    carrieanne.forward(randint(1,5))

input("Press Enter to close")
```

[^^^](#RPI)

---

#### KNOCK_KNOCK

```py
def tell(intro, punchline):
    print("Knock knock")
    print("Who's there")
    print(intro)
    print(intro + " who")
    print(punchline)

tell("Atch", "Sounds like you’ve got a cold!")

>>>
Knock knock
Who's there
Atch
Atch who
Sounds like you’ve got a cold!
>>>
```

[^^^](#RPI)

---

####

```py

```

[^^^](#RPI)

---

####

```py

```

[^^^](#RPI)

---

####

```py

```

[^^^](#RPI)

---

####

```py

```

[^^^](#RPI)

---

####

```py

```

[^^^](#RPI)

---
