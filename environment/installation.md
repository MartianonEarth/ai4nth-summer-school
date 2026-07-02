# Detailed Installation Guide

Use this page if the quick-start instructions in `README.md` do not work.

The officially supported setup route for participants is Conda. The pip and Docker notes at the end are for advanced users or fallback use only.

## Recommended Route: Conda

Install one of Miniforge, Miniconda, or Anaconda. Miniforge is a good choice if you do not already have Conda installed.

After installing Conda, close and reopen your terminal. On Windows, use Anaconda Prompt, Miniforge Prompt, or a terminal where `conda` is available.

From the `environment/` folder, create the course environment:

```bash
conda env create -f environment.yml
```

Activate it:

```bash
conda activate ai4nth
```

Start JupyterLab:

```bash
jupyter lab
```

Open `00_environment_check.ipynb` and run all cells.

## If You Already Have An Old ai4nth Environment

If you want a clean rebuild:

```bash
conda env remove -n ai4nth
conda env create -f environment.yml
```

If you want to update an existing environment:

```bash
conda env update -f environment.yml --prune
```

## Common Issues

### Conda Command Not Found

Conda may not be installed, or your terminal may not have picked it up yet. Close and reopen the terminal. If that does not help, install Miniforge, Miniconda, or Anaconda and try again.

### Environment Creation Is Slow

This is normal. Creating the environment can take several minutes, especially on slower networks.

### JupyterLab Does Not Start

Activate the environment again and then start JupyterLab:

```bash
conda activate ai4nth
jupyter lab
```

### A Package Import Fails

Recreate the environment from `environment.yml`:

```bash
conda env remove -n ai4nth
conda env create -f environment.yml
```

### Permission Denied On Linux / macOS Launcher

Make the launcher executable, then run it:

```bash
chmod +x start_jupyter_linux.sh
./start_jupyter_linux.sh
```

## Advanced / Fallback Options

### pip

`requirements.txt` is provided for advanced users or fallback use. It is not the supported route for the course.

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
jupyter lab
```

On Windows, activate the virtual environment with:

```bat
.venv\Scripts\activate
```

### Docker

Docker is for advanced users or fallback use only.

From this `environment/` folder:

```bash
docker build -t ai4nth-environment .
docker run --rm -p 8888:8888 -v "$PWD/..":/workspace ai4nth-environment
```

## Final Check

Run `00_environment_check.ipynb`.

If all cells pass, your environment is ready for the practical sessions.
