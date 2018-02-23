release:
	make clean
	make cs4518-final-paper.pdf

zip:
	/bin/rm -f *.aux *.bbl *.blg *.log *~
	(cd ..;zip latex-templates.zip latex-templates/*)

cs4518-final-paper.pdf: cs4518-final-paper.tex sigproc.bib *.tex
	pdflatex cs4518-final-paper
	bibtex cs4518-final-paper
	pdflatex cs4518-final-paper
	pdflatex cs4518-final-paper

clean:
	/bin/rm -f soups.{aux,bbl,blg,log,pdf}
	/bin/rm -f cs4518-final-paper.{aux,bbl,blg,log,pdf}
