.PHONY:all
all:doc
doc:source-control/source-control.pdf

%.pdf:%.tex
	cd $(dir $@) && pdflatex $(notdir $<)
