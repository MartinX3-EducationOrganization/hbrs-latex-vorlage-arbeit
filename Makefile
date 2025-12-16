DOCUMENT_NAME = Arbeit
# The flag "--shell-escape" is needed by the package "minted"
COMPILER = latexmk -lualatex --jobname=$(DOCUMENT_NAME) --output-directory=out --shell-escape

help:
	@echo 'make | Zeigt die Hilfe'
	@echo 'make build | Erstelle das komplette Dokument mit latexmk'
	@echo 'make clean | Säubere das Arbeitsverzeichnis von temporären Dateien und Verzeichnissen.'
	@echo 'make help | Zeigt die Hilfe'

build:
	$(COMPILER) Arbeit

clean:
	rm -rf out/
