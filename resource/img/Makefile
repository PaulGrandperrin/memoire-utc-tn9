all : logo_utc.eps \
	aw_360.eps \
	historique_aw.eps clouds-users.eps \
	clouds-responsabilities.eps \
	Diagramme_ArchiEmulateur.eps \
	Diagramme_ArchiIsolateur.eps \
	Diagramme_ArchiKernelUserSpace.eps \
	Diagramme_ArchiHyperviseur.eps

%.eps:
	convert $*.png $*.eps

clean:
	rm -f *.eps *.pdf
