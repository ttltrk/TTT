
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md) - [MACHINE_LEARNING](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/MACHINE_LEARNING/MACHINE_LEARNING.md)

---

### CLASSIFICATION

---

```

```

---

* [WHAT_IS_CLASSIFICATION](#WHAT_IS_CLASSIFICATION)
* [LINEAR_MODEL_FOR_CLASS](#LINEAR_MODEL_FOR_CLASS)
* [LOGISTIC_REGRESSION_MODEL](#LOGISTIC_REGRESSION_MODEL)
* [LOGISTIC_REGRESSION_MODEL_WITH_SKLEARN](#LOGISTIC_REGRESSION_MODEL_WITH_SKLEARN)
* [LOGISTIC_REGRESSION_MODEL_EXAMPLE](#LOGISTIC_REGRESSION_MODEL_EXAMPLE)

---

#### WHAT_IS_CLASSIFICATION

- BASICS

```
Machine Learning on a high level is made up of supervised and unsupervised learning.
```

```
Supervised Learning means that we will have labeled historical data that we will use to inform our model.
We call the label or thing we’re trying to predict, the target. So in supervised learning,
there is a known target for the historical data.

Unsupervised learning there is no known target.
```

```
Within supervised learning, there is Classification and Regression.

Classification problems are where the target is a categorical value (often True or False,
but can be multiple categories).

Regression problems are where the target is a numerical value.
```

```

For example, predicting housing prices is a regression problem.
It’s supervised, since we have historical data of the sales of houses in the past.
It’s regression, because the housing price is a numerical value.

Predicting if someone will default on their loan is a classification problem.
Again, it’s supervised, since we have the historical data of whether past loanees defaulted,
and it’s a classification problem because we are trying to predict if
the loan is in one of two categories (default or not).
```

```
Logistic Regression, while it has regression in its name is an algorithm
for solving classification problems, not regression problems.
```

- CLASSIFICATION TERMINOLOGY

```
- target

The Survived column is what we’re trying to predict. We call this the target.
You can see that it’s a list of 1’s and 0’s.
A 1 means that the passenger survived, and a 0 means the passenger didn’t survive.

- feature

The remaining columns are the information about the passenger that we can use to predict the target.
We call each of these columns a feature. Features are the data we use to make our prediction.

- model

While we know whether each passenger in the dataset survived, we’d like to be able to make predictions
about additional passengers that we weren’t able to collect that data for.
We’ll build a machine learning model to help us do this.
```

```py

```

[^^^](#CLASSIFICATION)

---

#### LINEAR_MODEL_FOR_CLASS

- EQUATION FOR THE LINE

```
A line is defined by an equation in the following form:

0 = ax + by + c
```

```
Let’s look at a specific example of a line where the coefficients are a=1, b=-1 and c=-30.

0 = (1)x + (-1)y + (-30)

The three coefficients are: 1, -1, -30

We can see, for example, that the point (30, 0) lies right on the line (Fare 30, Age 0).
If we plug it into the equation, it works out.

30 - 0 - 30 = 0

We can also see that the point (50, 20) is on the line (Fare 50, Age 20).

50 - 20 - 30 = 0
```

```
(2,1)

0 = (2)*2 + (1)*1 - 5

(0,5)

0 = (2)*0 + (1)*5 - 5
```

- MAKING A PREDICTION BASED ON THE LINE

```
Let’s again look at the same line.

0 = (1)x + (-1)y - 30

For example, let’s say we have a passenger whose Fare is 100 and Age is 20.

(1)100 + (-1)20 - 30 = 100 - 20 - 30 = 50

Since this value is positive, the point is on the right side of the line
and we’d predict that the passenger survived.
```

```
Now let’s say a passenger had a Fare of 10 and their Age is 50.
Let’s plug these values into the equation.

(1)10 + (-1)50 - 30 = -70

Since this value is negative, the point is on the left side of the line
and we’d predict that the passenger didn’t survive.
```

- WHAT MAKES A GOOD LINE

```
Logistic Regression is a way of mathematically finding the best line.
```

[^^^](#CLASSIFICATION)

---

#### LOGISTIC_REGRESSION_MODEL

- PROBABILITY OF SURVIVING

```
In order to determine the best possible line to split our data, we need to have
a way of scoring the line. First, let’s look at a single datapoint.

Ideally, if the datapoint is a passenger who survived, it would be on the right side
of the line and far from the line. If it’s a datapoint for a passenger who didn’t survive,
it would be far from the line to the left. The further it is from the line,
the more confident we are that it’s on the correct side of the line.
```

```
For each datapoint, we’ll have a score that’s a value between 0 and 1. We can think of it
as the probability that the passenger survives. If the value is close to 0 that point would be far
to the left of the line and that means we’re confident the passenger didn’t survive.
If the value is close to 1 that point would be far to the right of the line and that means we’re
confident the passenger did survive. A value of 0.5 means the point falls directly
on the line and we are uncertain if the passenger survives.

The equation for calculating this score is below, though the intuition
for it is far more important that the actual equation.

Recall that the equation for the line is in the form 0 = ax+by+c
(x is the Fare, y is the Age, and a, b & c are the coefficients that we control).
The number e is the mathematical constant, approximately 2.71828.
```

```
Logistic Regression gives not just a prediction (survived or not), but a probability (80% chance this person survived).
```

- LIKELIHOOD

```
likelihodd = p (if passangers survived)
likelihodd = 1 = p (if passangers didn't survived)
```

[^^^](#CLASSIFICATION)

---

#### LOGISTIC_REGRESSION_MODEL_WITH_SKLEARN

- PREP DATA WITH PANDAS

```
Before we can use sklearn to build a model, we need to prep the data with Pandas.
```

```
First, we need to make all our columns numerical.
Recall how to create the boolean column for Sex.
```

```py
df['male'] = df['Sex'] == 'male'
```

```
Now, let’s take all the features and create a numpy array called X.
We first select all the columns we are interested in and then use the values method
to convert it to a numpy array.
```

```py
X = df[['Pclass', 'male', 'Age', 'Siblings/Spouses', 'Parents/Children', 'Fare']].values
```

```
Now let’s take the target (the Survived column) and store it in a variable y.
```

```py
y = df['Survived'].values
```

```py
import pandas as pd
df = pd.read_csv('https://sololearn.com/uploads/files/titanic.csv')
df['male'] = df['Sex'] == 'male'
X = df[['Pclass', 'male', 'Age', 'Siblings/Spouses', 'Parents/Children', 'Fare']].values
y = df['Survived'].values
print(X)
print(y)
```

[^^^](#CLASSIFICATION)

---

#### LOGISTIC_REGRESSION_MODEL_EXAMPLE

```
Let’s start by loading the dataset and taking a peak at the data and how it’s formatted.
```

```py
from sklearn.datasets import load_breast_cancer
cancer_data = load_breast_cancer()
```

```
The object returned (which we stored in the cancer_data variable) is an object similar to a Python dictionary.
We can see the available keys with the keys method.
```

```py
print(cancer_data.keys())
```

```
We’ll start by looking at DESCR, which gives a detailed description of the dataset.
```

```py
print(cancer_data['DESCR'])
```

```py
import pandas as pd
from sklearn.datasets import load_breast_cancer

cancer_data = load_breast_cancer()
print(cancer_data.keys())
print(cancer_data['DESCR'])
```

- LOADING THE DATA INTO PANDAS

```py
import pandas as pd
from sklearn.datasets import load_breast_cancer

cancer_data = load_breast_cancer()

df = pd.DataFrame(cancer_data['data'], columns=cancer_data['feature_names'])
df['target'] = cancer_data['target']
print(df.head())
```

- LOGISTIC REGRESSION MODEL

```py
import pandas as pd
from sklearn.datasets import load_breast_cancer
from sklearn.linear_model import LogisticRegression

cancer_data = load_breast_cancer()
df = pd.DataFrame(cancer_data['data'], columns=cancer_data['feature_names'])
df['target'] = cancer_data['target']

X = df[cancer_data.feature_names].values
y = df['target'].values

model = LogisticRegression(solver='liblinear')
model.fit(X, y)
print("prediction for datapoint 0:", model.predict([X[0]]))
print(model.score(X, y))
```

[^^^](#CLASSIFICATION)

---
