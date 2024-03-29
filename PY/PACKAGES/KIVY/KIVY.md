
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md)

---

### KIVY

---

* [GFG_LINKS](#GFG_LINKS)
* [WHAT_IS_KIVY](#WHAT_IS_KIVY)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

* [VERY_FIRST](#VERY_FIRST)
* [LABELS_INPUT_GUI](#LABELS_INPUT_GUI)
* [BUTTONS_TRIGGERS](#BUTTONS_TRIGGERS)
* [KV_DESIGN](#KV_DESIGN)
* [OBJECT_PROPERTIES_KV_CONTINUED](#OBJECT_PROPERTIES_KV_CONTINUED)
* [FLOATLAYOUT](#FLOATLAYOUT)

---

* [LINKS](#LINKS)
* [SOURCE](#SOURCE)
* [MAIN_PY](#MAIN_PY)
* [TheLab_KV](#TheLab_KV)
* [LAYOUTS](#LAYOUTS)
* [BOXLAYOUT](#BOXLAYOUT)
* [SIZE_HINT_VS_POS_HINT](#SIZE_HINT_VS_POS_HINT)
* [EMBED_A_LAYOUT](#EMBED_A_LAYOUT)
* [ANCHOR_LAYOUT](#ANCHOR_LAYOUT)

---

#### GFG_LINKS

https://www.geeksforgeeks.org/kivy-tutorial/?ref=lbp

[^^^](#KIVY)

---

#### WHAT_IS_KIVY

Kivy is an opensource multi-platform GUI development library for Python and can run on iOS, Android, Windows, OS X, and GNU/Linux. It helps develop applications that make use of innovative, multi-touch UI. The fundamental idea behind Kivy is to enable the developer to build an app once and use it across all devices, making the code reusable and deployable, allowing for quick and easy interaction design and rapid prototyping.

[^^^](#KIVY)

---

#### VERY_FIRST

```py
import kivy
from kivy.app import App
from kivy.uix.label import Label

class MyApp(App):
    def build(self):
        return Label(text="very first App")

if __name__=="__main__":
    MyApp().run()
```

[^^^](#KIVY)

---

#### LABELS_INPUT_GUI

```py
import kivy
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput

class MyGrid(GridLayout):
    def __init__(self, **kwargs):
        super(MyGrid, self).__init__(**kwargs)
        self.cols = 2

        self.add_widget(Label(text="First Name: "))
        self.name = TextInput(multiline=False)
        self.add_widget(self.name)

        self.add_widget(Label(text="Last Name: "))
        self.lastName = TextInput(multiline=False)
        self.add_widget(self.lastName)

        self.add_widget(Label(text="Email: "))
        self.email = TextInput(multiline=False)
        self.add_widget(self.email)

class MyApp(App):
    def build(self):
        return MyGrid()

if __name__=="__main__":
    MyApp().run()
```

[^^^](#KIVY)

---

#### BUTTONS_TRIGGERS

```py
import kivy
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button

class MyGrid(GridLayout):
    def __init__(self, **kwargs):
        super(MyGrid, self).__init__(**kwargs)
        self.cols = 1

        self.inside = GridLayout()
        self.inside.cols = 2

        self.inside.add_widget(Label(text="First Name: "))
        self.name = TextInput(multiline=False)
        self.inside.add_widget(self.name)

        self.inside.add_widget(Label(text="Last Name: "))
        self.lastName = TextInput(multiline=False)
        self.inside.add_widget(self.lastName)

        self.inside.add_widget(Label(text="Email: "))
        self.email = TextInput(multiline=False)
        self.inside.add_widget(self.email)

        self.add_widget(self.inside)

        self.submit = Button(text="Submit", font_size=40)
        self.add_widget(self.submit)

class MyApp(App):
    def build(self):
        return MyGrid()

if __name__=="__main__":
    MyApp().run()
```

```py

import kivy
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button

class MyGrid(GridLayout):
    def __init__(self, **kwargs):
        super(MyGrid, self).__init__(**kwargs)
        self.cols = 1

        self.inside = GridLayout()
        self.inside.cols = 2

        self.inside.add_widget(Label(text="First Name: "))
        self.name = TextInput(multiline=False)
        self.inside.add_widget(self.name)

        self.inside.add_widget(Label(text="Last Name: "))
        self.lastName = TextInput(multiline=False)
        self.inside.add_widget(self.lastName)

        self.inside.add_widget(Label(text="Email: "))
        self.email = TextInput(multiline=False)
        self.inside.add_widget(self.email)

        self.add_widget(self.inside)

        self.submit = Button(text="Submit", font_size=40)
        self.submit.bind(on_press=self.pressed)
        self.add_widget(self.submit)

    def pressed(selfself, instance):
        print("Pressed")

class MyApp(App):
    def build(self):
        return MyGrid()

if __name__=="__main__":
    MyApp().run()
```

```py
import kivy
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button

class MyGrid(GridLayout):
    def __init__(self, **kwargs):
        super(MyGrid, self).__init__(**kwargs)
        self.cols = 1

        self.inside = GridLayout()
        self.inside.cols = 2

        self.inside.add_widget(Label(text="First Name: "))
        self.name = TextInput(multiline=False)
        self.inside.add_widget(self.name)

        self.inside.add_widget(Label(text="Last Name: "))
        self.lastName = TextInput(multiline=False)
        self.inside.add_widget(self.lastName)

        self.inside.add_widget(Label(text="Email: "))
        self.email = TextInput(multiline=False)
        self.inside.add_widget(self.email)

        self.add_widget(self.inside)

        self.submit = Button(text="Submit", font_size=40)
        self.submit.bind(on_press=self.pressed)
        self.add_widget(self.submit)

    def pressed(self, instance):
        name = self.name.text
        last = self.lastName.text
        email = self.email.text

        print("Name:", name, "Last Name: ", last, "Email: ", email)

class MyApp(App):
    def build(self):
        return MyGrid()

if __name__=="__main__":
    MyApp().run()
```

```py
import kivy
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button

class MyGrid(GridLayout):
    def __init__(self, **kwargs):
        super(MyGrid, self).__init__(**kwargs)
        self.cols = 1

        self.inside = GridLayout()
        self.inside.cols = 2

        self.inside.add_widget(Label(text="First Name: "))
        self.name = TextInput(multiline=False)
        self.inside.add_widget(self.name)

        self.inside.add_widget(Label(text="Last Name: "))
        self.lastName = TextInput(multiline=False)
        self.inside.add_widget(self.lastName)

        self.inside.add_widget(Label(text="Email: "))
        self.email = TextInput(multiline=False)
        self.inside.add_widget(self.email)

        self.add_widget(self.inside)

        self.submit = Button(text="Submit", font_size=40)
        self.submit.bind(on_press=self.pressed)
        self.add_widget(self.submit)

    def pressed(self, instance):
        name = self.name.text
        last = self.lastName.text
        email = self.email.text

        print("Name:", name, "Last Name: ", last, "Email: ", email)

        self.name.text = ""
        self.lastName.text = ""
        self.email.text = ""

class MyApp(App):
    def build(self):
        return MyGrid()

if __name__=="__main__":
    MyApp().run()
```

[^^^](#KIVY)

---

#### KV_DESIGN

```py
import kivy
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button
from kivy.uix.widget import Widget

class MyGrid(Widget):
    pass

class MyApp(App):
    def build(self):
        return MyGrid()


if __name__ == "__main__":
    MyApp().run()
```

##### Very first .kv file

```
<MyGrid>
    Label:
        text: "heyho"
```

##### Previous example with .kv file

```
<MyGrid>
    GridLayout:
        cols:1
        size: root.width, root.height

        GridLayout:
            cols:2

            Label:
                text: "Name: "

            TextInput:
                multiline: False

            Label:
                text: "Email: "

            TextInput:
                multiline: False

        Button:
            text: "Submit"
```

##### Playing with positions

```
<MyGrid>
    GridLayout:
        cols:1
        size: root.width -200, root.height -200
        pos: 100, 100

        GridLayout:
            cols:2

            Label:
                text: "Name: "

            TextInput:
                multiline: False

            Label:
                text: "Email: "

            TextInput:
                multiline: False

        Button:
            text: "Submit"
```

[^^^](#KIVY)

---

#### OBJECT_PROPERTIES_KV_CONTINUED

```py
import kivy
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button
from kivy.uix.widget import Widget
from kivy.properties import ObjectProperty

class MyGrid(Widget):
    name = ObjectProperty(None)
    email = ObjectProperty(None)

    def btn(self):
        print("Name:", self.name.text, "Email: ", self.email.text)
        self.name.text = ""
        self.email.text = ""


class MyApp(App):
    def build(self):
        return MyGrid()


if __name__ == "__main__":
    MyApp().run()
```

##### .kv part

```
<MyGrid>

    name: name
    email: email

    GridLayout:
        cols:1
        size: root.width -200, root.height -200
        pos: 100, 100

        GridLayout:
            cols:2

            Label:
                text: "Name: "
            TextInput:
                id: name
                multiline: False

            Label:
                text: "Email: "
            TextInput:
                id: email
                multiline: False

        Button:
            text: "Submit"
            on_press: root.btn()
```

[^^^](#KIVY)

---

#### FLOATLAYOUT

```py
import kivy
from kivy.app import App
from kivy.uix.floatlayout import FloatLayout

class MyApp(App):
    def build(self):
        return FloatLayout()


if __name__ == "__main__":
    MyApp().run()
```

##### .kv part

```
<Button>:
    font_size: 40
    color: 0.3,0.6,0.7,1


<FloatLayout>:
    Button:
        text: "heyho"

    Button:
        text: "trk"
```

##### updated .kv file

```
<Button>:
    font_size: 40
    color: 0.3,0.6,0.7,1
    size_hint: 0.3, 0.5

<FloatLayout>:
    Button:
        pos_hint: {"x":0.5,"top":1}
        text: "heyho"

    Button:
        id: btn
        text: "trk" if btn.state == "normal" else "Down"
        background_color: 0.3,0.4,0.5,1
```

```
<Button>:
    font_size: 40
    color: 0.3,0.6,0.7,1
    size_hint: 0.3, 0.5

<FloatLayout>:
    Button:
        pos_hint: {"x":0.5,"top":1}
        text: "heyho"

    Button:
        id: btn
        pos_hint: {"y":0.3}
        text: "trk" if btn.state == "normal" else "Down"
        background_color: 0.3,0.4,0.5,1
```


[^^^](#KIVY)

---

#### LINKS

* [Kivy Course - Create Python Games and Mobile Apps](https://www.youtube.com/watch?v=l8Imtec4ReQ&t=2497s)

---

#### SOURCE

https://kivy.org/#home
https://www.youtube.com/watch?v=l8Imtec4ReQ

[^^^](#KIVY)

---

#### MAIN_PY

```py

from kivy.app import App
from kivy.uix.widget import Widget

class MainWidget(Widget):
    pass

class TheLabApp(App):
    pass

TheLabApp().run()
```

[^^^](#KIVY)

---

#### TheLab_KV

```
MainWidget:

<MainWidget>:
    Button:
        text: "Hello"
        size: "40dp", "40dp"
        pos: "100dp", "200dp"
    Button:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "200dp", "300dp"
    Label:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "300dp", "400dp"
```

[^^^](#KIVY)

---

#### LAYOUTS

- BoxLayout
- AnchorLayout
- GridLayout
- StackLayout
- ScrollView
- PageLayout

```py

```

[^^^](#KIVY)

---

#### BOXLAYOUT

main.py

```py
from kivy.app import App
from kivy.uix.widget import Widget
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button

class BoxLayoutExample(BoxLayout):
    def __index__(self, **kwargs):
        super().__init__(**kwargs)
        b1 = Button(text="A")
        b2 = Button(text="B")
        b3 = Button(text="C")
        self.add_widget(b1)
        self.add_widget(b2)
        self.add_widget(b3)

class MainWidget(Widget):
    pass

class TheLabApp(App):
    pass

TheLabApp().run()
```

TheLab.kv

```
BoxLayoutExample:

<BoxLayoutExample>:
    orientation: "vertical"
    Button:
        text: "A"
    Button:
        text: "B"
    Label:
        text: "C"

<MainWidget>:

    Button:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "200dp", "300dp"
        color: 0, 0, 1, 1

    Label:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "300dp", "400dp"
        color: 1, 0, 0, 1
```

[^^^](#KIVY)

---

#### SIZE_HINT_VS_POS_HINT

main.py

```py

from kivy.app import App
from kivy.uix.widget import Widget
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button

class BoxLayoutExample(BoxLayout):
    def __index__(self, **kwargs):
        super().__init__(**kwargs)
        self.orientation = "vertical"
        b1 = Button(text="A")
        b2 = Button(text="B")
        b3 = Button(text="C")
        self.add_widget(b1)
        self.add_widget(b2)
        self.add_widget(b3)

class MainWidget(Widget):
    pass

class TheLabApp(App):
    pass

TheLabApp().run()
```

TheLab.kv
size_hint

```
BoxLayoutExample:

<BoxLayoutExample>:
    orientation: "vertical"
    Button:
        text: "A"
        size_hint: 1, .5
    Button:
        text: "B"
        size_hint: 1, 2
    Label:
        text: "C"

<MainWidget>:

    Button:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "200dp", "300dp"
        color: 0, 0, 1, 1

    Label:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "300dp", "400dp"
        color: 1, 0, 0, 1
```

TheLab.kv
pos_hint - vertical

```
BoxLayoutExample:

<BoxLayoutExample>:
    orientation: "vertical"
    Button:
        text: "A"
        size_hint: .5, None
        #size: "100dp", "60dp"
        #width: "100dp"
        height: "60dp"
        #x, center_x, right
        #y, center_y, top
        pos_hint: {"center_x": .5}
    Button:
        text: "B"
        size_hint: 1, 2
    Label:
        text: "C"

<MainWidget>:

    Button:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "200dp", "300dp"
        color: 0, 0, 1, 1

    Label:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "300dp", "400dp"
        color: 1, 0, 0, 1
```

TheLab.kv
pos_hint - horizontal

```
BoxLayoutExample:

<BoxLayoutExample>:
    orientation: "horizontal"
    Button:
        text: "A"
        size_hint: .5, .5
        #size: "100dp", "60dp"
        #width: "100dp"
        #height: "60dp"
        #x, center_x, right
        #y, center_y, top
        pos_hint: {"center_y": .5}
    Button:
        text: "B"
    Label:
        text: "C"

<MainWidget>:

    Button:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "200dp", "300dp"
        color: 0, 0, 1, 1

    Label:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "300dp", "400dp"
        color: 1, 0, 0, 1
```

[^^^](#KIVY)

---

#### EMBED_A_LAYOUT

TheLab.kv
more buttons

```
BoxLayoutExample:

<BoxLayoutExample>:
    orientation: "horizontal"
    Button:
        text: "A"
        size_hint: .5, .5
        #size: "100dp", "60dp"
        #width: "100dp"
        #height: "60dp"
        #x, center_x, right
        #y, center_y, top
        pos_hint: {"center_y": .5}

    BoxLayout:
        orientation: "vertical"
        Button:
            text: "B1"
        Button:
            text: "B2"
        Button:
            text: "B3"
        Button:
            text: "B4"

    Label:
        text: "C"

<MainWidget>:

    Button:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "200dp", "300dp"
        color: 0, 0, 1, 1

    Label:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "300dp", "400dp"
        color: 1, 0, 0, 1

```

[^^^](#KIVY)

---

#### ANCHOR_LAYOUT

main.py

```py

from kivy.app import App
from kivy.uix.widget import Widget
from kivy.uix.anchorlayout import AnchorLayout
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button

class AnchorLayoutExample(AnchorLayout):
    pass

class BoxLayoutExample(BoxLayout):
    def __index__(self, **kwargs):
        super().__init__(**kwargs)
        self.orientation = "vertical"
        b1 = Button(text="A")
        b2 = Button(text="B")
        b3 = Button(text="C")
        self.add_widget(b1)
        self.add_widget(b2)
        self.add_widget(b3)

class MainWidget(Widget):
    pass

class TheLabApp(App):
    pass

TheLabApp().run()
```

TheLab_KV

```
AnchorLayoutExample:

<AnchorLayoutExample>:
    Button:
        text: "A"
        size_hint: .1, .1

<BoxLayoutExample>:
    orientation: "horizontal"
    Button:
        text: "A"
        size_hint: .5, .5
        #size: "100dp", "60dp"
        #width: "100dp"
        #height: "60dp"
        #x, center_x, right
        #y, center_y, top
        pos_hint: {"center_y": .5}

    BoxLayout:
        orientation: "vertical"
        Button:
            text: "B1"
        Button:
            text: "B2"
        Button:
            text: "B3"
        Button:
            text: "B4"

    Label:
        text: "C"

<MainWidget>:

    Button:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "200dp", "300dp"
        color: 0, 0, 1, 1

    Label:
        text: "Hello2"
        size: "40dp", "40dp"
        pos: "300dp", "400dp"
        color: 1, 0, 0, 1
```

[^^^](#KIVY)

---
