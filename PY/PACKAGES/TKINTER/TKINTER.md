
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md)

---

### TKINTER

---

```

```

---

* [CREATING_WINDOW](#CREATING_WINDOW)
* [ADDING_TEXT](#ADDING_TEXT)
* [BUTTONS](#BUTTONS)
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()

---

#### CREATING_WINDOW

```py
from tkinter import *

root = Tk()
root.mainloop()

>>>
G first window
>>>
```

[^^^](#TKINTER)

---

#### ADDING_TEXT

```py
from tkinter import *

root = Tk()
amazing_label = Label(root,text='Amazing!')
amazing_label.pack()
root.mainloop()

>>>
G window with label Amazing
>>>
```

```py
from tkinter import *

root = Tk()
amazing_label = Label(root,text='Amazing!')
label_2 = Label(root,text='And still...')

amazing_label.pack()
label_2.pack()
root.mainloop()

>>>
G window with label Amazing and with And still
>>>
```

[^^^](#TKINTER)

---

#### BUTTONS

```py
from tkinter import *

root = Tk()

fun_button = Button(root,text='click me')
fun_button.pack()

root.mainloop()

>>>
simple button with click me
>>>
```

```py
from tkinter import *

root = Tk()

fun_button = Button(root,text='click me')
fun_button.pack(side=LEFT)
#fun_button.pack(side=RIGHT)
#fun_button.pack(side=TOP)
#fun_button.pack(side=BOTTOM)

root.mainloop()

>>>
the button is on the left/right/top/bottom side
>>>
```

```py
from tkinter import *

root = Tk()

lb1 = Label(root,text='lil label')
fun_button = Button(root,text='click me')

lb1.pack(side=RIGHT)
fun_button.pack(side=LEFT)

root.mainloop()

>>>
the button is on the left and the label is on the right side
>>>
```

[^^^](#TKINTER)

---

####

```py

```

[^^^](#TKINTER)

---

####

```py

```

[^^^](#TKINTER)

---

####

```py

```

[^^^](#TKINTER)

---

####

```py

```

[^^^](#TKINTER)

---

####

```py

```

[^^^](#TKINTER)

---
