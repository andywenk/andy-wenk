---
layout: post
title: Mit pandoc aus Markdown ein Word Dokument erstellen
date: 2023-03-16 14:00:00
description: pandoc ist extrem hilfreich. Es ist extrem einfach ein Word Dokument aus einem Markdown Dokument zu erstellen.
categories: work
tags: pandoc
---

![Markdown Word](/assets/images/markdown-word.jpg)
<span style="font-size: 0.7em">Foto von <a href="https://unsplash.com/@mrthetrain?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText" target="_blank">Joshua Hoehne</a> auf <a href="https://unsplash.com/de/fotos/YPgTovTiUv4?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText" target="_blank">Unsplash</a></span>

## pandoc ist cool

Wie in einem anderen Post bereits geschrieben, liebe ich es all meine Notizen und Aufzeichnungen, in plain/text bzw. Markdown zu schreiben. Allerdings bin ich mit dieser Manie nicht immer kompatibel zu Menschen, mit denen ich arbeite. Eins der meistgenutzten Tools, um Text-Dateien zu erstellen, ist und bleibt nun mal Microsoft Word. Meine Mission ist es auch nicht andere davon zu überzeugen, genauso wie ich zu arbeiten. Ich lasse allen den Frieden, sich die Tools auszusuchen, mit denen sie am einfachsten und vor allem effizientesten arbeiten können.

Nach einem längeren Workshop, in dem ich meine Notizen handschriftlich festgehalten habe, ist es die immer wieder kehrende Aufgabe, diese in mein "CRM" (bestehende aus Markdown Dateien - Stoff für einen späteren Post) zu übernehmen. Also: Texteditor auf und Schreiben.

Für gewöhnlich erstelle ich dann einfach ein PDF und sende es an andere. Ein PDF zu erweitern ist allerdings nicht einfach und schließlich auch nicht im Sinne des Erfinders. Und in diesem Fall war der Empfänger ein Word-Power-Nutzer. Also habe ich alles aus der Markdown-Datei kopiert und es in ein Word-Dokument eingefügt. Dabei tritt aber leider das Problem der Formatierung auf. Z. B. werden Listen, die mit einem "*" erstellt werden, nicht umgewandelt. Unschön.

Wenn ich eine Markdown-Datei direkt in Word öffne, ist das Ergebnis bedauerlicherweise auch unbefriedigend. Der Grund dafür ist die Unfähigkeit von Word, die Markdown-Datei zu transpilieren und interpretiert diese deshalb, zu Recht, als reine Textdatei.

![Markdown in Word](/assets/images/markdown-in-word.png)

## Es muss eine Lösung geben

Eine kurze Web-Recherche hat mich zu einem vielversprechenden (natürlich kostenpflichtigem) Tool gebracht. Aber: nur für Windows Nutzer erhältlich. Auch unschön.

Eine weitere Recherche hat mich dann - wie könnte es anders sein - zu dem Schweizer Taschenmesser *pandoc* geführt

## pandoc ist das Schweizer Taschenmesser für Markdown

Ich rede nicht lange um den heißen Brei herum. So geht es:

    pandoc -o word-doc.docx markdown-datei.md

Mit dieser einfachen Zeile wird aus der Markdown Datei *markdown-datei.md* das Word Dokument *word-doc.docx* erstellt. Vor allem ist die Formatierung wirklich gut.

Hier das Markdown Dokument:

![Markdown Dokument](/assets/images/markdown-doc.png)

Und hier das Ergebnis in Word:

![Markdown Dokument](/assets/images/word-doc.png)

Wie wir sehen können, sind die Headlines und sonstige Formatierungen korrekt übernommen. Sehr cool!

## Zum Weiterlesen

* [pandoc](https://pandoc.org/){:target="_blank"}
