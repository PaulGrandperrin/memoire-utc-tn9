OUTFILE ?= memoire_grandperrin_paul.pdf

all: pdf
	kde-open $(OUTFILE)

pdf : img
	latex -shell-escape src/main
	bibtex main
	makeindex main
	latex -shell-escape src/main
	pdflatex -shell-escape src/main
	mv main.pdf $(OUTFILE)


clean : img_clean
	rm -f *~ */*~ *.aux *.bbl *.blg *.dvi *.idx *.ilg *.ind *.log *.pyg *.toc *.out *.lof
	rm -f src/*.aux src/*.toc

mrproper : clean
	rm  -f $(OUTFILE)

img :
	cd img && $(MAKE)

img_clean:
	cd img && $(MAKE) clean

.PHONY : clean pdf mrproper img img_clean