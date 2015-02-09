#!/bin/sh

bin/songmaker lieder
pdflatex tex/Gemeinde
mv Gemeinde.pdf out
rm -f Gemeinde.aux Gemeinde.log
