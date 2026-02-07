# project_name

##

A GitHub template for Python development with Dev Containers: pre-configured for VS Code Remote Development with Python support, dependencies, and streamlined workflows.




## How to customize this template (Delete these instructions after completed)

1. Create your repo from this template on GitHub.
2. Replace every occurrence of `project_name` with your real project/package name:
	- Rename the package folder: `mv src/project_name src/<your_package>`.
	- Update the project name in [pyproject.toml](pyproject.toml) (`[project].name`).
	- Search/replace `project_name` across the repo (including tests and scripts).
3. 
4. Keep the layout: [src/<your_package>](src/project_name) for code, [tests/](tests) for pytest, [scripts/](scripts) for helpers, [Dockerfile](Dockerfile) and [.dockerignore](.dockerignore) at the root.
5. Run `uv sync --group dev` (postCreate already does this in the devcontainer) and start coding.
6. Dependencies: runtime in [project.dependencies]; dev-only tools (like black 26.1.0, mypy 1.19.1, pytest 9.0.2) in [dependency-groups.dev]; no requirements.txt files.