# Datasets

This folder contains the CSV files used by the AI4NTH Summer School notebooks.

## What Students Should Do

You normally do not need to open these files directly. The notebooks load the required files from this folder.

If a notebook asks you to choose or inspect a dataset, use the file names below.

| File | Purpose |
|---|---|
| `chf_train.csv` | Organiser-defined training split for the CHF case study |
| `chf_val.csv` | Organiser-defined validation split for the CHF case study |
| `chf_test.csv` | Organiser-defined test split for the CHF case study |
| `chf_GP.csv` | Gaussian-process subset used in surrogate-modelling sessions |
| `chf_ong.csv` | Original larger CHF dataset (**more than 24,000 data points**) with reference-source information. You do not need to use this file for the standard practical exercises unless instructed to do so. It is mainly included as a reference dataset. |
| `chf_OOD_Kim2000.csv` | Out-of-domain CHF data source |
| `chf_OOD_Lee1966.csv` | Out-of-domain CHF data source |
| `chf_OOD_Peterlongo1966.csv` | Out-of-domain CHF data source |

---

## How the datasets are used during the week

### Days 1, 2, and 4
Use:

- `chf_train.csv`
- `chf_val.csv`
- `chf_test.csv`

These files provide the common baseline workflow used for:
- Linear / Ridge regression,
- tree-based models,
- and neural-network exercises.

### Day 3
Use:

- `chf_GP.csv`

This is the main working dataset for the Gaussian Process exercise.

### OOD / extrapolation discussion
Use:

- `chf_OOD_Kim2000.csv`
- `chf_OOD_Lee1966.csv`
- `chf_OOD_Peterlongo1966.csv`

These files are intended for discussing:
- extrapolation,
- out-of-domain prediction,
- model trustworthiness,
- and safe / unsafe model use.

### Day 5
On Day 5, the datasets are mainly used for **illustration and discussion**, rather than for a full new modelling exercise.

---

## Target and input features

### Target variable
The output variable to predict is:

- **CHF**

### Suggested starting input features
For the first GP exercise, a sensible starting feature set is:

- **mass flux**
- **pressure**
- **outlet quality**

These provide a manageable and physically meaningful starting point.

Students may also explore alternative feature sets where appropriate.

---

## Important note on feature combinations

Please **do not** use **outlet quality** together with **inlet temperature** or **inlet subcooling** in the same feature set.

These variables are closely related thermodynamically, and using them together can make the exercise less clear and less meaningful.

A better approach is to choose **one** of the following:

- **mass flux + pressure + outlet quality**
- **mass flux + pressure + inlet temperature**
- **mass flux + pressure + inlet subcooling**

If suitable for the exercise, you may also explore adding physically meaningful variables such as:

- **tube diameter**
- **heated length**

---

## Practical reminder

The aim of the practical sessions is **not** simply to use as many variables as possible. A more important learning goal is to understand:

- how to choose sensible features;
- how dataset splitting affects model evaluation;
- how interpolation differs from extrapolation;
- and how to think carefully about whether a model should be trusted.

In other words, the datasets are designed to help you learn **good engineering ML practice**, not just model fitting.

## For Lecturers And Dataset Maintainers

This section is for lecturers, organisers, and dataset maintainers.

Dataset provenance, licensing status, target variable, feature notes, and split definitions are documented in `chf_case_study/metadata.yaml`. Keep that metadata up to date before release.
