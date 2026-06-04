---
layout: post
title: Backblaze Sync mit rclone
date: 2026-06-04 10:00:00
description: Warum ich meine Cloud-Backups bei Backblaze nicht mehr mit Transmit, sondern mit rclone synchronisiere – und ein kleines Bash-Script dazu.
categories: tech
tags: backup
---

![Backblaze Sync mit rclone](/assets/images/backblaze-sync-with-rclone.png)

Neben viel Musik, Projekten und vor allem der Welt von [Cleo & You](https://www.cleos.de){:target="_blank"} komme ich ab und zu dazu, ein bisschen Code zu schreiben. Das macht Spaß – und ehrlich gesagt wird es mit der Unterstützung von Claude Code oder anderen Tools wie Codex immer einfacher. Aber am Ende des Tages muss derjenige, der Claude anweist (oder, wie es so schön heißt, einen Prompt schreibt), immer noch ganz genau wissen, was er erreichen möchte und wie saubere Software funktioniert.

Meine Daten hoste ich natürlich auch in der Cloud. Damit das Ganze nicht zu teuer wird – etwa bei AWS S3 oder anderen Anbietern –, habe ich mich für Backblaze aus den USA entschieden. Gemeinsam mit dem kleinen Tool Transmit auf dem Mac ist es dann leicht, die Daten zu synchronisieren.

Dabei bin ich auf einen Punkt gestoßen: Warum zur Hölle lädt Transmit die Daten mit 3 KB pro Sekunde hoch – teilweise auch mal mit 15 oder 20 KB pro Sekunde? Da wäre es ja fast schneller, eine Festplatte in die USA zu schicken und denen zu sagen, sie sollen die Daten bitte da und dort in meinen Bucket schmeißen. Deshalb habe ich mich entschieden, das Ganze mit rclone zu machen.

Der Hintergrund: Wenn man mit einem Tool wie Transmit viele kleinste Dateien hochlädt, muss jedes Mal ein API-Request angestoßen werden. Jedes Mal authentifizieren, dann eine Mini-Datei hochladen. rclone fährt hier ein anderes Konzept – und deshalb ist die Umsetzung deutlich angenehmer.

Mit Claudes Unterstützung – ich nenne ihn übrigens Jean-Claude – ist dann ein Bash-Script nach meinen Anforderungen herausgepurzelt. Getestet, und natürlich unter der schönen Apache-2.0-Lizenz. Das Repo findet ihr hier bei Codeberg:

[https://codeberg.org/andywenk/b2-upload](https://codeberg.org/andywenk/b2-upload){:target="_blank"}

Vielleicht findet der oder die eine oder andere das kleine Skript ja nützlich.
