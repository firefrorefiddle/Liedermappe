#!/bin/sh

songmaker lieder


pdflatex tex/Jugend
pdflatex tex/Jugend_TO
pdflatex tex/Jugend_OH
pdflatex tex/Gemeinde
pdflatex tex/Gemeinde_TO
pdflatex tex/Gemeinde_OH

songidx inhalt-jugend.sxd inhalt-jugend.sbx
songidx inhalt-gemeinde.sxd inhalt-gemeinde.sbx

if [ $? -lt 127 ]
then
    pdflatex tex/Jugend
    pdflatex tex/Jugend_TO
    pdflatex tex/Gemeinde
    pdflatex tex/Gemeinde_TO
fi

mv Jugend.pdf out
mv Jugend_TO.pdf out
mv Jugend_OH.pdf out
mv Gemeinde.pdf out
mv Gemeinde_TO.pdf out
mv Gemeinde_OH.pdf out
rm -f *.aux *.log
