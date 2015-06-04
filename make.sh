#!/bin/sh

songmaker lieder
pdflatex tex/Jugend
pdflatex tex/Jugend_TO
pdflatex tex/Jugend_OH
pdflatex tex/Gemeinde
pdflatex tex/Gemeinde_TO
pdflatex tex/Gemeinde_OH
mv Jugend.pdf out
mv Jugend_TO.pdf out
mv Jugend_OH.pdf out
mv Gemeinde.pdf out
mv Gemeinde_TO.pdf out
mv Gemeinde_OH.pdf out
rm -f *.aux *.log
