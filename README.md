# AI for Nuclear Thermal Hydraulics (AI4NTH) Summer School

Welcome to the **AI for Nuclear Thermal Hydraulics (AI4NTH) Summer School** repository.

This repository contains the public website, software environment, datasets, lecture materials, Jupyter notebooks, and hands-on materials used throughout the summer school.

---

# Summer School Website

The latest participant information is available on the public website.

| Page | Link |
|------|------|
| Home | https://ccp-nth.github.io/ai4nth-summer-school/ |
| Programme | https://ccp-nth.github.io/ai4nth-summer-school/programme.html |
| Registration | https://ccp-nth.github.io/ai4nth-summer-school/registration.html |
| Practical Information | https://ccp-nth.github.io/ai4nth-summer-school/practical_information.html |
| Teaching Materials Overview | https://ccp-nth.github.io/ai4nth-summer-school/materials.html |
| Contact | https://ccp-nth.github.io/ai4nth-summer-school/contact.html |
| Lecturer Guidance | https://ccp-nth.github.io/ai4nth-summer-school/lecturer_guidance.html |

---

# Before the Summer School

Please complete the following steps before arriving.

## Step 1 - Read the Programme and Practical Information

First, read the programme so you understand the course structure and topics:

https://ccp-nth.github.io/ai4nth-summer-school/programme.html

Then read the practical information page for venue, accommodation, lunch, transport, and computing setup details:

https://ccp-nth.github.io/ai4nth-summer-school/practical_information.html

---

## Step 2 - Set Up Your Laptop

Go to:

```text
environment/
```

Then follow:

```text
environment/README.md
```

The setup guide will help you to:

- install the required software;
- create the course Conda environment;
- start JupyterLab;
- verify that everything is working correctly.

The official supported setup route is **Conda**.

---

## Step 3 - Verify Your Environment

Run:

```text
environment/00_environment_check.ipynb
```

before arriving.

If all checks pass successfully, your laptop is ready for the practical sessions.

If you experience any problems, please contact the organisers before the course rather than spending too long debugging on your own.

---

## Step 4 - Complete the Day 0 Self-learning

Once your software environment is working, complete the Day 0 onboarding materials.

Go to:

```text
course_materials/day0_onboarding/
```

Read:

```text
course_materials/day0_onboarding/README.md
```

Then complete:

```text
course_materials/day0_onboarding/Day0_self_learning_onboarding.ipynb
```

This introduces the case study, datasets, notebook structure, and workflow used throughout the week.

---

## Step 5 - During the Summer School

Teaching materials are organised by day under:

```text
course_materials/
```

The main student-facing files for each day are kept directly in that day's folder so they are easy to find. Some day folders also contain `exercises/`, `solutions/`, `slides/`, or `notebooks/` subfolders as placeholders or for material that needs to be separated.

Datasets used throughout the course are located under:

```text
datasets/
```

Please use the datasets only as instructed in the notebooks or by the teaching team.

---

# Repository Overview

| Path | Purpose |
|------|---------|
| `environment/` | Software setup, Conda environment, and environment verification notebook |
| `course_materials/` | Day-by-day student materials and practical resources |
| `course_materials/day0_onboarding/` | Day 0 setup, dataset orientation, and self-learning onboarding |
| `course_materials/day1_foundations/` | Day 1 baseline workflow and foundational modelling material |
| `course_materials/day2_tree_models/` | Day 2 tree-based models |
| `course_materials/day3_surrogates_gp/` | Day 3 surrogate modelling and Gaussian Processes |
| `course_materials/day4_neural_networks/` | Day 4 neural networks |
| `course_materials/day5_vvuq_optimisation/` | Day 5 VVUQ and optimisation |
| `datasets/` | Datasets used during the course |
| `datasets/chf_case_study/` | Metadata and documentation for the CHF case study |
| `instructors/` | Lecturer templates and organiser guidance |
| `website/` | Source Markdown files for the GitHub Pages website |
| `assets/` | Website images and CSS |
| `_layouts/` | GitHub Pages layout templates |

---

# For Lecturers and Contributors

If you are preparing teaching materials or contributing to this repository, please see:

**[CONTRIBUTING.md](CONTRIBUTING.md)**

The contributing guide explains:

- repository structure;
- where teaching materials should be uploaded;
- GitHub workflow;
- pull request process;
- datasets;
- website updates;
- software requirements.

---

# Contact

For questions about the summer school, please contact:

**Dr Wei Wang**

STFC Daresbury Laboratory

wei.wang@stfc.ac.uk

**Dr Yu Duan**

University of Sheffield / Imperial College London

yu.duan@sheffield.ac.uk
