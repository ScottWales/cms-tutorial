.PHONY:all
all:doc
doc:source-control/source-control.pdf
clean:
	rm -f */*.log */*.aux */*.nav */*.out */*.snm */*.toc */*.swp */*.pdf

%.toc:%.tex
	cd $(dir $@) && pdflatex $(notdir $<)
%.pdf:%.tex %.toc
	cd $(dir $@) && pdflatex $(notdir $<)
