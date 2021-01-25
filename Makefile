DOCUMENT_NAME = Arbeit
BIB = biber -output-directory=out # BibLaTeX
GLOS = makeglossaries -d out # Glossaries
LUALATEX = lualatex --shell-escape --output-directory=out

default: 
	@echo 'make all    | Erstelle das komplette Dokument inklusive bib-Datei für das Literaturverzeichnis'
	@echo 'make bib    | Erstelle bib-Datei für Literaturverzeichnis'
	@echo 'make clean  | Säubere das Arbeitsverzeichnis von temporären Dateien und Verzeichnissen.'
	@echo 'make doc    | Erstelle komplettes Dokument und lese die Ausgabe. Falls Fehler auftreten führe make bib oder make doc erneut aus.'
	@echo 'make glos   | Erstelle Dateien für Inhaltsverzeichnisse'

all: doc gloss bib doc_twice

bib: 
	$(BIB) $(DOCUMENT_NAME)

clean:
	rm -f .log quit.tex *.acn *gdf *.glg *. glo *. gls *.ist *.lol *.nlo *.nls *.ps *.out *.dvi *.log *.aux *.blg *.toc *.log *.bbl *.lof *.lot *.idx *.brf *.ilg *.ind abschnitte/*.aux bilder/*.aux

doc: 
	$(LUALATEX) $(DOCUMENT_NAME)

doc_twice: 
	$(LUALATEX) $(DOCUMENT_NAME)
	$(LUALATEX) $(DOCUMENT_NAME)

gloss:
	$(GLOS) $(DOCUMENT_NAME)
