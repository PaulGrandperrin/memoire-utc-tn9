all: hier.dot ONE.dot
	dot -Tps hier.dot -o hier.ps
	dot -Tps ONE.dot -o ONE.ps
	pstoedit -f plot-ps hier.ps hier.eps
	pstoedit -f plot-ps ONE.ps ONE.eps

clean:
	rm -f *.ps *.eps *.pdf
