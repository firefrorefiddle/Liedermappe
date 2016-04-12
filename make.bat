
songidx inhalt-jugend.sxd inhalt-jugend.sbx
songidx inhalt-gemeinde.sxd inhalt-gemeinde.sbx
songidx inhalt-eigene.sxd inhalt-eigene.sbx

songmaker lieder

pdflatex tex/Jugend
pdflatex tex/Jugend_TO
pdflatex tex/Gemeinde
pdflatex tex/Gemeinde_TO
pdflatex tex/Eigene_Mappe
move Jugend.pdf out
move Jugend_TO.pdf out
move Gemeinde.pdf out
move Gemeinde_TO.pdf out
move Eigene_Mappe.pdf out
del -f *.aux *.log
