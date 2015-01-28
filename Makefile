all:
	rm -Rif assets
	abjad-book --stylesheet stylesheet.ily abjad.tex
	pdflatex abjad.tex
	bibtex abjad.aux
	pdflatex abjad.tex

skip-rendering:
	rm -Rif assets
	abjad-book --stylesheet stylesheet.ily --skip-rendering abjad.tex
	pdflatex abjad.tex
	bibtex abjad.aux
	pdflatex abjad.tex