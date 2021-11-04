
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

- Data Requirements

```
If your goal is to make a spaghetti dinner but you don't have the right ingredients
to make this dish, then your success will be compromised.
Think of this section of the data science methodology as cooking with data.
Each step is critical in making the meal.
So, if the problem that needs to be resolved is the recipe, so to speak, and data is an
ingredient, then the data scientist needs to identify:
which ingredients are required, how to source or the collect them,
how to understand or work with them, and how to prepare the data to meet the desired
outcome.
Building on the understanding of the problem at hand, and then using the analytical approach
selected, the Data Scientist is ready to get started.

Now let's look at some examples of the data requirements within the data science methodology.
Prior to undertaking the data collection and data preparation stages of the methodology,
it's vital to define the data requirements for decision-tree classification.

This includes identifying the necessary data content, formats and sources for initial data
collection.

So now, let's look at the case study related to applying

"Data Requirements".

In the case study, the first task was to define the data requirements for the decision tree
classification approach that was selected.
This included selecting a suitable patient cohort from the health insurance providers
member base.
In order to compile the complete clinical histories, three criteria were identified
for inclusion in the cohort.
First, a patient needed to be admitted as in-patient within the provider service area,
so they'd have access to the necessary information.
Second, they focused on patients with a primary diagnosis of congestive heart failure during
one full year.
Third, a patient must have had continuous enrollment for at least six months, prior
to the primary admission for congestive heart failure, so that complete medical history
could be compiled.
Congestive heart failure patients who also had been diagnosed as having other significant
medical conditions, were excluded from the cohort because those conditions would cause
higher-than-average re-admission rates and, thus, could skew the results.

Then the content, format, and representations of the data needed for decision tree classification
were defined.
This modeling technique requires one record per patient, with columns representing the
variables in the model.
To model the readmission outcome, there needed to be data covering all aspects of the patient's
clinical history.
This content would include admissions, primary, secondary, and tertiary diagnoses, procedures,
prescriptions, and other services provided either during hospitalization or throughout
patient/doctor visits.
Thus, a particular patient could have thousands of records, representing all their related
attributes.
To get to the one record per patient format, the data scientists rolled up the transactional
records to the patient level, creating a number of new variables to represent that information.
This was a job for the data preparation stage, so thinking ahead and anticipating subsequent
stages is important.
```

- Data Collection

```
After the initial data collection is performed, an assessment by the data scientist takes
place to determine whether or not they have what they need.
As is the case when shopping for ingredients to make a meal, some ingredients might be
out of season and more difficult to obtain or cost more than initially thought.
In this phase the data requirements are revised and decisions are made as to whether or not
the collection requires more or less data.
Once the data ingredients are collected, then in the data collection stage, the data scientist
will have a good understanding of what they will be working with.
Techniques such as descriptive statistics and visualization can be applied to the data
set, to assess the content, quality, and initial insights about the data.
Gaps in data will be identified and plans to either fill or make substitutions will
have to be made.
In essence, the ingredients are now sitting on the cutting board.
Now let's look at some examples of the data collection stage within the data science methodology.
This stage is undertaken as a follow-up to the data requirements stage.

So now, let's look at the case study related to applying

"Data Collection".

Collecting data requires that you know the source or, know where to find the data elements
that are needed.
In the context of our case study, these can include:
demographic, clinical and coverage information of patients,
provider information, claims records, as well as
pharmaceutical and other information related to all the diagnoses of the congestive heart
failure patients.
For this case study, certain drug information was also needed, but that data source was
not yet integrated with the rest of the data sources.
This leads to an important point: It is alright to defer decisions about unavailable data,
and attempt to acquire it at a later stage.
For example, this can even be done after getting some intermediate results from the predictive
modeling.
If those results suggest that the drug information might be important in obtaining a good model,
then the time to try to get it would be invested.
As it turned out though, they were able to build a reasonably good model without this
drug information.
DBAs and programmers often work together to extract data from various sources, and then
merge it.
This allows for removing redundant data, making it available for the next stage of the methodology,
which is data understanding.
At this stage, if necessary, data scientists and analytics team members can discuss various ways
to better manage their data, including automating certain processes in the database, so that
data collection is easier and faster.
```

[^^^](#DATA_SCIENCE_METHODOLOGY)

---

#### UNDERSTANDING_TO_PREPARATION

- Data Understanding

```
Data understanding encompasses all activities related to constructing the data set.
Essentially, the data understanding section of the data science methodology answers the
question: Is the data that you collected representative of the problem to be solved?
Let's apply the data understanding stage of our methodology, to the case study we've
been examining.

In order to understand the data related to congestive heart failure admissions, descriptive
statistics needed to be run against the data columns that would become variables in the
model.

- First, these statistics included Hearst, univariates, and statistics on each variable, such as mean,
median, minimum, maximum, and standard deviation.
- Second, pairwise correlations were used, to see how closely certain variables were related,
and which ones, if any, were very highly correlated, meaning that they would be essentially redundant,
thus making only one relevant for modeling.
- Third, histograms of the variables were examined to understand their distributions.
Histograms are a good way to understand how values or a variable are distributed, and
which sorts of data preparation may be needed to make the variable more useful in a model.

For example, for a categorical variable that has too many distinct values to be informative
in a model, the histogram would help them decide how to consolidate those values.
The univariates, statistics, and histograms are also used to assess data quality.
From the information provided, certain values can be re-coded or perhaps even dropped if
necessary, such as when a certain variable has many missing values.

The question then becomes, does "missing" mean anything?

Sometimes a missing value might mean "no", or "0" (zero), or at other times it simply
means "we don't know". Or, if a variable contains invalid or misleading values, such
as a numeric variable called "age" that contains 0 to 100 and also 999, where that
"triple-9" actually means "missing", but would be treated as a valid value unless
we corrected it.

Initially, the meaning of congestive heart failure admission was decided on the basis
of a primary diagnosis of congestive heart failure.
But working through the data understanding stage revealed that the initial definition
was not capturing all of the congestive heart failure admissions that were expected, based
on clinical experience.
This meant looping back to the data collection stage and adding secondary and tertiary diagnoses,
and building a more comprehensive definition of congestive heart failure admission.
This is just one example of the interactive processes in the methodology.
The more one works with the problem and the data, the more one learns and therefore the
more refinement that can be done within the model, ultimately leading to a better solution
to the problem.
```

```
In a sense, data preparation is similar to washing freshly picked vegetables in so far
as unwanted elements, such as dirt or imperfections, are removed.
Together with data collection and data understanding, data preparation is the most time-consuming
phase of a data science project, typically taking seventy percent and even up to even
ninety percent of the overall project time.
Automating some of the data collection and preparation processes in the database, can
reduce this time to as little as 50 percent.
This time savings translates into increased time for data scientists to focus on creating
models.
To continue with our cooking metaphor, we know that the process of chopping onions to
a finer state will allow for its flavours to spread through a sauce more easily than
that would be the case if we were to drop the whole onion into the sauce pot.
Similarly, transforming data in the data preparation phase is the process of getting the data into
a state where it may be easier to work with.
Specifically, the data preparation stage of the methodology answers the question: What
are the ways in which data is prepared?
To work effectively with the data, it must be prepared in a way that addresses missing
or invalid values and removes duplicates, toward ensuring that everything is properly
formatted.
Feature engineering is also part of data preparation.
It is the process of using domain knowledge of the data to create features that make the
machine learning algorithms work.
A feature is a characteristic that might help when solving a problem.
Features within the data are important to predictive models and will influence the results
you want to achieve.
Feature engineering is critical when machine learning tools are being applied to analyze
the data.
When working with text, text analysis steps for coding the data are required to be able
to manipulate the data.
The data scientist needs to know what they're looking for within their dataset to address
the question.
The text analysis is critical to ensure that the proper groupings are set, and that the
programming is not overlooking what is hidden within.
The data preparation phase sets the stage for the next steps in addressing the question.
While this phase may take a while to do, if done right the results will support the project.
If this is skipped over, then the outcome will not be up to par and may have you back
at the drawing board.
It is vital to take your time in this area, and use the tools available to automate common
steps to accelerate data preparation.
Make sure to pay attention to the detail in this area.
After all, it takes just one bad ingredient to ruin a fine meal.
This ends the Data Preparation section of this course, in which we've reviewed key concepts.
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
