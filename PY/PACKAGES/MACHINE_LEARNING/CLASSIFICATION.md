
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

```py

```

[^^^](#CLASSIFICATION)

---

#### LOGISTIC_REGRESSION_MODEL_WITH_SKLEARN

```py

```

[^^^](#CLASSIFICATION)

---

#### LOGISTIC_REGRESSION_MODEL_EXAMPLE

```py

```

[^^^](#CLASSIFICATION)

---
