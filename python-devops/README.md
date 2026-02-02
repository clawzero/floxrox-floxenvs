# Python DevOps Flox Environment

Python development and DevOps automation tools.

## Features

- **Python 3.12** - Latest stable Python
- **Poetry** - Dependency management
- **UV** - Fast Python package manager
- **Pyenv** - Python version management
- **Ansible** - Automation framework
- **Docker client** - Container management

## Usage

```bash
flox activate

# Python project detection (auto-activates venv)
cd /path/to/project

# Poetry projects
poetry install
poetry run pytest

# UV projects
uv sync
uv run pytest

# pip projects
pip install -r requirements.txt
```

## Features

- Auto-detects project type (Poetry/UV/pip)
- Creates isolated virtual environments
- Installs dependencies automatically
- Supports multiple Python versions

## Variables

| Variable | Description |
|----------|-------------|
| `PYTHONUTF8` | Enable UTF-8 mode |
| `POETRY_VIRTUALENVS_IN_PROJECT` | Poetry venv in project |
| `UV_CACHE_DIR` | UV cache location |
| `PIP_CACHE_DIR` | pip cache location |
