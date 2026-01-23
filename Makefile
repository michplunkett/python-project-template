# Here is some general information on Makefile's so that you can grow this out:
# https://www.gnu.org/software/make/manual/html_node/Introduction.html
.DEFAULT_GOAL := format

.PHONY: env
env:
	uv venv

.PHONY: install
install:
	uv sync

.PHONY: create-requirements
create-requirements:
	uv pip compile --generate-hashes pyproject.toml > requirements.txt

.PHONY: format
format: create-requirements
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
