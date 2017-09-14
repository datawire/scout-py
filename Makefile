.PHONY: default

VERSION=$(shell git describe --tags)
SHELL:=/bin/bash

default:
	@echo "See https://github.com/datawire/scout.py/README.md"

version:
	@echo $(VERSION)

build: virtualenv
	tox -e py3

clean:
	rm -rf build dist scout.py.egg-info virtualenv __pycache__

## Setup dependencies ##

virtualenv:
	virtualenv --python=python3 virtualenv
	virtualenv/bin/pip install -Ur requirements/test.txt

## Development ##

## Release ##
