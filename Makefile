DOCUMENT_NAME = Arbeit
XELATEX = xelatex

default: 
	@echo 'make bib    | Create bibliography, Arbeit.aux required. To create them ,run make doc.'
	@echo 'make doc    | Create complete document. Read output and run make bib or make doc again if needed.'
	@echo 'make clean  | Cleaning working directory.'

bib: 
	bibtex $(DOCUMENT_NAME)

doc: 
	$(XELATEX) $(DOCUMENT_NAME).tex

clean:
	rm -f .log quit.tex *.acn *gdf *.glg *. glo *. gls *.ist *.lol *.nlo *.nls *.ps *.out *.dvi *.log *.aux *.blg *.toc *.log *.bbl *.lof *.lot *.idx *.brf *.ilg *.ind sections/*.aux images/*.aux
