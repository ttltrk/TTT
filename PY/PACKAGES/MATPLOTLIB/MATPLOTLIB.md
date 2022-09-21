
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md)

---

### MATPLOTLIB

---

Matplotlib is a library used to create graphs, charts, and figures. It also provides functions to customize your figures by changing the colors, labels, etc.

To start using matplotlib, we first need to import it

```py
import matplotlib.pyplot as plt
```

pyplot is the module we will be using to create our plots.
plt is a common name used for importing this module.

---

* [W3_INTRO](#W3_INTRO)
* [W3_GET_STARTED](#W3_GET_STARTED)
* [W3_PYPLOT](#W3_PYPLOT)
* [W3_PLOTTING](#W3_PLOTTING)
* [W3_MARKERS](#W3_MARKERS)
* [W3_LINE](#W3_LINE)
* [W3_LABELS](#W3_LABELS)
* [W3_GRID](#W3_GRID)
* [W3_SUBPLOT](#W3_SUBPLOT)
* [W3_SCATTER](#W3_SCATTER)
* [W3_BARS](#W3_BARS)
* [W3_HISTOGRAMS](#W3_HISTOGRAMS)
* [W3_PIE_CHARTS](#W3_PIE_CHARTS)

---

* [LINKS](#LINKS)
* [BASICS](#BASICS)
* [LINE_PLOT](#LINE_PLOT)
* [BAR_PLOT](#BAR_PLOT)
* [BOX_PLOT](#BOX_PLOT)
* [HISTOGRAM](#HISTOGRAM)
* [AREA_PLOT](#AREA_PLOT)
* [SCATTER_PLOT](#SCATTER_PLOT)
* [PIE_CHART](#PIE_CHART)
* [PLOT_FORMATTING](#PLOT_FORMATTING)

---

#### W3_INTRO

```py

```

[^^^](#MATPLOTLIB)

---

#### W3_GET_STARTED

```py

```

[^^^](#MATPLOTLIB)

---

#### W3_PYPLOT

```py

```

[^^^](#MATPLOTLIB)

---

#### W3_PLOTTING

```py

```

[^^^](#MATPLOTLIB)

---

#### W3_MARKERS

```py

```

[^^^](#MATPLOTLIB)

---

#### W3_LINE

```py

```

[^^^](#MATPLOTLIB)

---

#### W3_LABELS

```py

```

[^^^](#MATPLOTLIB)

---

#### W3_GRID

```py

```

[^^^](#MATPLOTLIB)

---

#### W3_SUBPLOT

```py

```

[^^^](#MATPLOTLIB)

---

#### W3_SCATTER

```py

```

[^^^](#MATPLOTLIB)

---

#### W3_BARS

```py

```

[^^^](#MATPLOTLIB)

---

#### W3_HISTOGRAMS

```py

```

[^^^](#MATPLOTLIB)

---

#### W3_PIE_CHARTS

```py

```

[^^^](#MATPLOTLIB)

---

#### LINKS

- YT

* [Matplotlib Crash Course](https://www.youtube.com/watch?v=3Xc3CA655Y4)

---

#### BASICS

Matplotlib works really well with Pandas!
To demonstrate the power of matplotlib, let's create a chart from dummy data.
We will create a pandas Series with some numbers and use it to create our chart:

```py
import matplotlib.pyplot as plt
import pandas as pd

s = pd.Series([18, 42, 9, 32, 81, 64, 3])
s.plot(kind='bar')
plt.savefig('plot.png')
```

The ```plot()``` function is used to create a plot from the data in a Pandas Series or DataFrame.

The data from the series is using the Y axis, while the index is plotted on the X axis.
As we have not provided a custom index for our data, the default numeric index is used.

[^^^](#MATPLOTLIB)

---

#### LINE_PLOT

Matplotlib supports the creation of different chart types.
Let's start with the most basic one -- a line chart.
We will use the COVID-19 data from the previous module to create our charts.

Let's show the number of cases in the month of December.
To create a line chart we simply need to call the plot() function on our DataFrame, which contains the corresponding data:

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df.set_index('date', inplace=True)

df[df['month']==12]['cases'].plot()
plt.savefig('plot.png')
```

We can also include multiple lines in our chart.

For example, let's also include the deaths column in our DataFrame:

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df.set_index('date', inplace=True)

(df[df['month']==12])[['cases', 'deaths']].plot()
plt.savefig('plot.png')
```

[^^^](#MATPLOTLIB)

---

#### BAR_PLOT

The plot() function can take a kind argument, specifying the type of the plot we want to produce.

For bar plots, provide kind="bar".
Let's make a bar plot for the monthly infection cases:


```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df.set_index('date', inplace=True)

(df.groupby('month')['cases'].sum()).plot(kind="bar")
plt.savefig('plot.png')
```

We can also plot multiple columns.
The stacked property can be used to specify if the bars should be stacked on top of each other.

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df.set_index('date', inplace=True)

df = df.groupby('month')[['cases', 'deaths']].sum()
df.plot(kind="bar", stacked=True)
plt.savefig('plot.png')
```

kind="barh" can be used to create a horizontal bar chart.

[^^^](#MATPLOTLIB)

---

#### BOX_PLOT

A box plot is used to visualize the distribution of values in a column, basically visualizing the result of the describe() function.

For example, let's create a box plot for the cases in June:

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df.set_index('date', inplace=True)

df[df["month"]==6]["cases"].plot(kind="box")
plt.savefig('plot.png')
```

The green line shows the median value.
The box shows the upper and lower quartiles (25% of the data is greater or less than these values).
The circles show the outliers, while the black lines show the min/max values excluding the outliers.

[^^^](#MATPLOTLIB)

---

#### HISTOGRAM

Similar to box plots, histograms show the distribution of data.
Visually histograms are similar to bar charts, however, histograms display frequencies for a group of data rather than an individual data point; therefore, no spaces are present between the bars.

Typically, a histogram groups data into chunks (or bins).

```py
df[df["month"]==6]["cases"].plot(kind="hist")
```

The histogram grouped the data into 9 bins and shows their frequency. You can see that, for example, only single data points are greater than 6000.

```py
plot(kind="hist", bins = 10)
```

[^^^](#MATPLOTLIB)

---

#### AREA_PLOT

kind='area' creates an Area plot:

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df.set_index('date', inplace=True)

df[df["month"]==6][["cases", "deaths"]].plot(kind="area", stacked=False)
plt.savefig('plot.png')
```

[^^^](#MATPLOTLIB)

---

#### SCATTER_PLOT

A scatter plot is used to show the relationship between two variables.

For example, we can visualize how the cases/deaths are related:

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df.set_index('date', inplace=True)

df[df["month"]==6][["cases", "deaths"]].plot(kind="scatter", x='cases', y='deaths')
plt.savefig('plot.png')
```

[^^^](#MATPLOTLIB)

---

#### PIE_CHART

We can create a pie chart using kind="pie".
Let's create one for cases by month:

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = (df['date'].dt.month_name()).str[:3]
df.set_index('date', inplace=True)

df.groupby('month')['cases'].sum().plot(kind="pie")
plt.savefig('plot.png')
```

Pie charts are generally used to show percentage or proportional data.
Pie charts are usually used when you have up to 6 categories.

[^^^](#MATPLOTLIB)

---

#### PLOT_FORMATTING

Matplotlib provides a number of arguments to customize your plot.
The legend argument specifies whether or not to show the legend.
You can also change the labels of the axis by setting the xlabel and ylabel arguments:

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")

df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df['day'] = df['date'].dt.day
df.set_index('day', inplace=True)

df = df[df['month']==6]

df[['cases', 'deaths']].plot(kind="line", legend=True)
plt.xlabel('Days in June')
plt.ylabel('Number')
plt.savefig('plot.png')
```

By default, pandas select the index name as xlabel, while leaving it empty for ylabel.

The suptitle() function can be used to set a plot title:

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")

df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df['day'] = df['date'].dt.day
df.set_index('day', inplace=True)

df = df[df['month']==6]

df[['cases', 'deaths']].plot(kind="area", legend=True)
plt.xlabel('Days in June')
plt.ylabel('Number')
plt.suptitle("COVID-19 in June")
plt.savefig('plot.png')
```

We can also change the colors used in the plot by setting the color attribute. It accepts a list of color hexes.

For example, let's set the cases to blue, deaths to red colors:

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")

df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df['day'] = df['date'].dt.day
df.set_index('day', inplace=True)

df = df[df['month']==6]

df[['cases', 'deaths']].plot(kind="area", legend=True, stacked=False, color=['#1970E7', '#E73E19'])
plt.xlabel('Days in June')
plt.ylabel('Number')
plt.suptitle("COVID-19 in June")
plt.savefig('plot.png')
```

[^^^](#MATPLOTLIB)

---
