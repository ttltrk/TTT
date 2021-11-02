
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [DS](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/DATA_SCIENCE/DATA_SCIENCE.md)

---

### DATA_SCIENCE_METHODOLOGY

---

* [PROBLEM_TO_APPROACH](#PROBLEM_TO_APPROACH)
* [REQUIREMENTS_TO_COLLECTION](#REQUIREMENTS_TO_COLLECTION)
* [UNDERSTANDING_TO_PREPARATION](#UNDERSTANDING_TO_PREPARATION)
* [MODELING_TO_EVALUATION](#MODELING_TO_EVALUATION)
* [DEPLOYMENT_TO_FEEDBACK](#DEPLOYMENT_TO_FEEDBACK)

---

#### PROBLEM_TO_APPROACH

- Business Understanding

```
Welcome to Data Science Methodology 101 From Problem to Approach Business Understanding!

Has this ever happened to you?
You've been called into a meeting by your boss, who makes you aware of an important
task one with a very tight deadline that absolutely has to be met.
You both go back and forth to ensure that all aspects of the task have been considered
and the meeting ends with both of you confident that things are on track.
Later that afternoon, however, after you've spent some time examining the various issues
at play, you realize that you need to ask several additional questions in order to truly
accomplish the task.
Unfortunately, the boss won't be available again until tomorrow morning.
Now, with the tight deadline still ringing in your ears, you start feeling a sense of
uneasiness.

So, what do you do?

Do you risk moving forward or do you stop and seek clarification.
Data science methodology begins with spending the time to seek clarification, to attain
what can be referred to as a business understanding.
Having this understanding is placed at the beginning of the methodology because getting
clarity around the problem to be solved, allows you to determine which data will be used to
answer the core question.

Rollins suggests that having a clearly defined question is vital because it ultimately directs
the analytic approach that will be needed to address the question.
All too often, much effort is put into answering what people THINK is the question, and while
the methods used to address that question might be sound, they don't help to solve
the actual problem.
Establishing a clearly defined question starts with understanding the GOAL of the person
who is asking the question.
For example, if a business owner asks: "How can we reduce the costs of performing an activity?"
We need to understand, is the goal to improve the efficiency of the activity?
Or is it to increase the businesses profitability?
Once the goal is clarified, the next piece of the puzzle is to figure out the objectives
that are in support of the goal.
By breaking down the objectives, structured discussions can take place where priorities
can be identified in a way that can lead to organizing and planning on how to tackle the
problem.
Depending on the problem, different stakeholders will need to be engaged in the discussion
to help determine requirements and clarify questions.
So now, let's look at the case study related to applying "Business Understanding"
In the case study, the question being asked is: What is the best way to allocate the limited
healthcare budget to maximize its use in providing quality care?
This question is one that became a hot topic for an American healthcare insurance provider.
As public funding for readmissions was decreasing, this insurance company was at risk of having
to make up for the cost difference,
which could potentially increase rates for its customers.
Knowing that raising insurance rates was not going to be a popular move, the insurance
company sat down with the health care authorities in its region and brought in IBM data scientists
to see how data science could be applied to the question at hand.
Before even starting to collect data, the goals and objectives needed to be defined.
After spending time to determine the goals and objectives, the team prioritized "patient
readmissions" as an effective area for review.
With the goals and objectives in mind, it was found that approximately 30% of individuals
who finish rehab treatment would be readmitted to a rehab center within one year; and that
50% would be readmitted within five years.
After reviewing some records, it was discovered that the patients with congestive heart failure
were at the top of the readmission list.
It was further determined that a decision-tree model could be applied to review this scenario,
to determine why this was occurring.
To gain the business understanding that would guide the analytics team in formulating and
performing their first project, the IBM Data scientists, proposed and delivered an on-site
workshop to kick things off.
The key business sponsors involvement throughout the project was critical, in that the sponsor:

1. Set overall direction
2. Remained engaged and provided guidance.
3. Ensured necessary support, where needed.

Finally, four business requirements were identified for whatever model would be built.
Namely:

- Predicting readmission outcomes for those patients with Congestive Heart Failure
- Predicting readmission risk.
- Understanding the combination of events that led to the predicted outcome
- Applying an easy-to-understand process to new patients, regarding their readmission
risk.
```

- Analytic Approach

```
Selecting the right analytic approach depends on the question being asked.
The approach involves seeking clarification from the person who is asking the question,
so as to be able to pick the most appropriate path or approach.
In this video we'll see how the second stage of the data science methodology is applied.
Once the problem to be addressed is defined, the appropriate analytic approach for the
problem is selected in the context of the business requirements.
This is the second stage of the data science methodology.
Once a strong understanding of the question is established, the analytic approach can
be selected.
This means identifying what type of patterns will be needed to address the question most
effectively.
If the question is to determine probabilities of an action, then a predictive model might
be used.
If the question is to show relationships, a descriptive approach maybe be required.
This would be one that would look at clusters of similar activities based on events and
preferences.
Statistical analysis applies to problems that require counts.
For example if the question requires a yes/ no answer, then a classification approach
to predicting a response would be suitable.
Machine Learning is a field of study that gives computers the ability to learn without
being explicitly programmed.
Machine Learning can be used to identify relationships and trends in data that might otherwise not
be accessible or identified.
In the case where the question is to learn about human behaviour, then an appropriate
response would be to use Clustering Association approaches.
So now, let's look at the case study related to applying Analytic Approach.
For the case study, a decision tree classification model was used to identify the combination
of conditions leading to each patient's outcome.
In this approach, examining the variables in each of the nodes along each path to a
leaf, led to a respective threshold value.
This means the decision tree classifier provides both the predicted outcome, as well as the
likelihood of that outcome, based on the proportion at the dominant outcome, yes or no, in each
group.
From this information, the analysts can obtain the readmission risk, or the likelihood of
a yes for each patient. If the dominant outcome is yes, then the risk
is simply the proportion of yes patients in the leaf.
If it is no, then the risk is 1 minus the proportion of no patients in the leaf.
A decision tree classification model is easy for non-data scientists to understand and
apply, to score new patients for their risk of readmission.
Clinicians can readily see what conditions are causing a patient to be scored as high-risk
and multiple models can be built and applied at various points during hospital stay.
This gives a moving picture of the patient's risk and how it is evolving with the various
treatments being applied. For these reasons, the decision tree classification
approach was chosen for building the Congestive Heart Failure readmission model.
```

[^^^](#DATA_SCIENCE_METHODOLOGY)

---

#### REQUIREMENTS_TO_COLLECTION

```

```

```py

```

[^^^](#DATA_SCIENCE_METHODOLOGY)

---

#### UNDERSTANDING_TO_PREPARATION

```

```

```py

```

[^^^](#DATA_SCIENCE_METHODOLOGY)

---

#### MODELING_TO_EVALUATION

```

```

```py

```

[^^^](#DATA_SCIENCE_METHODOLOGY)

---

#### DEPLOYMENT_TO_FEEDBACK

```

```

```py

```

[^^^](#DATA_SCIENCE_METHODOLOGY)

---
