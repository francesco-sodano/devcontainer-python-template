# Copilot Custom Instructions

Authoritative guidance for Copilot responses in this repository.

## Project context
- Language: Python 3.12.
- Package manager: uv; pyproject.toml is the single source of truth.
- Dependencies: runtime in [project.dependencies]; dev-only tools (black 26.1.0, mypy 1.19.1, pytest 9.0.2) in [dependency-groups.dev]; no requirements.txt files.
- Post-create: postCreate.sh creates .venv, runs `uv sync --group dev`, and scaffolds src/project_name/__init__.py, tests/, and scripts/.
- Layout: src/project_name/ for package code, tests/ for pytest, scripts/ for helpers, Dockerfile and .dockerignore at repo root.
- Builds: hatchling backend.
- Docker: respect .dockerignore; keep image builds using uv for installs.

## Code style
- Format with black; explicit imports and type hints preferred.
- Keep functions small and pure when practical; avoid hidden globals.
- Default to src/ layout imports (package is project_name).
- Use snake_case for variables/functions per Python conventions; follow standard Python best practices (PEP 8) unless noted otherwise.

## Testing
- Runner: pytest.
- Add/adjust tests with behavior changes.
- Place tests under tests/ mirroring src/ structure.

## Documentation
- Update README and docstrings when behavior changes.
- When using APIs or packages, fetch current official docs and cite them; do not rely on memory alone.

## Communication
- Be concise; include file paths and line ranges when referencing edits.
- If requirements are ambiguous, ask for clarification before coding.
