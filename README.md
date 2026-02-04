# devcontainer-python-template
A GitHub template for Python development with Dev Containers: pre-configured for VS Code Remote Development with Python support, dependencies, and streamlined workflows.

## How to customize this template

1. Create your repo from this template on GitHub.
2. Replace every occurrence of `project_name` with your real project/package name:
	- Rename the package folder: `mv src/project_name src/<your_package>`.
	- Update the project name in [pyproject.toml](pyproject.toml) (`[project].name`).
	- Search/replace `project_name` across the repo (including tests and scripts).
3. Keep the layout: [src/<your_package>](src/project_name) for code, [tests/](tests) for pytest, [scripts/](scripts) for helpers, [Dockerfile](Dockerfile) and [.dockerignore](.dockerignore) at the root.
4. Run `uv sync --group dev` (postCreate already does this in the devcontainer) and start coding.
