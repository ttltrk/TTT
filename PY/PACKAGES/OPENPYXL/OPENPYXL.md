
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md)

---

### OPENPYXL

---

```

```

---

* [ACCESSING_WORKBOOK](#ACCESSING_WORKBOOK)
* [ACCESSING_CELL_VALUES](#ACCESSING_CELL_VALUES)
* [CHANGE_CELL_VALUES](#CHANGE_CELL_VALUES)
* [CREATING_LISTING_CHANGING_SHEETS](#CREATING_LISTING_CHANGING_SHEETS)
* [CREATING_A_NEW_WORKBOOK](#CREATING_A_NEW_WORKBOOK)
* [ACCESSING_MULTIPLE_CELLS](#ACCESSING_MULTIPLE_CELLS)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### ACCESSING_WORKBOOK

```py
from openpyxl import Workbook, load_workbook

wb = load_workbook('Grades.xlsx')
ws = wb.active

print(ws)

>>>
<Worksheet "Sheet1">
>>>
```

[^^^](#OPENPYXL)

---

#### ACCESSING_CELL_VALUES

```py
from openpyxl import Workbook, load_workbook

wb = load_workbook('Grades.xlsx')
ws = wb.active

print(ws['A1'])
print(ws['A1'].value)
print(ws['A2'].value)

>>>
<Cell 'Sheet1'.A1>
Name
Joe
>>>
```

[^^^](#OPENPYXL)

---

#### CHANGE_CELL_VALUES

```py
from openpyxl import Workbook, load_workbook

wb = load_workbook('Grades.xlsx')
ws = wb.active


print(ws['A2'].value)

>>>
Joe
>>>

ws['A2'].value = 'TEST'
wb.save('Grades.xlsx')
print(ws['A2'].value)

>>>
TEST
>>>
```

[^^^](#OPENPYXL)

---

#### CREATING_LISTING_CHANGING_SHEETS

```py
wb = load_workbook('Grades.xlsx')
print(wb.sheetnames)

>>>
['Sheet1', 'Sheet2', 'Sheet3', 'Sheet4']
>>>
```

```py
wb = load_workbook('Grades.xlsx')
wb.create_sheet('TTT')
print(wb.sheetnames)

>>>
['Sheet1', 'Sheet2', 'Sheet3', 'Sheet4', 'TTT']
>>>
```

[^^^](#OPENPYXL)

---

#### CREATING_A_NEW_WORKBOOK

```py
from openpyxl import Workbook, load_workbook

wb = Workbook()
ws = wb.active
ws.title = "Data"

ws.append(['Tim', 'is', 'great', '!'])
ws.append(['Tim', 'is', 'great', '!'])
ws.append(['Tim', 'is', 'great', '!'])
ws.append(['Tim', 'is', 'great', '!'])
ws.append(['Tim', 'is', 'great', '!'])
ws.append(['end'])

wb.save('tim.xlsx')
```

[^^^](#OPENPYXL)

---

#### ACCESSING_MULTIPLE_CELLS

```py

```

[^^^](#OPENPYXL)

---

[^^^](#OPENPYXL)

---

[^^^](#OPENPYXL)

---
