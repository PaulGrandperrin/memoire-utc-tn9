all : 	logo_utc.eps \
	logo_awh.eps \
	aw_360.eps \
	historique_aw.eps clouds-users.eps \
	clouds-responsabilities.eps \
	Diagramme_ArchiEmulateur.eps \
	Diagramme_ArchiIsolateur.eps \
	Diagramme_ArchiKernelUserSpace.eps \
	Diagramme_ArchiHyperviseur.eps \
	blade.eps \
	DC.eps \
	netapp_c3300.eps \
	cisco-switch.eps \
	live-migration.eps \
	sunstone-createvm.eps \
	sunstone-dashboard.eps \
	sunstone-hosts.eps \
	sunstone-createtemplate.eps \
	

%.eps:
	convert $*.png $*.eps

clean:
	rm -f *.eps *.pdf
