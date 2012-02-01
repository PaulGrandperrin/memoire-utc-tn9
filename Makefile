OUTFILE ?= memoire_grandperrin_paul.pdf

all: pdf

xdg-open: pdf
	xdg-open $(OUTFILE)

pdf : resource
	latex -shell-escape main
	bibtex main
	makeindex main
	latex -shell-escape main
	pdflatex -shell-escape main
	mv main.pdf $(OUTFILE)

clean : resource_clean
	rm -f *~ */*~ *.aux *.bbl *.blg *.dvi *.idx *.ilg *.ind *.log *.pyg *.toc *.out *.lof

mrproper : clean
	rm -f $(OUTFILE)

resource :
	cd resource/img && $(MAKE)
	cd resource/plot && $(MAKE)
	cd resource/graph && $(MAKE)

resource_clean:
	cd resource/img && $(MAKE) clean
	cd resource/plot && $(MAKE) clean
	cd resource/graph && $(MAKE) clean

.PHONY : clean pdf mrproper resource img_clean
