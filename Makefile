.DEFAULT_GOAL := all

build:
	pip install --upgrade build
	python3 -m build

release:
	pip install --upgrade twine
	python3 -m twine upload dist/*

clean:
	git clean -xdf

all:
	make clean
	make build
	make release
