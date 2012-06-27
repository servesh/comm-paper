all: paper.tex
	pdflatex -interaction=nonstopmode paper.tex
	bibtex paper.aux
	pdflatex -interaction=nonstopmode paper.tex
	rm -rf *.log *.blg *.bbl
