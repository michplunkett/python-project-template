# Python 🐍 Project Template
This repository is a template for a python 🐍 project using the `uv` container. The intent is to do all the basic
lifting for a python project so that people can hit the ground running with their ideas.

## Required Post-templating Changes
1. Create a new repository, [using this one as a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).
2. Change the `project` folder name to the kebab-case name of your project.
3. Update the information in the `pyproject.toml` file with your project's and your personal information.
4. Update the information in the `CODEOWNERS` file so that it uses your GitHub ID and the kebab-case name of your project folder.

## Default 🐍 Packages
- [pre-commit](https://pre-commit.com/): This serves as the codebase formatter and linter.
- [requests](https://requests.readthedocs.io/en/latest/): This is the project's means of communicating with external APIs.
- [responses](https://github.com/getsentry/responses): This is used in conjunction with Pytest and Requests to mock API calls in the test module.

## Pull Request Requirements

If any of the following conditions are not met the respective GitHub Action will
fail, and you will not be able to merge. Please do not mark your PR as `Open` for
review until all GitHub Actions are passing.

- All PR titles must be in the present imperative tense.
  - **Examples:** "Fix issue in the dispatcher where…", "Improve our handling of…",
  - For more information on Pull Requests, you can reference here: [PRs to Contribute](https://success.vanillaforums.com/kb/articles/228-using-pull-requests-to-contribute).
- Code in PRs must be properly formatted.

If your PR is not ready for review for whatever reason, please mark it as a
draft: [PR Draft](https://github.blog/news-insights/product-news/introducing-draft-pull-requests/).

## Project Requirements
- `uv` version: `0.9.26`
- Download at: [link](https://docs.astral.sh/uv/).

## Instructions to Run the Project
1. Go into the base directory of the repository and type `make env` into the terminal.
2. Enter `source .venv/bin/activate` to access the environment.
3. Use the `make run` command.

## Technical Notes
- Any modules should be added via the `uv add [module]` command.
  - Example: `uv add pre-commit`

## Standard Commands
- `make create-requirements`: Creates and/or updates the `requirements.txt` file.
- `make env`: Creates a `uv` virtual environment.
- `make lint`: Runs `pre-commit`.
- `make run`: Runs the `main` function in the `project` folder.
- `make test`: Runs test cases in the `tests` directory.
