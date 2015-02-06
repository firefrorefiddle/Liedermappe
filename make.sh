#!/bin/sh

runhaskell src/convert lieder
pdflatex tex/Gemeinde
