all:
	ajv book abjad.tex.raw
	pdflatex abjad.tex
	bibtex abjad.aux
	pdflatex abjad.tex

skip-rendering:
	ajv book --skip-rendering abjad.tex.raw
	pdflatex abjad.tex
	bibtex abjad.aux
	pdflatex abjad.tex