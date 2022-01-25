DOCUMENT_NAME = Arbeit
# The flag "--shell-escape" is needed by the package "minted"
COMPILER = latexmk -lualatex --output-directory=out --shell-escape

default:
	$(COMPILER) $(DOCUMENT_NAME)

help:
	@echo 'make       | Erstelle das komplette Dokument mit latexmk'
	@echo 'make clean | Säubere das Arbeitsverzeichnis von temporären Dateien und Verzeichnissen.'

clean:
	rm -f .log quit.tex *.acn *gdf *.glg *. glo *. gls *.ist *.lol *.nlo *.nls *.ps *.out *.dvi *.log *.aux *.blg *.toc *.log *.bbl *.lof *.lot *.idx *.brf *.ilg *.ind abschnitte/*.aux bilder/*.aux
