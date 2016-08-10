.DEFAULT_GOAL := all
all:

test:
	./scripts/run-tests.sh

.PHONY: all test
