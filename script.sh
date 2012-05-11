#!/bin/sh
while inotifywait paper.tex; do
    pdflatex -interaction=nonstopmode paper.tex
done
