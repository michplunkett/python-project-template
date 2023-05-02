# Here is some general information on Makefile's so that you can grow this out:
# https://www.gnu.org/software/make/manual/html_node/Introduction.html

BASEDIR=project

.PHONY: format
format:
	black ${BASEDIR}/ test/
	isort ${BASEDIR}/ test/

.PHONY: lint
lint:
	ruff ${BASEDIR}/ test/

.PHONY: test
test:
	pytest -vs test/

.PHONY: test-and-fail
test-and-fail:
	pytest -vsx test/

.PHONY: run
run:
	python -m project
