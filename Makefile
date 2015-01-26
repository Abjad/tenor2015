all:
	ajv book abjad.tex.raw
	pdflatex abjad.tex
	bibtex abjad.aux
	pdflatex abjad.tex