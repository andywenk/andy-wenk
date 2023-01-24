---
layout: post
title: Das LastPass Disaster
date: 2022-12-29 10:00:00
description: 
categories: security
tags: privacy security
---

<img src="/assets/images/last-pass.png" />

Der erste Passwort-Manager den ich benutzt habe war damals LastPass. Mir war klar, dass ich alle meine Passwörter in einem Tool verwalten muss das sie sicher speichert. Vor allem aber war mir klar, dass ich starke Passwörter brauche. Und ich darf sie nicht wissen oder mir merken können. 

Ich bin vor Jahren zu 1Password gewechselt, weil es die 1Password-App gab und die Passwörter nicht nur in der Cloud gespeichert werden. Es war zwar nervig sie immer zu synchronisieren, aber das war ein Kompromiss den ich bereit war zu akzeptieren. Jetzt nutze ich den Family-Plan und synchronisiere die Passwörter über 1password.com. 

Sicherheit ist eine extrem wichtige Sache wenn man im www surft. Ich versuche immer wieder die Best-Practice zu erklären, die man in jeder Situation benutzen sollte. Vor allem, wenn ich mit meinen Kindern und meiner Frau spreche und ich bin froh, dass sie jetzt 1Password nutzen. Du keannst in meinem Post [Strategie für sichere Anmeldedaten](/security/2020/01/27/strategy-to-safely-credentials-for-your-accounts.html) nachlesen, wie meine Strategie für die Nutzung von 1Password aussieht. Und über das Thema Daten habe ich in einen Post [_Datenwahnsinn_](/it/2022/10/11/data-madness.html) geschrieben in dem ich auch einige Sicherheitsaspekte behandle.

Wenn man besser verstehen will, was bei LastPass passiert ist empfehle ich die Lektüre des Artikel [The LastPass disclosure of leaked password vaults is being torn apart by security experts] (https://www.theverge.com/2022/12/28/23529547/lastpass-vault-breach-disclosure-encryption-cybersecurity-rebuttal). Er zeigt all die schlimmen Dinge die passiert sind. Aber vor allem und leider hat das Unternehmen seine Kunden in einem Gefühl der Sicherheit gelassen das sehr gefährlich ist. Die App warnt z.B. nicht, wenn man sich mit einem unsicheren Passwort anmeldet das kürzer als 12 Zeichen ist. Ausserdem sind die Metadaten nicht verschlüsselt gespeichert. 

## Meine Bitte

Bitte folge immer diesen einfachen Regeln zum Schutz deiner Daten:

* Verwende niemals ein Passwort zweimal
* Verwenden einen vertrauenswürdigen Passwort-Manager
* Lasse den Passwort-Manager die Passwörter mit mindestens 21 Zeichen Länge für dich erstellen
* Verwenden immer 2FA (2 Faktor Authentifizierung) - wirklich immer!

Auf diese Weise kann man 90% des Desasters vermeiden das mit LastPass passiert ist.

<span style="font-size: 0.7em">Screenshot von: [https://www.lastpass.com/](https://www.lastpass.com/)</span>
