.PHONY: build build-all publish clean

SHELL           := /bin/bash


# incrementally build, output in docs/_build/html
build:
	jupyter-book build docs
	@open -a "Google Chrome"  docs/_build/html/index.html

# rebuild entire doc (not just changes)
build-all:
	jupyter-book build --all docs

publish:
	echo NONE

clean:
	@rm -rf docs/_build

