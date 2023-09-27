# Poetry Python 🐍 Project Template
This repository is a template for a python 🐍 project using the poetry container. The intent is to do all the basic lifting for a python project so that people can hit the ground running with their ideas.

### To make this project your own
1. Create a new repository, [using this one as a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).
2. Change the `project` folder name to the kebab-case name of your project.
3. Update the `BASE_DIR` variable value in the `Makefile` with the kebab-case name of your project.
4. Update the information in the `pyproject.toml` file with your project's and your personal information.
5. Update the information in the `CODEOWNERS` file so that it uses your GitHub ID and the kebab-case name of your project folder.

### 🐍 by Default (Feel free to delete this after creating your project)
- [pre-commit]([https://github.com/psf/black](https://pre-commit.com/)): This serves as the codebase formatter and linter.
- [Requests](https://requests.readthedocs.io/en/latest/): This is the project's means of communicating with external APIs.
- [Responses](https://github.com/getsentry/responses): This is used in conjunction with Pytest and Requests to mock API calls in the test module.

### Project Requirements
- Python version: `^3.11`
- [Poetry](https://python-poetry.org/)

### Instructions to Run the Project
1. Go into the base directory of the repository and type `poetry shell` into the terminal.
2. Use the `make run` command.

### Technical Notes
- Any modules should be added via the `poetry add [module]` command.
  - Example: `poetry add black`

## Standard Commands
- `make lint`: Runs `pre-commit`
- `make test`: Runs test cases in the `test` directory
- `make run`: Runs the `main` function in the `project` folder
