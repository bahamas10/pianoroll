.PHONY: help
help:
	@echo 'make check     style check files'

.PHONY: check
check:
	bash -n pianoroll
	./tools/style-check Makefile *.md pianoroll tools/* parsers/* extras/*
