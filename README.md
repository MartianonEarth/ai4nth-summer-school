# AI for Nuclear Thermal Hydraulics Summer School

This repository supports the **AI for Nuclear Thermal Hydraulics Summer School**. It contains the public event website, lecturer guidance, teaching materials, environment setup files and dataset documentation.

## Open the Website

- [Summer school homepage](https://ccp-nth.github.io/ai4nth-summer-school/)
- [Programme](https://ccp-nth.github.io/ai4nth-summer-school/programme.html)
- [Registration](https://ccp-nth.github.io/ai4nth-summer-school/registration.html)
- [Contact](https://ccp-nth.github.io/ai4nth-summer-school/contact.html)
- [Lecturer Guidance](https://ccp-nth.github.io/ai4nth-summer-school/lecturer_guidance.html)
- [Teaching Materials](https://ccp-nth.github.io/ai4nth-summer-school/materials.html)

## Repository Map

- `website/` — public website pages: home, programme, registration, contact, lecturer guidance and materials overview.
- `_layouts/` — Jekyll layout used by the website.
- `assets/` — website images and CSS.
- `environment/` — Python/Jupyter setup files for course notebooks.
- `datasets/` — dataset documentation, metadata and planned split locations.
- `course_materials/` — slides, notebooks, exercises and solutions organised by day.
- `instructors/` — templates and checklists for lecturer contributions.

## Guidance for Lecturers

Lecturers should use the templates in `instructors/` when preparing materials:

- `instructors/lecturer_materials_checklist.md`
- `instructors/session_brief_template.md`
- `instructors/software_requirements_template.md`
- `instructors/practical_outputs_template.md`

Please add teaching materials to the relevant day folder under `course_materials/`:

- `slides/` for presentation files
- `notebooks/` for runnable Jupyter notebooks
- `exercises/` for student-facing practical tasks
- `solutions/` for reference solutions or expected outputs

Before submitting materials:

- Keep notebooks runnable on standard laptops.
- Avoid unnecessary package dependencies.
- Document extra software requirements in the session README or instructor template.
- Include expected practical outputs such as plots, metrics tables or saved artefacts.
- Flag likely student difficulties.
- State whether materials can be made public after the school.

Dataset contributions should go under `datasets/`. Do not add large datasets or files with unclear licensing. Add metadata, source, licence, target variable, feature descriptions and split information before release.

### How to Contribute or Upload Materials

Only repository maintainers with write access should push directly to this repository. Other contributors should use a fork and pull request workflow.

Recommended contribution workflow:

1. Fork the repository on GitHub.
2. Clone your fork locally.
3. Create a new branch, for example `materials/day2-tree-models` or `lecturer/your-name-session`.
4. Add or update materials in the appropriate folders.
5. Commit your changes with a clear commit message.
6. Push the branch to your fork.
7. Open a pull request back to `CCP-NTH/ai4nth-summer-school`.
8. In the pull request description, summarise what was added, any software requirements, dataset/licence notes, and whether the material can be public after the school.

Use this repository structure when adding new teaching content:

1. Choose the correct day folder in `course_materials/`.
2. Add lecture slides to `slides/`.
3. Add practical notebooks to `notebooks/`.
4. Add student exercises to `exercises/`.
5. Add worked solutions or expected outputs to `solutions/`.
6. Update that day's `README.md` with any special software, data, timing or practical-output notes.
7. Add dataset files or metadata under `datasets/` only when release permissions and licences are clear.
8. Use the templates in `instructors/` to describe the session, software requirements and expected lab outputs.

If material is not ready for public release, record that clearly in the lecturer checklist and keep private files out of the public repository until release is approved.

## Guidance for Students

Students should start with the public website:

1. Read the [programme](https://ccp-nth.github.io/ai4nth-summer-school/programme.html).
2. Complete any onboarding or pre-work material when it becomes available.
3. Follow the setup instructions in `environment/installation.md`.
4. Use `course_materials/` for day-by-day notebooks, exercises and slides.
5. Use `datasets/` only as documented by the notebooks and instructors.

The course is designed for standard laptops. If a notebook needs extra packages or non-standard software, that requirement should be documented in the relevant day folder.

## Website Updates

Website source pages live in `website/`. The public URLs are controlled by each page's Jekyll `permalink` field, so source files can remain grouped while the website still publishes clean root-level links.

When updating the website:

- Edit the relevant Markdown file in `website/`.
- Keep navigation changes in `_layouts/default.html`.
- Keep images and CSS in `assets/`.
- Avoid moving existing public URLs unless redirects or permalink updates are also handled.
