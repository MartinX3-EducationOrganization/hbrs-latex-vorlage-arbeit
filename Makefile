DOCUMENT_NAME = Arbeit
LUALATEX = latexmk -lualatex --output-directory=out

default:
	$(LUALATEX) $(DOCUMENT_NAME)

help:
	@echo 'make       | Erstelle das komplette Dokument mit latexmk'
	@echo 'make clean | Säubere das Arbeitsverzeichnis von temporären Dateien und Verzeichnissen.'

clean:
	rm -f .log quit.tex *.acn *gdf *.glg *. glo *. gls *.ist *.lol *.nlo *.nls *.ps *.out *.dvi *.log *.aux *.blg *.toc *.log *.bbl *.lof *.lot *.idx *.brf *.ilg *.ind abschnitte/*.aux bilder/*.aux
