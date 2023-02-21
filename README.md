Download
artifact: [![CI](https://github.com/MartinX3-EducationOrganization/hbrs-latex-vorlage-arbeit/actions/workflows/ci.yml/badge.svg)](https://github.com/MartinX3-EducationOrganization/hbrs-latex-vorlage-arbeit/actions/workflows/ci.yml)

# H-BRS LaTeX Vorlage

Dies ist eine [LaTeX][1] Vorlage für wissenschaftliche Arbeiten gemäß den [Vorgaben][6] des [Fachbereichs Informatik][2]
der [Hochschule Bonn-Rhein-Sieg][3].

## Einstieg

Um diese Vorlage nutzen zu können, muss [LaTeX][1] auf Deinem Rechner installiert sein. Als compiler wird `LuaLaTeX`
verwendet.

### LEA Gruppe

Einen Startpunkt zur Nutzung von [LaTeX][1] findest Du in unserer LEA Gruppe [Arbeiten mit LaTeX][7]. Sie steht allen
Angehörigen der Hochschule offen.

### Problembehandlung: Arial wird von luaotfload nicht gefunden.

Unter Ubuntu 22.04:
```
sudo apt install ttf-mscorefonts-installer  # Installiert nötige Fonts
cd /usr/share/fonts/truetype/msttcorefonts/ # Wechselt in das Font Verzeichnis
luaotfload-tool -L                          # Sucht nach Fonts im aktuellen Verzeichnis
luaotfload-tool -u                          # Updatet die Font Datenbank
```

## Autoren

### 2020-20**

- Martin Dünkelmann

### 2018

- Urs Weishaupt

### 2011

- Manuel Hachtkemper
- Peter Hasse
- Daniel Meißner
- Danimo Molkentin

## Lizenz

Dieses Projekt ist unter der GNU AGPLv3 lizenziert.\
Weitere Informationen dazu unter [LICENSE.md][5].\
Copyright © 2011 - 2018 [Free Software Lab][4].

[1]: https://www.latex-project.org/

[2]: https://www.h-brs.de/de/inf

[3]: https://www.h-brs.de/de

[4]: https://fslab.de

[5]: LICENSE.md

[6]: https://lea.hochschule-bonn-rhein-sieg.de/goto.php?target=file_215286_download&client_id=db_040811

[7]: https://lea.hochschule-bonn-rhein-sieg.de/ilias.php?ref_id=230834&cmdClass=ilrepositorygui&cmdNode=va&baseClass=ilRepositoryGUI
