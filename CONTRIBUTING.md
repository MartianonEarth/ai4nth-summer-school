# Contributing to the AI4NTH Summer School Repository

Thank you for contributing to the **AI for Nuclear Thermal Hydraulics (AI4NTH) Summer School**.

This repository hosts the public website, lecture materials, practical exercises, datasets, and supporting resources used throughout the summer school.

---

# Who Is This Guide For?

This guide is intended for:

- lecturers;
- teaching assistants;
- organisers;
- external contributors.

Participants attending the summer school normally do **not** need this document. Participants should start with the public website and the root `README.md`.

---

# Repository Structure

```text
.
├── README.md
├── CONTRIBUTING.md
├── _config.yml
├── _layouts/
│   └── default.html
├── assets/
├── website/
│   ├── index.md
│   ├── programme.md
│   ├── registration.md
│   ├── practical_information.md
│   ├── lecturer_guidance.md
│   ├── contact.md
│   └── materials.md
├── environment/
│   ├── README.md
│   ├── installation.md
│   ├── environment.yml
│   ├── requirements.txt
│   ├── 00_environment_check.ipynb
│   ├── start_jupyter_linux.sh
│   ├── start_jupyter_win.bat
│   └── Dockerfile
├── datasets/
│   └── chf_case_study/
├── course_materials/
│   ├── README.md
│   ├── day0_onboarding/
│   ├── day1_foundations/
│   ├── day2_tree_models/
│   ├── day3_surrogates_gp/
│   ├── day4_neural_networks/
│   └── day5_vvuq_optimisation/
└── instructors/
```

Each day folder may include placeholder subfolders such as `exercises/`, `solutions/`, `slides/`, or `notebooks/`. These folders are retained for compatibility with contributors' forks and for sessions that need separated material.

---

# Preparing Teaching Materials

The preferred layout is simple for students:

- keep released notebooks, slides, PDFs, and HTML tools directly in the relevant day folder;
- use that day's `README.md` to explain what students should open first;
- use `exercises/` only when separate exercise files are needed;
- use `solutions/` only for approved reference solutions or outputs;
- keep empty placeholder folders with `.gitkeep` if they are needed for compatibility.

Teaching materials should:

- run on a standard laptop;
- use the official Conda environment where possible;
- avoid unnecessary package dependencies;
- clearly document additional software requirements;
- describe the expected outputs from practical sessions;
- identify likely student difficulties.

---

# How to Contribute or Upload Materials

There are two normal ways to contribute. Use the maintainer route only if you have write access to the repository.

---

## Repository Maintainers

1. Update your local copy of `main`.
2. Create a new branch from `main`, for example:

```text
materials/day2-tree-models
lecturer/your-name-session
website/practical-information-update
```

3. Add or update files in the correct folder.
4. Run the relevant notebooks or checks locally.
5. Commit your changes with a clear commit message.
6. Push the branch.
7. Open a Pull Request.
8. Merge after review.

---

## External Contributors

1. Fork the repository at:

```text
https://github.com/CCP-NTH/ai4nth-summer-school
```

2. Create a branch in your fork.
3. Add or edit your files in the correct folder.
4. Run the relevant notebooks or checks locally.
5. Commit your changes.
6. Push the branch to your fork.
7. Open a Pull Request to:

```text
CCP-NTH/ai4nth-summer-school:main
```

In the Pull Request description, please include:

- what you added or changed;
- which day/session it belongs to;
- whether it is ready for public release;
- any additional software or dataset requirements;
- any known limitations or files that still need review.

---

# Where Should Files Go?

## Day-by-day teaching materials

Use the existing day folder that matches the session:

| Day | Folder |
|-----|--------|
| Day 0 | `course_materials/day0_onboarding/` |
| Day 1 | `course_materials/day1_foundations/` |
| Day 2 | `course_materials/day2_tree_models/` |
| Day 3 | `course_materials/day3_surrogates_gp/` |
| Day 4 | `course_materials/day4_neural_networks/` |
| Day 5 | `course_materials/day5_vvuq_optimisation/` |

Put released student-facing notebooks, slides, PDFs, and HTML tools directly in the relevant day folder unless the organiser asks for a separate subfolder.

---

## Exercises

If a session needs separate exercise files, place them in the relevant day folder or in that day's `exercises/` folder, depending on how the session README directs students.

Example:

```text
course_materials/day2_tree_models/exercises/
```

---

## Solutions

Worked solutions belong in the relevant day folder's `solutions/` folder.

Example:

```text
course_materials/day2_tree_models/solutions/
```

Only publish solutions once they have been approved for release. If a `solutions/` folder is empty, keep its `.gitkeep` file so the folder remains available for contributors and forks.

---

## Session README files

Each teaching day should include a `README.md` describing:

- what students should do first;
- learning objectives;
- software requirements;
- datasets used;
- expected outputs;
- timing;
- additional notes.

Keep lecturer-only notes in a clearly labelled final section, for example `For Lecturers`.

---

## Datasets

Datasets belong under:

```text
datasets/
```

The CHF case-study metadata lives under:

```text
datasets/chf_case_study/
```

Each released dataset should include, where possible:

- metadata;
- source;
- licence or release permission;
- feature descriptions;
- target variable;
- train/test split information.

Please do not upload large datasets or files whose release permissions are unclear.

---

## Software environment

The supported Conda environment is:

```text
environment/environment.yml
```

The environment verification notebook is:

```text
environment/00_environment_check.ipynb
```

Please avoid introducing unnecessary package dependencies. If additional packages are required, document them clearly in the relevant day README and notify the organisers.

---

## Instructor templates

Templates are available under:

```text
instructors/
```

These include:

- session briefs;
- software requirements;
- practical outputs;
- lecturer material checklists.

---

# Website Updates

The GitHub Pages website source Markdown files are stored in:

```text
website/
```

Current website pages include:

- `website/index.md`
- `website/programme.md`
- `website/registration.md`
- `website/practical_information.md`
- `website/lecturer_guidance.md`
- `website/contact.md`
- `website/materials.md`

Navigation is controlled by:

```text
_layouts/default.html
```

Images and styling are stored in:

```text
assets/
```

When updating the website:

- edit the appropriate Markdown page under `website/`;
- keep each page's `permalink` stable unless a URL change is intentional;
- keep navigation links consistent with `_layouts/default.html`;
- preserve existing public URLs whenever possible;
- do not add a new CSS framework.

---

# Before Opening a Pull Request

Please check that:

- [ ] files are in the correct folders;
- [ ] notebooks run successfully from a clean start;
- [ ] notebook outputs do not contain unnecessary large outputs or private paths;
- [ ] additional software requirements are documented;
- [ ] dataset source, licence, and release status are documented;
- [ ] website links have been tested if website files changed;
- [ ] private or unpublished material has not been added to public folders;
- [ ] lecturer-only notes are clearly labelled and kept out of student instructions where possible.

---

# Questions?

For repository or teaching-material questions, please contact:

**Dr Wei Wang**

wei.wang@stfc.ac.uk

**Dr Yu Duan**

yu.duan@sheffield.ac.uk
