---
layout: default
title: Lecturer Guidance
---

<main class="page" markdown="1">

# Lecturer Guidance

This page is intended to help invited lecturers prepare materials at a consistent level and in a consistent style across the week.

The audience is technically strong, numerate, and able to code, but new to modern machine learning. It may therefore be most helpful if lectures are intuitive first, practically grounded, explicit about limitations, and closely linked to engineering use in nuclear thermal hydraulics.

*The programme page includes time slots so the week has a clear shared structure. These are intended as planning guidance rather than rigid constraints. Lecturers are welcome to adjust the pacing within their session if that helps the explanation, provided the overall flow of the day is preserved and the practical session can still start smoothly.*

---

## General Guidance

| Item | Guidance |
|---|---|
| **Audience** | Researchers and engineers in nuclear thermal hydraulics with strong technical backgrounds but limited prior ML experience. |
| **Teaching level** | Conceptual and formula-aware, but not proof-heavy. Assume participants can run and edit Jupyter notebooks, but do not assume ML jargon, advanced statistics, or prior experience with ML tooling. |
| **Morning structure** | Usually two lecture blocks plus a short synthesis or bridge into the afternoon practical. From Day 2 onward, the morning starts with a brief wrap-up and refresh from the previous day. |
| **Afternoon structure** | Guided practical session with orientation, a core task that most participants can complete, a supported extension activity, and a closing wrap-up. |
| **One lecture session** | A lecture session will often work well if it offers participants a strong conceptual picture, one or two worked engineering examples, and clear guidance on limitations, validation, and safe use. |
| **One lab session** | A lab session is likely to work best when it is scaffolded, stable, and runnable on standard laptops, with a clear minimum-success outcome, checkpoints for participants, and optional extension tasks for faster progress. |
| **Common expectations** | Help participants understand why the method matters, how it fits an engineering workflow, what outputs to inspect, and what failure modes or misuse risks to watch for. |
| **What to avoid** | Overly theoretical derivations, excessive scope drift, unstable code, heavy compute requirements, too many new frameworks, and examples that are disconnected from the school case study. |

## Preparing Materials

When preparing slides, notebooks, or examples, it may help to aim for materials that are easy to follow in real time and easy for participants to revisit afterward.

### For Lecture Slides

- start from the engineering problem, not from abstract ML terminology
- define unfamiliar terms clearly and introduce them gradually
- use one running example rather than many unrelated mini-examples
- include plots, workflow diagrams, or model-behaviour illustrations where possible
- make limitations visible: where the method helps, where it struggles, and what checks are needed
- finish with a short summary slide covering key messages and cautions

### For Practical Materials

- provide a notebook that runs end-to-end in the prepared environment
- keep the default path simple and robust, with optional extensions clearly marked
- include short text cells explaining what participants are doing and why
- make expected outputs obvious: a table, plot, metric, or comparison to inspect
- avoid long waits, fragile dependencies, or open-ended tasks that are hard to complete in the available time

### Minimum Preparation Checklist

- slides or notes aligned to the agreed topic and level
- examples tied to the CHF case study or closely related engineering context
- a small number of essential learning points
- practical materials tested from a clean start
- a short list of likely participant questions or confusion points
- clear handover to the next session or lab

---

## Programme Context

The summer school focuses on:

- supervised ML for structured engineering data
- surrogate modelling for expensive simulations
- uncertainty-aware decision support

The main running example is:

> **Critical Heat Flux (CHF) prediction / structured thermal-hydraulics data**

The school is **not** intended to be a broad AI survey. The emphasis is on a small number of methods taught carefully, with good engineering judgement and realistic expectations.

---

# Session Briefs

## Pre-Work — Self-learning Technical Onboarding

**Format:** Self-learning preparation pack before Day 1, with virtual organiser support.  
**Expected time:** 60–90 minutes.

### Purpose

Ensure every participant can run the computing environment, open the notebooks, load the dataset, and understand terminology used throughout the week.

### In Scope

- Environment setup and package checks
- Notebook structure and file organisation
- Dataset access and split files
- Training domain, prediction domain, unsafe / out-of-domain region

### Outputs

- Starter notebook runs successfully
- One simple data plot
- Confirmation that tools, packages, and data are working

---

## Day 1 AM — Framing Engineering ML Problems

### Purpose

Establish what kind of ML the school covers, where it fits in NTH, and what correct workflow discipline looks like.

### In Scope

- Where supervised ML fits in NTH
- Mapping engineering tasks to supervised learning
- Target and feature definition
- Train / validation / test logic
- Leakage, preprocessing, scaling, and metric choice
- Domain-aware validation and common workflow failures

### Learning Outcomes

By the end of this session, participants will ideally be more confident framing an engineering prediction problem as supervised learning, explaining leakage, choosing suitable regression metrics, and distinguishing in-domain from out-of-domain use.

### Helpful Material Choices

- workflow diagrams showing the full ML pipeline
- one good example of leakage or a bad validation split
- simple comparisons of better vs worse engineering framing
- visuals that connect domain validity to later lab work

---

## Day 1 PM — Lab 1: Baseline CHF Regression Model

### Purpose

Build the first correct end-to-end workflow before introducing more complex models.

### Outputs

- One working baseline pipeline
- At least one metric table
- Parity and residual plots
- Short note on strengths and limitations

### Guidance for Materials

- keep the first successful run very achievable
- provide the preprocessing and evaluation scaffold in advance
- make the focus workflow discipline, not model sophistication
- include a checkpoint where participants compare outputs with neighbours or TAs

---

## Day 2 — Tree Ensembles

### In Scope

- Decision-tree intuition
- Random Forest
- Gradient Boosting
- Practical hyperparameters and limited-budget tuning
- Regime-wise diagnostics and cautious interpretation tools

### Outputs

- RF and GB comparison
- Regime-wise error table or plot
- One interpretability plot
- Short engineering recommendation

### Guidance for Materials

- keep hyperparameter exploration modest and focused
- avoid turning the session into a tuning competition
- show how tree models improve on the baseline, but also where they can still fail
- include one practical interpretability example without overpromising what it means

---

## Day 3 — Surrogate Modelling and Gaussian Processes

### In Scope

- Emulator versus reduced model
- Simple regression surfaces, tree-based surrogates, GP surrogates, POD-style approaches
- Inputs / outputs, scaling, coverage, validation in parameter space
- GP intuition, kernels, mean prediction, and uncertainty
- Interpolation versus extrapolation

### Outputs

- Trained GP surrogate
- Interpolation / extrapolation comparison
- Uncertainty visualisation
- Short comparison against a tree-based method

### Guidance for Materials

- use a controlled subset or simplified setup so the session is runnable and interpretable
- explain clearly why the dataset or dimensionality is restricted
- keep the uncertainty discussion concrete and visual
- distinguish carefully between interpolation confidence and extrapolation risk

---

## Day 4 — Neural Networks and Physics-based Guardrails

### In Scope

- Small feed-forward neural networks for tabular data
- Architecture, activations, loss, optimisation, and normalisation
- Overfitting and regularisation
- Learning curves
- Simple physics-based guardrails:
  - output bounds
  - plausibility checks
  - monotonicity or sensitivity checks
  - inference-time rules

### Outputs

- Trained small MLP
- Training / validation curves
- Comparison against previous models
- Brief note on where the model is likely to be more or less trustworthy

### Guidance for Materials

- use a small stable architecture with prepared defaults
- avoid spending too much time on implementation detail
- help participants read the training behaviour rather than just run the code
- treat guardrails as practical engineering checks, not a fully general physics-ML framework

---

## Day 5 — VVUQ, Decision Support, and Optimisation

### In Scope

- Why uncertainty matters in NTH decisions
- Aleatoric and epistemic uncertainty
- Calibration and coverage
- Safe-use, caution, and do-not-use logic
- Simple constrained optimisation using a surrogate or ML model
- Uncertainty-aware objective or filtering
- Feasibility and validity checks

### Learning Outcomes

By the end of this session, participants will ideally have a clearer sense of how uncertainty can inform decisions, where optimisation without validity checks becomes risky, and how model limitations can be communicated responsibly.

### Guidance for Materials

- keep the decision-support framing practical and concrete
- show how uncertainty changes a decision, not just how it is computed
- make safe-domain and do-not-use checks explicit
- avoid presenting optimisation as trustworthy unless validity constraints are checked carefully

---

## Easy-to-Follow Delivery Pattern

If helpful, a simple pattern for most lecture sessions is:

1. Start with the engineering problem.
2. Introduce the method in intuitive terms.
3. Show what it looks like in practice on the case study.
4. Explain limitations, failure modes, and validation checks.
5. End with two or three take-home points that can prepare participants for the lab.

## Common Guidance for All Lecturers

### Every Lecture Should Explain

- why the method matters in engineering / NTH
- how it works conceptually
- what it looks like in practice
- what can go wrong
- how it can be used responsibly

### Every Lab Should Include

- starter notebook
- clear checkpoints
- expected outputs
- at least one diagnostic or failure-mode discussion
- short end-of-lab summary prompt

### Preferred Technical Style

- Lightweight Python stack
- Stable notebooks
- No heavy compute or GPU dependence unless necessary
- Practical workflows that run on standard laptops

### Pacing Flexibility

The published timetable is intended as a shared guide for planning, sequencing, and coordination across the week. There is no need to follow every slot rigidly minute by minute. Small adjustments within a session are completely acceptable if they improve clarity, allow useful discussion, or help participants keep up, as long as the overall day remains coherent and the next session can begin smoothly.

</main>
