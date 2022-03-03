
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### DATA_ANALYSIS

---

* [CC_LINK](https://courses.cognitiveclass.ai/courses/course-v1:CognitiveClass+DA0101EN+v1/course/)

---

* [MODULE_1](#MODULE_1)
* []()
* []()
* []()
* []()

---

#### MODULE_1

##### Introduction to Data Analysis with Python

Welcome to this module on Introduction to Data Analysis with Python.
In this module, you'll learn about an example around estimating used car prices that we
will analyze in this course, using Python.
Then we will introduce an overview of Python packages used for data analysis.
And finally, you will learn about how to import and export data in and from Python, and how
to obtain basic insights from the dataset on used cars and their prices.
So to learn how to analyze data in Python, we'll be answering the following question:
"Can we estimate the price of a used car based on its characteristics?"
To answer this question, we are going to use various Python packages to perform data cleaning,
exploratory data analysis, model development and model evaluation.

##### The Problem

In this video, we'll be talking about data analysis and the scenario in which we'll
be playing the data analyst or data scientist.
But before we begin talking about the problem (used car prices), we should first understand
the importance of data analysis.
As you know, data is collected everywhere around us, whether it's collected manually
by scientists, or collected digitally every time you click on a website or your mobile
device.
But data does not mean information.
Data analysis, and in essence, data science, helps us unlock the information and insights
from raw data, to answer our questions.
So data analysis plays an important role by helping us to discover useful information
from the data, answer questions, and even predict the future or the unknown.
So let's begin with our scenario.
Let's say we have a friend named Tom.
And Tom wants to sell his car.
But the problem is, he doesn't know how much he should sell his car for.
Tom wants to sell his car for as much as he can.
But he also wants to set the price reasonably so someone would want to purchase it.
So the price he sets should represent the value of the car.
How can we help Tom determine the best price for his car?
Let's think like data scientists and clearly define some of his problems:
For example, is there data on the prices of other cars and their characteristics?
What features of cars affect their prices?
Colour?
Brand?
Does horsepower also affect the selling price, or perhaps, something else?
As a data analyst or data scientist, these are some of the questions we can start thinking
about.
To answer these questions, we're going to need some data.
In the next videos, we'll be going into how to understand the data, how to import
it into Python, and how to begin looking into some basic insights from the data.

##### Understanding the Data

The dataset used in this course is an open dataset, by Jeffrey C. Schlimmer.
This dataset is in CSV format, which separates each of the values with commas, making it
very easy to import in most tools or applications.
Each line represents a row in the dataset.
In the hands-on lab for this module, you'll be able to download and use the CSV file.
Do you notice anything different about the first row?
Sometimes the first row is a header which contains a column name for each of the 26
columns.
But in this example, it's just another row of data.
So here's the documentation on what each of the 26 columns represent.
There are a lot of columns, and I'll just go through a few of the column names, but
you can also check out the link at the bottom of the slide to go through the descriptions
yourself.
The first attribute, "symboling", corresponds to the insurance risk level of a car.
Cars are initially assigned a risk factor symbol associated with their price.
Then, if an automobile is more risky, this symbol is adjusted by moving it up the scale.
A value of +3 indicates that the auto is risky, -3 that it is probably pretty safe.
The second attribute "normalized-losses" is the relative average loss payment per insured
vehicle year.
This value is normalized for all autos within a particular size classification (two-door
small, station wagons, sports/speciality, etc...), and represents the average loss per
car per year.
The values range from 65 to 256.
The other attributes are easy to understand.
If you would like to check out more details, refer to the link at the bottom of the slide.
Ok, after we understand the meaning of each feature, we'll notice that the 26th attribute
is "price".
This is our target value, or label, in other words.
This means "price" is the value that we want to predict from the dataset, and the
predictors should be all the other variables listed, like "symboling", "normalized-losses",
"make" and so on.
Thus, the goal of this project is to predict "price" in terms of other car features.
Just a quick note, this dataset is actually from 1985, so the car prices for the models
may seem a little low, but just bear in mind that the goal of this exercise is to learn
how to analyze the data.

#####

In order to do data analysis in Python, we should first tell you a little bit about the
main packages relevant to analysis in Python.
A Python library is a collection of functions and methods that allow you to perform lots
of actions without writing any code.
The libraries usually contain built-in modules providing different functionalities, which
you can use directly.

And there are extensive libraries, offering a broad range of facilities.
We have divided the Python data analysis libraries into three groups: The first group is called
"scientific computing libraries." Pandas offers data structure and tools for
effective data manipulation and analysis.
It provides fast access to structured data.
The primary instrument of Pandas is a two-dimensional table consisting of column and row labels,
which are called a DataFrame.
It is designed to provide easy indexing functionality.
The Numpy library uses arrays for its inputs and outputs.
It can be extended to objects for matrices, and with minor coding changes, developers
can perform fast array processing.
SciPy includes functions for some advanced math problems, as listed on this slide, as
well as data visualization.

Using data visualization methods is the best way to communicate with others, showing them
meaningful results of analysis.
These libraries enable you to create graphs, charts and maps.
The Matplotlib package is the most well-known library for data visualization.
It is great for making graphs and plots.
The graphs are also highly customizable.
Another high-level visualization library is Seaborn.
It is based on Matplotlib.
It's very easy to generate various plots such as heat maps, time series, and violin
plots.
With Machine Learning algorithms, we're able to develop a model using our dataset,
and obtain predictions.

The algorithmic libraries tackle some machine learning tasks from basic to complex.
Here we introduce two packages: The Scikit-learn library contains tools for
statistical modeling, including regression, classification, clustering and so on.
This library is built on NumPy, SciPy and Matplotlib.
StatsModels is also a Python module that allows users to explore data, estimate statistical
models, and perform statistical tests.

[^^^](#DATA_ANALYSIS)

---
