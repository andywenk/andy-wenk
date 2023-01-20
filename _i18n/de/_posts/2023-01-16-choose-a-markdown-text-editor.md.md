---
layout: post
title: Wählen deinen Markdown-Editor
date: 2023-01-16 10:00:00
description: Es sind viele Editoren verfügbar. Ich bevorzuge Markdown als einen einfachen Text-Editor für alles
categories: writing
tags: markdown texteditor
---

![editors](/assets/images/markdown-text-editors.png)

## Das Meer der Text-Editoren 

Es gibt viele tausend verschiedene Text-Editoren. Du kannst einen Online-Editor wie [Stackedit](https://stackedit.io/){:target="_blank"} oder [Dillinger](https://dillinger.io/){:target="_blank"} verwenden oder Du kannst lokal installierte Editoren wie [Notion](https://www.notion.so){:target="_blank"}, [Macdown](https://macdown.uranusjr.com/){:target="_blank"}, [Word](https://www.microsoft.com/en-us/microsoft-365/word){:target="_blank"} oder [VS Code](https://code.visualstudio.com/){:target="_blank"} nutzen. Alle diese Editoren haben ihre Vorteile. Word ist der Standardeditor für Office-Dokumente, VS Code wird heute von Millionen von Softwareentwicklern verwendet und Macdown ist ein einfacher Markdown-Editor. Aber welchen soll man wählen?

## Markdown

Als Softwareentwickler habe ich gelernt, die Dinge extrem einfach und benutzerfreundlich zu halten. Wenn ich Code schreibe, möchte ich nicht durch Funktionen des Programms abgelenkt werden, die ich nur schwer kennen oder verstehen kann. Und ich möchte in der Lage sein, die Dokumente mit einem einfachen Text-Editor oder sogar nur einer Vorschau lesen zu können. Letzteres erfordert ein einfaches Format, bekannt als _plain/text_. Die Datei ist nicht formatiert und "was Du siehst ist das was Du bekommst" (What you see is what you get). 

Um Text leicht zu verstehen, sind wir an einige einfache Formatierungshilfen gewöhnt:

![formatting helpers | 250](/assets/images/markdown-example.png)
Das hilft, den Text besser zu verstehen und sich zu merken. Die Kombination aus reinen Textdateien und Formatierung wird durch Markdown ermöglicht. Markdown wurde von [John Gruber](https://daringfireball.net/){:target="_blank"} und [Aaron Swartz](https://en.wikipedia.org/wiki/Aaron_Swartz){:target="_blank"} entwickelt. 

## Warum verwende ich Markdown?

1994 habe ich angefangen Windows 3.1 zu nutzen - auf dem Rechner gab es Word. Wie cool! Ich konnte Grafiken, Farben für den Text und so weiter einfügen. Was dabei als Ergebnis rauskam, lässt mich heute noch schaudern. Als wir dann Redaktionssysteme (fälschlicherweise auch CMS genannt) für das Web entwickelt haben, haben wir WYSIWYG-Editoren eingebaut (what you see is what you get) und die Websites wurden bunt, mit verschiedenen Schriftarten und Stilen und ... was für ein Horror.

Was man will sind letztlich einfach zugängliche Informationen, die gut formatiert sind. Das ist die Grundidee von Markdown. Hier ist ein Beispiel für einen einfachen Text der mit Markdown formatiert wurde:

```
# Top news brought to you by Andy

## Software developer discovers a new way of creating simple an well readable text with a formatting technic called Markdown.

Hamburg, 12.05.2010. A software developer from Hamburg, Germany discovered the new formatting technic to create nice and readable text. He was _extremely happy_ to discover **Markdown**. This modern way of formatting plain/text is a breakthrough to fight the mess of unreadbale HTML pages in the World Wide Web. 

The basic features are:

* it is simple to learn 
* one needs only a simple text editor
* with additional software like [Pandoc](https://pandoc.org/) the text can be converted into various document formats like **PDF**, **epub** or **HTML**
```

Dieser Text ist leicht lesbar und kann in jedem Texteditor gelesen werden. Wenn du die Formatierung verwendest und den Text konvertierst, sieht er wie folgt aus:
![Markdown PDF | 300 ](/assets/images/markdown-pdf.png)

Wenn man beide Ausgaben vergleicht, bekommt man sofort eine Vorstellung davon, was die Formatierung bewirkt: z.B. ein `#` erzeugt eine Überschrift der Ordnung 1 (h1), `##` erzeugt eine Überschrift der Ordnung 2 (h2), `**sth**` macht den Text fett usw. Das sind alles einfache Formatierungsangaben für _Markup Languages_ wie HTML (Hyper-Text-Markup-Language). Und jetzt erkennst Du, warum es _Markdown_ heißt und warum eines der grundlegenden Formate, die bei der Konvertierung von Markdown-Dateien entstehen, HTML ist. 

Super einfach und praktisch in der Anwendung. 

## Welchen Editor soll man verwenden?

Jetzt wird es philosophisch. Ich denke, jeder hat seinen Lieblingseditor zum Schreiben von Text. Wenn du etwas sehr einfaches nutzen willst, empfehle ich Dir [Macdown](https://macdown.uranusjr.com/){:target="_blank"} auszuprobieren. Ich mag den Editor sehr und habe viele Dokumente damit geschrieben. Wenn du auch einen besseren Überblick über deine Dateien brauchst, empfehle ich dir diese Editoren auszuprobieren:

* [Obsidian](https://obsidian.md/){:target="_blank"}: Gefällt mir sehr gut, weil man jede Menge Dokumente in einem sogenannten **Vault** organisieren kann. Und es gibt viele Plugins, die man z.B. für eine bessere Tabellenverwaltung oder sogar eine Github-Integration verwenden kann. Ich benutze ihn regelmäßig (anstelle von Notion, weil der zu kompliziert und groß ist).
  ![Obsidian Editor](/assets/images/obsidian-editor.png)
* [Zettlr](https://www.zettlr.com/){:target="_blank"}: Für Leute, die einen Zettelkasten benutzen, ist dieser hier super cool. Ich mag ihn sehr und benutze ihn immer noch für meinen Zettelkasten.
  ![Zettlr-Editor](/assets/images/zettlr-editor.png)
* [Ulysses](https://ulysses.app/){:target="_blank"}: Ein guter Editor zum Schreiben von Romanen. Ich mag den Schreibmaschineneffekt der verwendet werden kann. Und die Organisation der Dokumente ist sehr gut.
  ![Ulysses Editor](/assets/images/ulysses-editor.png)
* [Das Archiv](https://zettelkasten.de/the-archive/){:target="_blank"}: Ein weiterer Zettelkasten-Editor, den ich ziemlich oft benutzt habe. Die Website ist übrigens ein sehr guter Ausgangspunkt für das von [Niklas Luhmann](https://de.wikipedia.org/wiki/Niklas_Luhmann){:target="_blank"} erfundene Zettelkasten-Konzept.
  ![Der Archiv-Editor](/assets/images/the-archive-editor.png)
* [VS Code](https://code.visualstudio.com/){:target="_blank"}: Der defacto-Editor für Entwickler, die Code schreiben. Er hat ein sehr gutes Extension-System und eine Menge anderer Funktionen für Entwickler. Du kannst ihn auch als einen sehr guten Markdown-Editor verwenden.
  ![VS Code Editor](/assets/images/vscode-editor.png)
* [Macdown](https://macdown.uranusjr.com/){:target="_blank"}: Ein super einfacher und starker Editor. Mir gefällt die Vorschau sehr gut. Ihm fehlen einige Funktionen die andere Editoren bieten, aber er ist sehr gut um schnell eine Markdown-Datei zu schreiben.
  ![Macdown Editor](/assets/images/macdown-editor.png)

Ich möchte nicht vergessen zu erwähnen, dass es auch gute Online-Editoren für Markdown gibt. Einer den ich mag ist [Stackedit](https://stackedit.io/app#){:target="_blank"}. Du musst selbst entscheiden, ob du dich bei einem Dienst anmelden und die Dateien dort speichern willst, oder ob du einen lokalen Editor verwenden willst, bei dem du die volle Kontrolle über deine Daten hast.
![Stackedit Online](/assets/images/stackedit-editor.png)

## Exportieren in ein anderes Format wie PDF

Die Stärke von Markdown liegt in seiner Einfachheit die dazu führt, dass Du ein Dokument in ein Format Deiner Wahl erstellen kannst. Die meisten Editoren bieten zumindest die Möglichkeit ein PDF zu erstellen. Da ich diese Datei in Obsidian schreibe, habe ich die Möglichkeit, sie in ein PDF zu exportieren. Das sieht dann wie folgt aus: 
![PDF exportieren](/assets/images/export-pdf.png)
Das Ergebnis:
![Exportierte PDF](/Assets/Bilder/exportierte-pdf.png)

Wie Du siehst wird die PDF-Datei erstellt. In anderen Editoren wie z.B. Ulysses hast Du zahlreiche weitere Optionen zur Auswahl des Formats und auch des Stils in dem die PDF-Datei erstellt werden soll.

## Fazit

Ich liebe [simplicity](http://www.amazingcto.com/){:target="_blank"}. Und das ist der Grun warum ich alles in Markdown schreibe. Du kannst sogar auf ein Textverarbeitungsprogramm wie Microsoft Word verzichten, wenn du den Markdown-Editor verwendest, der dir alles bietet was du für die letztendliche Ausgabe brauchst. 
