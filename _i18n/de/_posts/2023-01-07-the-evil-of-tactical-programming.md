---
layout: post
title: Das Übel der taktischen Programmierung
date: 2023-01-07 18:00:00
description: John Ousterhouts neues Buch A philosphy of software design hilft zu verstehen, wie gutes Softwaredesign Probleme löst.
categories: work
tags: software-design development 
---

<img src="/assets/images/ousterhout.jpg" />

Ich habe begonnen das Buch _A Philosophy of Software Design_ von Paul Ousterhout zu lesen. Die ersten Kapitel und die Einleitung sind sehr vielversprechend für ein Thema, das mich seit vielen Jahren interessiert. [Ousterhout ist Professor an der Fakultät für Informatik (https://web.stanford.edu/~ouster/cgi-bin/home.php){:target="_blank"} an der Stanford University. Er beklagt sich, dass es noch nie einen Kurs für _Software Design_ gegeben hat. Also beschloss er in Standford einen zu gründen und es hat sich herausgestellt, dass dieser gut angenommen wird. 

## _# WHAT?

Ich liebe es, Code zu lesen, und ich liebe es, zu programmieren - auch wenn es heutzutage "Kids" gibt, die viel regelmäßiger programmieren als ich. Was ich in den letzten Jahren oft gesehen habe ist alarmierend. Es ist genau das, über was Ousterhout in Kapitel 3 _Working Code Isn't Enough_ schreibt. In Kapitel 3.1 gibt er der Sache einen Namen: _Taktische Programmierung_. Ja! Genau ein Problem, mit dem ich mich seit langem beschäftige. Das Gegenteil von taktischer Programmierung ist _Strategische Programmierung_, wie sie von Ousterhout definiert wird. 

Jetzt fragst du dich warum ich das als alarmierend empfinde. Das Problem der taktischen Programmierung ist der Mangel an **Voraussicht**. Denn taktische Programmierung ist **kurzsichtig**. Lass es mich anhand eines Szenarios erklären, das du wahrscheinlich schon kennst:

* ein Entwickler erstellt Code der funktioniert
* ohne richtig über das Code-Design nachzudenken, wird der Code irgendwann komplex
* das Hinzufügen von neuem Code oder neuen Funktionen anstelle von Refactoring führt zu noch komplizierterem Code
* neue Entwickler werden gebeten Funktionen zum Code hinzuzufügen aber es fällt ihnen schwer fallen den Code zu verstehen
* dies führt zu noch komplizierterem Code und damit zu mehr Fehlern
* die Korrektur des Codes dauert sehr lange oder ist gar nicht möglich
* dies wiederum führt zu einem dramatischen Business-Impact, weil die Kosten zu hoch sind oder sogar explodieren
* weil kein oder nicht genug Geld vorhanden ist um das Problem anzugehen, wird der Code in einem Chaos hinterlassen

Als ich anfing ein Team zu leiten, habe ich viel über dieses Problem gesprochen. Vor allem unerfahrene Entwickler nehmen sich oft nicht genug Zeit über ein angemessenes Design nachzudenken. Und daraus ergeben sich viele Probleme:

* die Software ist zu komplex und nicht stabil oder robust
* die Kunden oder die Stakeholder sind unzufrieden
* das Team ist ebenfalls unzufrieden und die Stimmung im Team wird schlechter
* die Kosten sind zu hoch
* das Risiko einen Kunden, ein Projekt oder ein Produkt zu verlieren ist extrem hoch

## WARUM?

Was sind die Hauptgründe dafür? Meiner Meinung nach ist eines der größten Probleme der Zeitdruck. Es spielt keine Rolle ob man Kunden hat für die das Team Software schreibt, oder ob man selbst ein Produkt für das Unternehmen entwickelt. Es wird immer Stakeholder geben, die kein richtiges technisches Wissen haben und vom Team verlangen, dass es schneller arbeitet. Das ist ganz natürlich und letztendlich ihre Aufgabe. 

Wenn es niemanden gibt, der sich damit befasst, wird der Druck definitiv zu den oben genannten Problemen führen. Die Software wird zu komplex. Nach einer gewissen Zeit der Entwicklung der Software kommt das Team an einen Punkt, an dem es sich dessen bewusst wird und überlegt, wie es das Problem lösen kann. Die Zeitspanne um diesen Punkt zu erreichen, kann dabei viele Jahre betragen. 

Es ist immer mein Ziel und meine Aufgabe, dies zu verdeutlichen und als Vermittler oder als derjenige zu arbeiten, der genügend Zeit einfordert, um das Softwaredesign richtig zu wählen. Insbesondere eine ordentliche Schätzung ([siehe diesen sehr guten Artikel von DHH darüber, warum unsere Schätzungen Mist sind](https://world.hey.com/dhh/your-estimates-suck-2b9f8445){:target="_blank"}) mit **refactoring included (!)** ist entscheidend. 

Bei einer bestehenden Codebasis ist es schwieriger aber nicht unmöglich. Es gibt verschiedene Techniken (z.B. das [Strangler Pattern](https://martinfowler.com/bliki/StranglerFigApplication.html){:target="_blank"}), um auch Legacy-Code oder zu komplexen Code zu refactorn. 

Sicherlich gibt es auch andere Gründe für das Problem die nicht unerwähnt bleiben dürfen:

* ein Team mit zu unerfahrenen Entwicklern
* fehlende Klarheit darüber, was die Software leisten soll
* es handelt sich um einen Prototyp oder ein Proof of Concept (POC), aber der Code wird für das endgültige Projekt nicht umgeschrieben sondern einfach genutzt
* das Team wechselt und neue Entwickler haben Probleme mit der Codebasis umzugehen

## FIX!

Ich bin sehr gespannt auf die Lösungen, die Ousterhout in seinem Buch vorstellt. Was ich aus meiner Erfahrung heraus sagen kann ist folgendes: Halte es so einfach wie möglich und nehme dir genug Zeit, das Ziel genau zu verstehen. Versuche die Tools zu verwenden, die du am besten kennst und fange nicht mit der Infrastruktur an. Konzentriere dich auf das absolute Minimum an Codezeilen die die Aufgabe erfüllen. Entwickle das Projekt iterativ und nehme dir genügend Zeit für Refactoring. Und vergiss nicht‚ Tests zu schreiben!
