@echo off
setlocal EnableExtensions

REM AI4NTH Summer School - Conda Jupyter launcher for Windows
REM Run this from the environment folder after creating the ai4nth Conda environment.

set "SCRIPT_DIR=%~dp0"
for %%I in ("%SCRIPT_DIR%..") do set "REPO_ROOT=%%~fI"
set "CHECK_NOTEBOOK=%SCRIPT_DIR%00_environment_check.ipynb"
set "COURSE_MATERIALS_DIR=%REPO_ROOT%\course_materials"

where conda >nul 2>&1
if errorlevel 1 (
    echo ERROR: conda was not found. Install Miniforge, Miniconda, or Anaconda first.
    pause
    exit /b 1
)

call conda activate ai4nth
if errorlevel 1 (
    echo ERROR: Could not activate the ai4nth Conda environment.
    echo Create it first with: conda env create -f environment.yml
    pause
    exit /b 1
)

cd /d "%REPO_ROOT%"

echo Starting JupyterLab with the ai4nth Conda environment...
echo.

if exist "%CHECK_NOTEBOOK%" (
    call jupyter lab --ServerApp.root_dir="%REPO_ROOT%" "%CHECK_NOTEBOOK%"
) else (
    call jupyter lab --ServerApp.root_dir="%REPO_ROOT%" "%COURSE_MATERIALS_DIR%"
)

if errorlevel 1 (
    echo.
    echo ERROR: JupyterLab failed to start.
    echo Please contact the organisers / TAs for support.
    pause
    exit /b 1
)

endlocal
exit /b 0
