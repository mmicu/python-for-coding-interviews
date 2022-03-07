.PHONY: linter
linter:
	markdownlint README.md

.PHONY: pdf
pdf:
	pandoc README.md -V geometry:margin=1in --pdf-engine=xelatex -o artifacts/python-for-coding-interview.pdf
