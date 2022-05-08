.DEFAULT_GOAL := all

INPUT_FILE = README.md
USAGE_FILE = USAGE.md
OUTPUT_DIR = artifacts
OUTPUT_FILE = $(OUTPUT_DIR)/python-for-coding-interview.pdf

.PHONY: linter
linter:
	mdl -r ~MD013 "$(INPUT_FILE)"
	mdl -r ~MD013 "$(USAGE_FILE)"

.PHONY: pdf
pdf:
	mkdir -p "$(OUTPUT_DIR)"
	pandoc "$(INPUT_FILE)" \
		--pdf-engine=xelatex \
		-M date="`date "+%B%e, %Y"`" \
		-o "$(OUTPUT_FILE)"

.PHONY: all
all: linter pdf
