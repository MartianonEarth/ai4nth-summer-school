# AI4NTH Summer School Environment Setup

This folder contains the software environment needed for the hands-on notebooks.

For this summer school, the officially supported setup route is **Conda**. Please follow the Conda instructions below unless the organisers advise otherwise.

## What You Need To Do Before The Course

Please complete this at least one week before the summer school:

1. Install Miniforge, Miniconda, or Anaconda.
2. Download or clone this repository.
3. Create the course environment using `environment.yml`.
4. Start JupyterLab.
5. Open and run `00_environment_check.ipynb`.
6. If all checks pass, you are ready for the practical sessions.

If the check notebook does not run successfully, please contact the organisers before the course.

## Step 1: Install Conda

Use one of the following:

- Miniforge, recommended if you do not already have Conda
  - see here  : https://conda-forge.org/download/ for instruction
- Miniconda
- Anaconda

If you already have Conda installed, you can skip this step.

## Step 2: Create The Course Environment

From this `environment/` folder, run:

```bash
conda env create -f environment.yml
```

## Step 3: Activate The Environment

```bash
conda activate ai4nth
```

## Step 4: Start JupyterLab

```bash
jupyter lab
```

## Step 5: Check Your Setup

Open `00_environment_check.ipynb` and run all cells.

If all cells run successfully, your laptop is ready for the summer school.

## Starting Jupyter Later

Each time you want to use the notebooks, run:

```bash
conda activate ai4nth
jupyter lab
```
For participants who require the stand-alone `conda-pack` environment, please contact the Teaching Assistants (TAs) to request an external download link.
Windows users may also use:

```bat
start_jupyter_win.bat
```

Linux / macOS users may also use:

```bash
./start_jupyter_linux.sh
```

## Advanced Users

A `Dockerfile` and `requirements.txt` are provided for advanced users and fallback use. Most participants do not need these.

## Need Help?

Please do not spend too long debugging installation problems.

If the environment check fails, contact:

- Wei Wang: wei.wang@stfc.ac.uk
- Yu Duan: yu.duan@sheffield.ac.uk
