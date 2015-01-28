all:
	abjad-book --stylesheet stylesheet.ily abjad.tex
	pdflatex abjad.tex
	bibtex abjad.aux
	pdflatex abjad.tex

skip-rendering:
	abjad-book --stylesheet stylesheet.ily --skip-rendering abjad.tex
	pdflatex abjad.tex
	bibtex abjad.aux
	pdflatex abjad.tex

clean:
	rm -Rif assets