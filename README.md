# Poetry Python 🐍 Project Template
This repository is a template for a python 🐍 project using the poetry container. The intent is to do all the basic lifting for a python project so that people can hit the ground running with their ideas.

### 🐍 by Default (Feel free to delete this after creating your project)
- [Black](https://github.com/psf/black): This serves as the codebase formatter.
- [Pylint](https://www.pylint.org/): This serves as the codebase linter.
- [Pytest](https://docs.pytest.org/en/7.2.x/): This serves as the codebase test runner.
- [Requests](https://requests.readthedocs.io/en/latest/): This is the project's means of communicating with external APIs.
- [Responses](https://github.com/getsentry/responses): This is used in conjunction with Pytest and Requests to mock API calls in the test module.

### Project Requirements
- Python version: `^3.11`
- [Poetry](https://python-poetry.org/)

### Technical Notes
- Any modules should be added via the `poetry add [module]` command.
  - Example: `poetry add pytest`

## Standard Commands
- `make format`: Formats the python files within the project using the Python formatter [Black](https://github.com/psf/black)
- `make lint`: Runs `pytlint` on the codebase
- `make test`: Runs test cases in the `test` directory
- `make run`: Runs the `main` function in the `project` folder
