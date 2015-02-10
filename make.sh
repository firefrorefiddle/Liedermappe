#!/bin/sh

bin/songmaker lieder
pdflatex tex/Gemeinde
pdflatex tex/Gemeinde_TO
pdflatex tex/Gemeinde_OH
mv Gemeinde.pdf out
mv Gemeinde_TO.pdf out
mv Gemeinde_OH.pdf out
rm -f *.aux *.log
