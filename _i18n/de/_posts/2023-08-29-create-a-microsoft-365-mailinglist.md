---
layout: post
title: Eine MS 365 E-Mail Verteilerliste erstellen
date: 2023-08-29 09:10:00
description: MS 365 ist zwar das defakto Tool für Office und Kommunikation, bietet aber auch diverse Hürden in der Anwendung. Besonders bei der Erstellung von E-Mail Verteilerlisten.
categories: office
tags: ms365
---

![Writing](/assets/images/mailboxes.jpg)

<span style="font-size: 0.7em">Photo by <a href="https://unsplash.com/@rolls0ut?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Jac Alexandru</a> on <a href="https://unsplash.com/photos/L0Wdk52FAmM?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a></span>

## Alle wollen informiert sein

[Microsoft 365](https://www.microsoft.com/de-de/microsoft-365){:target="_blank"} ist das defacto tool für Office Anwendungen und Kommunikation. Betrachtet man die Historie von Microsoft, fällt es nicht schwer, das nachzuvollziehen. Allerdings hat Microsoft die Plattform über Jahre entwicklet was dazu geführt hat, dass viel Dinge nicht intuitiv und schwer zu managen sind. Dazu kommt, dass Microsoft munter Dinge ändert und der Systemadministrator regelmäßig einen Heulkrampf bekommt, weil es "gestern doch noch ging".

Im Aufbau und als CTO von dem neuen [Assekuradeur für Tierversicherungen Cleo & You](https://www.cleos.de){:target="_blank"} habe ich den Job des Systemadministrators initial übernommen. Genauso wie bei der Einrichtung der Office Infrastruktur von [You Are We](https://youarewe.eu){:target="_blank"}, bei der ich als IT Consultant tätig bin.

## Hilfe ist notwendig

Initial haben mir die [tollen Leute von XAAS](https://www.xaas-it.com){:target="_blank"} wieder (wie auch schon 2019 bei sum.cumo) geholfen, die grundlegenden Dinge einzurichten und zu konfigurieren (vielen Dank Philip ;-)). Allerdings habe ich nicht mehr auf dem Zettel gehabt, wie ich folgende Anforderung umsetzen kann:

* Eine Verteilerliste für eine E-Mail Adresse stoerung@cleos.de
* Die E-Mail Adresse gibt es noch nicht und soll kein gemeinsames Postfach sein
* Es sollen Empfänger eingetragen werden, die nicht in unserem cleos.de MS 365 Tenant sind

Bevor ich mich asufraffen kann, durch die endlose Dokumentation von Microsofts Hilfeseiten zu wühlen, greife ich lieber auf ChatGPT 4 zurück. Und hier "werde ich geholfen". Es stellt sich heraus, dass, wenn man weiss wie, es ziemlich einfach ist. Ich lasse aber ChatGPT selbst sprechen.

## ChatGPT 4 weiss wie's geht

<strong>Prompt:</strong><i>Wie erstelle ich einen E-Mail Verteiler im Microsoft 365 Admin Center?</i>

<strong>CGPT:</strong>Das Erstellen eines E-Mail-Verteilers in Microsoft 365 (auch als Verteilerliste oder Kontaktgruppe bekannt) kann je nachdem, welches Tool oder welche Anwendung von Microsoft 365 Sie verwenden, unterschiedlich sein. Hier sind die Schritte für das Erstellen eines E-Mail-Verteilers im Microsoft 365 Admin Center:

1. Melden Sie sich beim Microsoft 365 Admin Center an.
2. Navigieren Sie zu "Gruppen" > "Aktive Gruppen".
3. Klicken Sie auf "Hinzufügen" oder "+ Neue Gruppe".
4. Wählen Sie "Verteilerliste" als Gruppentyp.
5. Füllen Sie die erforderlichen Informationen aus (Name, Beschreibung, E-Mail-Adresse usw.).
6. Klicken Sie auf "Weiter" und folgen Sie den weiteren Anweisungen.
7. Fügen Sie Mitglieder zur Gruppe hinzu, indem Sie ihre Namen oder E-Mail-Adressen in das entsprechende Feld eingeben.
8. Überprüfen Sie die Einstellungen und klicken Sie auf "Erstellen".

Sobald Ihre Verteilerliste erstellt ist, können Sie E-Mails an die Liste senden, indem Sie die E-Mail-Adresse der Liste in das "An" -Feld Ihrer E-Mail eingeben. Alle Mitglieder der Liste erhalten dann diese E-Mail.

Denken Sie daran, dass sich die Schritte oder die Benutzeroberfläche im Laufe der Zeit ändern können, abhängig von den Aktualisierungen, die Microsoft an Microsoft 365 oder Outlook vornimmt. Es ist daher immer eine gute Idee, die offizielle Dokumentation von Microsoft zu konsultieren, wenn Sie aktuelle Anweisungen suchen.

<strong>Prompt:</strong><i> Kann ich im Microsoft 365 Admin Center auch externe E-Mail Adressen zu einem Verteiler hinzufügen?</i>

<strong>CGPT:</strong>Im Microsoft 365 Admin Center können Sie nicht direkt externe E-Mail-Adressen zu einer Verteilerliste hinzufügen. Aber es gibt einen Workaround: Sie können für externe E-Mail-Adressen Kontakte in Ihrem Verzeichnis erstellen und diese Kontakte dann zu Ihrer Verteilerliste hinzufügen.

Hier sind die Schritte, um einen externen Kontakt im Microsoft 365 Admin Center hinzuzufügen und diesen dann zu einer Verteilerliste hinzuzufügen:

A. Externen Kontakt erstellen:

1. Melden Sie sich im Microsoft 365 Admin Center an.
2. Navigieren Sie zu "Benutzer" > "Kontakte".
3. Klicken Sie auf "+ Kontakt hinzufügen".
4. Füllen Sie die erforderlichen Felder aus, einschließlich der externen E-Mail-Adresse.
5. Klicken Sie auf "Hinzufügen", wenn Sie fertig sind.

B. Kontakt zu einer Verteilerliste hinzufügen:

1. Gehen Sie zurück zur Hauptseite des Admin Centers.
2. Navigieren Sie zu "Gruppen" > "Aktive Gruppen".
3. Finden und klicken Sie auf die Verteilerliste, zu der Sie den Kontakt hinzufügen möchten.
4. Wählen Sie im linken Menü "Mitglieder" und dann "Mitglied hinzufügen".
5. Suchen Sie den zuvor erstellten externen Kontakt und fügen Sie ihn der Liste hinzu.

Jetzt sollte die externe E-Mail-Adresse als Teil der Verteilerliste funktionieren und E-Mails erhalten, die an diese Liste gesendet werden.

Es ist wichtig zu beachten, dass beim Hinzufügen externer E-Mail-Adressen zu einer Verteilerliste Datenschutz- und Zustimmungsaspekte zu berücksichtigen sind. Sie sollten sicherstellen, dass Sie die Erlaubnis der Personen haben, bevor Sie ihre E-Mail-Adressen zu Verteilerlisten hinzufügen.

## Hat geklappt!

In MS 365 war für mich nicht ersichtlich, wie ich diese Verteilerliste einrichten muß. Dank ChatGPT 4 habe ich es dann sehr einfach tun können. Möge es auch anderen helfen ...

## Zum Weiterlesen

* [Cleo & You GmbH](https://www.cleos.de){:target="_blank"}
* [You Are We GmbH](https://www.youarewe.eu){:target="_blank"}
* [XAAS](https://www.xaas-it.com){:target="_blank"}
* [Erstellen von Verteilergruppen im Microsoft 365 Admin Center](https://learn.microsoft.com/de-de/microsoft-365/admin/setup/create-distribution-lists?view=o365-worldwide){:target="_blank"}
* [ChatGPT](https://chat.openai.com){:target="_blank"}
