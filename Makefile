DOCUMENT_NAME = Arbeit
# The flag "--shell-escape" is needed by the package "minted"
COMPILER = latexmk -lualatex --jobname=$(DOCUMENT_NAME) --output-directory=out --shell-escape

default:
	$(COMPILER) Arbeit

help:
	@echo 'make       | Erstelle das komplette Dokument mit latexmk'
	@echo 'make clean | Säubere das Arbeitsverzeichnis von temporären Dateien und Verzeichnissen.'

clean:
	rm -rf out/
