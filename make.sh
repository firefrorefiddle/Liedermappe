#!/bin/sh

songmaker lieder

if [ -e inhalt-jugend.sbx ]
then 
   cp inhalt-jugend.sbx inhalt-jugend.alt
fi

if [ -e inhalt-gemeinde.sxd ]
then
   cp inhalt-gemeinde.sbx inhalt-gemeinde.alt
fi

pdflatex tex/Jugend
pdflatex tex/Jugend_TO
pdflatex tex/Jugend_OH
pdflatex tex/Gemeinde
pdflatex tex/Gemeinde_TO
pdflatex tex/Gemeinde_OH
# pdflatex tex/Eigene_Mappe
pdflatex tex/Eigene_Mappe_2
pdflatex tex/Eigene_Mappe_3

songidx inhalt-jugend.sxd inhalt-jugend.sbx
songidx inhalt-gemeinde.sxd inhalt-gemeinde.sbx
# songidx inhalt-eigene.sxd inhalt-eigene.sbx
songidx inhalt-eigene-2.sxd inhalt-eigene-2.sbx
songidx inhalt-eigene-3.sxd inhalt-eigene-3.sbx

if [ $? -lt 127 ]
then 
    if [ -e inhalt-jugend.alt ]
    then
	diff inhalt-jugend.alt inhalt-jugend.sbx > /dev/null
	if [ $? -ne 0 ]
	then
	    pdflatex tex/Jugend
	    pdflatex tex/Jugend_TO
	fi
    else
	pdflatex tex/Jugend
	pdflatex tex/Jugend_TO
    fi
    if [ -e inhalt-gemeinde.alt ]
    then
	diff inhalt-gemeinde.alt inhalt-gemeinde.sbx > /dev/null
	if [ $? -ne 0 ]
	then
	    pdflatex tex/Gemeinde
	    pdflatex tex/Gemeinde_TO
	fi
    else
	pdflatex tex/Gemeinde
	pdflatex tex/Gemeinde_TO
    fi
fi

mv Jugend.pdf out
mv Jugend_TO.pdf out
mv Jugend_OH.pdf out
mv Gemeinde.pdf out
mv Gemeinde_TO.pdf out
mv Gemeinde_OH.pdf out
# mv Eigene_Mappe.pdf out
mv Eigene_Mappe_2.pdf out
mv Eigene_Mappe_3.pdf out

rm -f *.aux *.log
