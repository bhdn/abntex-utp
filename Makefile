all: trabalho.pdf exemplo.pdf apresentacao.pdf
apresentacao.pdf: apresentacao.tex
	pdflatex $<
%.pdf: %.tex xunxos-utp.sty biblio.bib Makefile
	pdflatex $<
	bibtex $*
	pdflatex $<
	pdflatex $<

.PHONY: clean
clean:
	rm -f *.aux *.log *.lof *.loc *.lot *.qdr *.out *.blg *.bbl *.pdf *.toc *.nav *.snm
