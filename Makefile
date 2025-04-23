# Here is some general information on Makefile's so that you can grow this out:
# https://www.gnu.org/software/make/manual/html_node/Introduction.html
.DEFAULT_GOAL := lint

.PHONY: env
env:
	uv venv

.PHONY: create-requirements
create-requirements:
	uv pip compile --generate-hashes pyproject.toml > requirements.txt

.PHONY: lint
lint: create-requirements
	pre-commit run --all-files

.PHONY: test
test:
	pytest -vs tests/

.PHONY: test-and-fail
test-and-fail:
	pytest -vsx tests/

.PHONY: run
run:
	python -m project
