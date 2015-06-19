main = main.scm
gosh ?= gosh

default: run

run: $(main)
	$(gosh) $<
