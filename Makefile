.PHONY:all
all:doc
doc:source-control/source-control.pdf

%.toc:%.tex
	cd $(dir $@) && pdflatex $(notdir $<)
%.pdf:%.tex %.toc
	cd $(dir $@) && pdflatex $(notdir $<)
