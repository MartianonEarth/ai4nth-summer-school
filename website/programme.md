---
layout: default
title: Programme
permalink: /programme.html
---

<main class="page" markdown="1">

# Programme

## AI for Nuclear Thermal Hydraulics Summer School  
**13–17 July 2026 | STFC Daresbury Laboratory**

---

## Day 0 / Pre-Work

Participants should complete the environment setup and Day 0 self-learning material before Day 1.

**Supporters:** Dr Wei Wang, Dr Yu Duan

Purpose: remove setup friction, support dataset orientation, align terminology and data structure, confirm the CHF case-study files and notebook structure, verify package imports and data access, and introduce the train domain / prediction domain / unsafe domain framing.

Complete the environment check notebook first, then run the Day 0 onboarding notebook.

Outputs: confirm the software environment works, load the CHF case-study files, run the starter notebook and sanity-check cells, and produce one simple data plot.

## Common Guidance

All lab sessions are designed to run on standard laptops, using prepared notebooks and a shared CHF case study. Each afternoon starts with a short guided orientation, then moves into a core hands-on task that all participants should be able to complete, followed by a supported extension activity for those ready to go further.

Across the week, participants will be encouraged to work in a steady engineering workflow: inspect the data first, check whether the prediction task is in-domain, build a simple model before a more complex one, and discuss limitations before interpreting results. TAs will support setup, troubleshooting, and pacing during all hands-on blocks.

---

## Weekly Timetable

| Day | Time | Session |
|---|---|---|
| **Day 1** | 09:30-10:00 | **Lecture 1.1:** Programme overview and thermal hydraulics problem framing<br>*Lecturer: Prof. Michael Bluck (Imperial College London)* |
|  | 10:00-11:00 | **Lecture 1.2:** Overview of Machine Learning methods in thermal hydraulics<br>*Lecturer: Prof. Michael Bluck (Imperial College London) / Dr Yu Duan (The University of Sheffield)* |
|  | 11:00-11:15 | Break |
|  | 11:15-12:30 | **Lecture 1.3:** Machine Learning workflow for thermal hydraulics and failure gallery<br>*Lecturer: Dr Yu Duan (The University of Sheffield)* |
|  | 12:30-13:30 | Lunch |
|  | 13:30-14:00 | **Lab 1 orientation:** notebook walkthrough, CHF dataset recap, target variable, and in-domain vs unsafe-domain reminders |
|  | 14:00-15:00 | **Hands-on session:** load the data, inspect features, run the preprocessing pipeline, and train a first Linear / Ridge regression baseline |
|  | 15:00-15:15 | Break |
|  | 15:15-16:30 | **Hands-on session:** interpret errors, compare a small number of baseline choices, and produce one simple engineering takeaway with TA support |
|  | 16:30-17:00 | **Wrap-up:** what worked, common issues, and a minimum-success checklist for everyone |
| **Day 2** | 09:30-09:40 | Wrap-up and refresh |
|  | 09:40-10:30 | **Lecture 2.1:** Random Forest — decision trees, RF intuition, engineering tabular data, key hyperparameters<br>*Lecturer: Dr Junwen Yin (STFC)* |
|  | 10:30-11:20 | **Lecture 2.2:** Gradient Boosting — relationship to RF, progressive boosting logic, key tuning parameters<br>*Lecturer: Dr Junwen Yin (STFC)* |
|  | 11:20-11:30 | Break |
|  | 11:30-12:30 | **Morning synthesis:** cross-validation, regime-wise diagnostics, and cautious interpretability |
|  | 12:30-13:30 | Lunch |
|  | 13:30-14:00 | **Lab 2 orientation:** revisit yesterday's baseline, explain today's notebook structure, and identify the core comparison task |
|  | 14:00-15:00 | **Hands-on session:** train a Random Forest on the CHF case study and compare it against the Day 1 baseline |
|  | 15:00-15:15 | Break |
|  | 15:15-16:30 | **Hands-on session:** run Gradient Boosting, inspect a few regime-wise errors, and decide when the extra complexity is worthwhile |
|  | 16:30-17:00 | **Wrap-up:** compare models, share practical lessons, and note one caution for deployment |
| **Day 3** | 09:30-09:40 | Wrap-up and refresh |
|  | 09:40-10:30 | **Lecture 3.1:** Surrogate modelling — what is a surrogate, major surrogate families, how to build one properly, and what can go wrong<br>*Lecturer: Prof. Michael Bluck (Imperial College London)* |
|  | 10:30-11:20 | **Lecture 3.2:** Gaussian Process regression — GP concept, kernel functions, and sources of GP uncertainty<br>*Lecturer: Dr Tim Rogers (The University of Sheffield)* |
|  | 11:20-11:30 | Break |
|  | 11:30-12:30 | **Morning synthesis:** surrogate strategy, interpolation vs extrapolation, and uncertainty discussion |
|  | 12:30-13:30 | Lunch |
|  | 13:30-14:00 | **Lab 3 orientation:** explain why the dataset is narrowed for today, clarify the core GP task, and flag the limits of what can be run comfortably on laptops |
|  | 14:00-15:00 | **Hands-on session:** train and visualise a Gaussian Process on a controlled CHF subset with a prepared notebook scaffold |
|  | 15:00-15:15 | Break |
|  | 15:15-16:30 | **Hands-on session:** test interpolation vs extrapolation behaviour, compare with earlier models, and discuss when a surrogate is useful |
|  | 16:30-17:00 | **Wrap-up:** uncertainty observations, model limitations, and realistic use cases |
| **Day 4** | 09:30-09:40 | Wrap-up and refresh |
|  | 09:40-10:30 | **Lecture 4.1:** Neural networks — what an NN is, relation to other ML methods, basic training loop, and overfitting<br>*Lecturer: Dr Alex Skillen (University of Manchester)* |
|  | 10:30-11:20 | **Lecture 4.2:** Physics-guided ML in practical terms — what it is and why physics guidance matters in NTH ML<br>*Lecturer: Dr Alex Skillen (University of Manchester)* |
|  | 11:20-11:30 | Break |
|  | 11:30-12:30 | **Morning synthesis:** neural-network limits and lightweight physics-guided guardrails |
|  | 12:30-13:30 | Lunch |
|  | 13:30-14:00 | **Lab 4 orientation:** recap the simplest viable NN setup, notebook checkpoints, and what counts as a successful run for today |
|  | 14:00-15:00 | **Hands-on session:** train a small feed-forward neural network with provided settings on a controlled CHF dataset |
|  | 15:00-15:15 | Break |
|  | 15:15-16:30 | **Hands-on session:** inspect training behaviour, test a few edge cases, and apply simple guardrails or constraints to keep predictions sensible |
|  | 16:30-17:00 | **Wrap-up:** what the NN improved, where it remained fragile, and how to explain that clearly |
| **Day 5** | 09:30-09:40 | Wrap-up and refresh |
|  | 09:40-10:30 | **Lecture 5.1:** An introduction to VVUQ — why UQ matters in NTH decisions; aleatoric vs epistemic uncertainty<br>*Lecturer: Dr Saleh Rezaeiravesh (University of Manchester)* |
|  | 10:30-11:20 | **Lecture 5.2:** UQ for decisions and safety-critical ML practices — quantifying uncertainty in ML predictions, calibration / reliability, and validation for safety-conscious use<br>*Lecturer: Dr Saleh Rezaeiravesh (University of Manchester)* |
|  | 11:20-11:35 | Break |
|  | 11:35-12:30 | **Lecture 5.3:** Optimisation: turning ML models into decisions — optimisation vocabulary, constraints, safe domain checks, uncertainty-aware objectives, and validating the optimum<br>*Lecturer: Ubaid Ali Qadri (STFC)* |
|  | 12:30-13:30 | Lunch |
|  | 13:00-14:00 | **Closing discussion:** finalise practical outputs, summarise safe-use lessons from the week, and discuss how the methods can be used responsibly in practice. The day may finish earlier if the practical work and discussion are complete. |

---

## Programme Outcomes

By the end of the week, participants should be able to:

- frame an engineering ML problem appropriately
- build and evaluate baseline supervised-learning models
- compare tree-based models for structured engineering data
- explain surrogate modelling and Gaussian Process regression
- train a small neural network for tabular data
- assess uncertainty and domain validity
- communicate model limitations and safe-use conditions

## Teaching Team

Presenter and teaching-assistant profiles are listed on the [People page]({{ '/people.html' | relative_url }}).

**Contacts:** Prof. Michael Bluck (`m.bluck@imperial.ac.uk`), Dr Wei Wang (`wei.wang@stfc.ac.uk`), Dr Yu Duan (`yu.duan@sheffield.ac.uk`; `y.duan@imperial.ac.uk`)

**TAs:** Dr Wei Wang, Dr Yu Duan, Mr Sebastian Fernandez Ruiz de las Cuevas (`s.fernandez-ruiz-de-las-cuevas25@imperial.ac.uk`)

## Delivery Notes

Core delivery should run on standard laptops or PCs; no national HPC is required. Every notebook should be tested end-to-end in the chosen environment before the school.

</main>
