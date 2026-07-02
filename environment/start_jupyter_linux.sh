#!/usr/bin/env bash
set -euo pipefail

# AI4NTH Summer School - Conda Jupyter launcher for Linux / macOS
# Run this from the environment/ folder after creating the ai4nth Conda environment.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUNDLE_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
CHECK_NOTEBOOK="${SCRIPT_DIR}/00_environment_check.ipynb"
COURSE_MATERIALS_DIR="${BUNDLE_DIR}/course_materials"

if ! command -v conda >/dev/null 2>&1; then
  echo "ERROR: conda was not found. Install Miniforge, Miniconda, or Anaconda first."
  exit 1
fi

# Make conda activation available in non-interactive shells.
CONDA_BASE="$(conda info --base)"
# shellcheck disable=SC1091
source "${CONDA_BASE}/etc/profile.d/conda.sh"

conda activate ai4nth
cd "${BUNDLE_DIR}"

echo "Starting JupyterLab with the ai4nth Conda environment..."

if [[ -f "${CHECK_NOTEBOOK}" ]]; then
  exec jupyter lab --ServerApp.root_dir="${BUNDLE_DIR}" "${CHECK_NOTEBOOK}"
else
  exec jupyter lab --ServerApp.root_dir="${BUNDLE_DIR}" "${COURSE_MATERIALS_DIR}"
fi
