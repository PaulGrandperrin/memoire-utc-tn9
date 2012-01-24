OUTFILE ?= memoire_grandperrin_paul.pdf

all: pdf

kde-open: pdf
	kde-open $(OUTFILE)

gnome-open: pdf
	gnome-open $(OUTFILE)

pdf : img
	latex -shell-escape main
	bibtex main
	makeindex main
	latex -shell-escape main
	pdflatex -shell-escape main
	mv main.pdf $(OUTFILE)

clean : img_clean
	rm -f *~ */*~ *.aux *.bbl *.blg *.dvi *.idx *.ilg *.ind *.log *.pyg *.toc *.out *.lof

mrproper : clean
	rm -f $(OUTFILE)

img :
	cd img && $(MAKE)

img_clean:
	cd img && $(MAKE) clean

.PHONY : clean pdf mrproper img img_clean
