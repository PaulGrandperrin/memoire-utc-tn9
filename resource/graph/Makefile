all: hier.dot
	dot -Tps hier.dot -o hier.ps
	pstoedit -f plot-ps hier.ps hier.eps

clean:
	rm -f *.ps *.eps *.pdf
