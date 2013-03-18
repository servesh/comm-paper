#!/bin/sh
while inotifywait paper.tex; do
#    pdflatex -interaction=nonstopmode paper.tex
#     make
    pdflatex -interaction=nonstopmode paper.tex
    bibtex paper
    pdflatex -interaction=nonstopmode paper.tex
    pdflatex -interaction=nonstopmode paper.tex
    rm -rf *.log *.blg *.bbl *.aux
done
