# Here is some general information on Makefile's so that you can grow this out:
# https://www.gnu.org/software/make/manual/html_node/Introduction.html
default: create-requirements lint

.PHONY: lint
lint:
	pre-commit run --all-files

.PHONY: create-requirements
create-requirements:
	poetry export --format=requirements.txt > requirements.txt

.PHONY: test
test:
	pytest -vs test/

.PHONY: test-and-fail
test-and-fail:
	pytest -vsx test/

.PHONY: run
run:
	python -m project
