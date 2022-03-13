.DEFAULT_GOAL := all

INPUT_FILE = README.md
OUTPUT_FILE = artifacts/python-for-coding-interview.pdf

.PHONY: linter
linter:
	markdownlint $(INPUT_FILE) --disable MD013 MD025

.PHONY: pdf
pdf:
	pandoc $(INPUT_FILE) \
		--pdf-engine=xelatex \
		-M date="`date "+%B%e, %Y"`" \
		-o $(OUTPUT_FILE)

.PHONY: all
all: linter pdf
