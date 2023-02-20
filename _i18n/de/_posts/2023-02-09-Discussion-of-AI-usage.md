---
layout: post
title: Eine Diskussion über die Nutzung von AI
date: 2023-02-09 10:00:00
description: Wie sollten wir AI und KI einsetzen und wie sinnvolle und vertrauenswürdig ist es?
categories: work
tags: AI
---

![Forest](/assets/images/dali-ai.png)

## ML, AI, KI - wir werden überflutet

Kaum ein anderes Thema als Artificial Intelligence bzw. Künstliche Intelligenz wird momentan so häufig auf diversen Social-Media-Plattformen besprochen. Auch mich interessiert das extrem und natürlich "spiele" ich mit den Tools herum. Es gibt nicht nur [ChatGPT](https://chat.openai.com){:target="\_blank"} (wobei es das bekannteste ist) für die Generierung von Text, sondern z.B. auch [DreamStudio](https://beta.dreamstudio.ai){:target="\_blank"} für die Generierung von Bildern auf der Grundlage einer Beschreibung in Textform. Das Bild oben habe ich beispielsweise mit folgender Anweisung in Dreamstudio _"erträumen lassen"_:

![Dreamstudio Dali AI](/assets/images/dreamstudio-dali-ai.png)

Zugegeben, das ist schon nicht schlecht und das Herumspielen macht Spaß. Alle weiteren Bilder in diesem Post (außer die AI Grafik) stammen ebenfalls aus Dreamstudio. 

Gleichzeitig habe ich ChatGPT folgende Anweisung gegeben, um einen Text für diesen Artikel zu erstellen:

![ChatGPT Artikel Text](/assets/images/chatgpt-artikel-text.png)

Heraus kam das hier:

> _Künstliche Intelligenz (KI) hat in den letzten Jahren eine explosive Entwicklung durchgemacht und hat sich mittlerweile auch im Bereich Corporate Learning etabliert. Unternehmen erkennen immer mehr den Nutzen von KI-Technologien, um die Schulung und Entwicklung ihrer Mitarbeiter effektiver und personalisierter zu gestalten._
>
> _Ein gutes Beispiel hierfür ist die Verwendung von Chatbots wie ChatGPT. ChatGPT kann Mitarbeiter interaktiv durch Schulungen führen und ihnen personalisierte Empfehlungen und Lernressourcen bereitstellen. Dies kann nicht nur Zeit und Kosten sparen, sondern auch zu einem besseren Lernfortschritt und einer höheren Motivation beitragen._
>
> _Es ist jedoch wichtig zu beachten, dass KI-Technologien auch mit einigen Gefahren verbunden sind. Eine der größten Herausforderungen besteht darin, dass KI-Systeme nur so gut sind wie die Daten, auf denen sie trainiert werden. Wenn die Daten unvollständig oder verzerrt sind, kann dies dazu führen, dass KI-Systeme diskriminierende oder falsche Entscheidungen treffen._
>
> _Außerdem besteht die Gefahr, dass KI-Systeme den menschlichen Arbeitsplatz beeinträchtigen und zu Arbeitslosigkeit führen können, wenn sie bestimmte Aufgaben automatisieren. Es ist daher wichtig, KI-Systeme verantwortungsvoll einzusetzen und sicherzustellen, dass sie den Menschen und nicht umgekehrt unterstützen._
>
> _Zusammenfassend kann gesagt werden, dass KI im Bereich Corporate Learning ein großes Potenzial hat, um Schulungen und Entwicklungsmöglichkeiten für Mitarbeiter effektiver und personalisierter zu gestalten. Um die Vorteile von KI vollständig auszuschöpfen, müssen jedoch die Gefahren sorgfältig berücksichtigt werden._
>
> <span style="font-size: 0.7em">**DISCLAIMER: Text erstellt mit ChatGPT**</span>

Hier wird es problematisch. Denn ich bin Laie in Bezug auf Corporate Learning und habe keine Ahnung, ob die Aussagen in diesem Artikel korrekt sind. Ich habe dieses Beispiel mit Hinblick auf Corporate Learning ganz bewusst gewählt. Dazu komme ich später. Vorab möchte ich aber erklärende Information zu den Begriffen Machine Learning (ML), Artificial Intelligence (AI) und Deeplearning geben.

**Update:** [Johannes Starke](https://mastodon.world/@JohannesStarke@norden.social){:target="_blank"} (siehe unten) hat sich den Text, dankenswerterweise, angesehen und ist zu folgendem, vernichtendem Urteil gelangt:

> Der von ChatGPT erzeugte Absatz ist wie erwartet völlig banal. Die "Vorteile" sind so generisch, dass sie auf fast jedes Lernformat/Technologie angewendet werden. Und die Aussage, dass personalisierte Lernressourcen BEREITGESTELLT werden können, zweifle ich an.

## Begriffserklärungen

Es herrscht oft Unklarheit darüber, was AI und ML eigentlich ist. Im folgenden Schaubild zeige ich die einzelnen Bereiche und deren Zusammenhänge:

![AI Info](/assets/images/ai-info.png)

Aus der Grafik kann gelesen werden:

**AI** ist der Oberbegriff für alles, was mit Artificial Intelligence (Künstlicher Intelligenz) zu tun hat. Einer der größten Teilbereiche ist **Machine Learning**, wobei es hier zwei Unterbereiche für das _Lernen_ gibt: Das **überwachte** (supervised) und das **unüberwachte** (unsupervised) **Lernen**. Im Bereich des überwachten Lernens sind die Bereiche **Neuronale Netze** und das **Deeplearning** beheimatet.

Nachfolgend sollen die Begriffe näher definiert werden.

### Definition AI

![AI Dali](/assets/images/ai-dali.png)

_Künstliche Intelligenz (KI) ist die Nachbildung menschlicher Analyse- und/oder Entscheidungsfindungsfähigkeiten._

<span style="font-size: 0.7em">[Steven Finlay, _Artificial Intelligence and Machine Learning for business_, S.10, Relativistic Books, 2017](https://www.research.lancs.ac.uk/portal/en/people/steven-finlay%288b2e6411-791a-4e10-99b1-3d92839d57fc%29.html){:target="_blank"}</span>

_Künstliche Intelligenz (KI) bezeichnet die Entwicklung von Computern und Robotern, die in der Lage sind, sich so zu verhalten, dass sie die menschlichen Fähigkeiten sowohl nachahmen als auch übertreffen. KI-gestützte Programme können Daten analysieren und kontextualisieren, um Informationen bereitzustellen oder automatisch Aktionen ohne menschliches Zutun auszulösen._

<span style="font-size: 0.7em">[Columbia Engineering, Artificial Intelligence (AI) vs. Machine Learning](https://ai.engineering.columbia.edu/ai-vs-machine-learning/){:target="_blank"}</span>

### Definition Machine Learning

![AI Dali](/assets/images/ml-dali.png)

_Unter maschinellem Lernen versteht man die Verwendung mathematischer Verfahren (Algorithmen) zur Analyse von Daten. Ziel ist es, nützliche Muster (Beziehungen oder Korrelationen) zwischen verschiedenen Datenelementen zu entdecken. Sobald die Beziehungen identifiziert sind, können diese genutzt werden, um Rückschlüsse auf das Verhalten neuer Fälle zu ziehen, wenn diese auftreten. Im Wesentlichen ist dies analog zur Art und Weise, wie Menschen lernen._

<span style="font-size: 0.7em">[Steven Finlay, _Artificial Intelligence and Machine Learning for business_, S.5, Relativistic Books, 2017](https://www.research.lancs.ac.uk/portal/en/people/steven-finlay%288b2e6411-791a-4e10-99b1-3d92839d57fc%29.html){:target="_blank"}</span>

_Maschinelles Lernen ist ein Weg zur künstlichen Intelligenz. Diese Unterkategorie der KI nutzt Algorithmen, um automatisch Erkenntnisse zu gewinnen und Muster aus Daten zu erkennen, und wendet dieses Lernen an, um immer bessere Entscheidungen zu treffen._

<span style="font-size: 0.7em">[Columbia Engineering, Artificial Intelligence (AI) vs. Machine Learning](https://ai.engineering.columbia.edu/ai-vs-machine-learning/){:target="_blank"}</span>

### Überwachtes- und unüberwachtes Lernen

#### Definition überwachtes Lernen

_Überwachtes Lernen, auch bekannt als überwachtes maschinelles Lernen, ist eine Unterkategorie des maschinellen Lernens und der künstlichen Intelligenz. Es zeichnet sich dadurch aus, dass Datensätze, die mit einem Label (Markierung) versehen sind, verwendet werden, um Algorithmen zu trainieren, die Daten klassifizieren oder Ergebnisse genau vorhersagen können._

<span style="font-size: 0.7em">[What is supervised learning? IBM](https://www.ibm.com/topics/supervised-learning){:target="_blank"}</span>

#### Definition unüberwachtes Lernen

_Beim unüberwachten Lernen, auch bekannt als unüberwachtes maschinelles Lernen, werden Algorithmen des maschinellen Lernens verwendet, um Datensätze, denen kein Label (Markierung) zugeordnet wurde, zu analysieren und zu gruppieren. Diese Algorithmen entdecken versteckte Muster oder Datengruppierungen, ohne dass es eines menschlichen Eingriffs bedarf. Die Fähigkeit, Ähnlichkeiten und Unterschiede in Informationen zu erkennen, macht es zur idealen Lösung für die explorative Datenanalyse, Cross-Selling-Strategien, Kundensegmentierung und Bilderkennung._

<span style="font-size: 0.7em">[What is unsupervised learning? IBM](https://www.ibm.com/topics/unsupervised-learning){:target="_blank"}</span>

#### Unterschiede

Der Unterschied zwischen überwachtem und unüberwachtem Lernen ist die Datengrundlage, die für das Lernen herangezogen werden. Beim überwachten Lernen werden dem Algorithmus bzw. dem Modell "gelabelte" Daten zum Lernen als Grundlage gegeben. Der Input ist entsprechend bekannt und der richtige Output ebenso. Über die Zeit hinweg lernt die Maschine mit ihrem Programm, was richtig und falsch ist.

Beim unüberwachten Lernen ist der Input und Output nicht bekannt. Die Methode wird für drei Bereiche herangezogen:

##### Clustering

Es werden ungelabelte Daten auf Grund ihrer Ähnlichkeiten und Unterschiede geclustert.

##### Association Rules (Assoziationsregeln)

Eine auf Regeln basierte Methode, um Beziehungen zwischen Daten in einer vorgegebenen Datenmenge zu finden.

##### Dimensionality reduction (Reduzierung der Dimensionalität)

Diese Methode wird genutzt, um die Datenmenge zu reduzieren, wenn die in ihr vorhandenen Daten zu viele unterschiedliche Eigenschaften haben oder die Dimensionen der Daten zu weit sind. Es wird oft im Pre-Processing der Daten innerhalb des Machine Learning genutzt, um die Effizienz zu steigern.

### Definition Neuronale Netze

![Neural Network Dali](/assets/images/neural-network-dali.png)

_Neuronale Netze, auch bekannt als künstliche neuronale Netze (ANN) oder simulierte neuronale Netze (SNN), sind ein Teilbereich des maschinellen Lernens und bilden das Herzstück von Deep-Learning-Algorithmen. Ihr Name und ihre Struktur sind vom menschlichen Gehirn inspiriert und ahmen die Art und Weise nach, wie biologische Neuronen einander Signale senden._

<span style="font-size: 0.7em">[What is a neural network? IBM](https://www.ibm.com/topics/neural-networks){:target="_blank"}</span>

_Ein künstliches neuronales Netz ist ein Computerprogramm, bei dem bestimmte vermutete organisatorische Prinzipien eines echten neuronalen Netzes (wie dem menschlichen Gehirn) als Inspiration dienen._

<span style="font-size: 0.7em">[Jerry Kaplan, _Künstliche Intelligenz - Eine Einführung_, S.45, mitp, 2017](https://www.mitp.de/IT-WEB/KI-Data-Science/Kuenstliche-Intelligenz-Eine-Einfuehrung.html){:target="_blank"}</span>

### Definition Deep Learning

![Neural Network Dali](/assets/images/deeplearning-dali.png)

_Deep Learning ist ein Teilbereich des maschinellen Lernens, bei dem es sich im Wesentlichen um ein neuronales Netz mit drei oder mehr Schichten handelt. Diese neuronalen Netze versuchen, das Verhalten des menschlichen Gehirns zu simulieren - auch wenn sie weit davon entfernt sind, dessen Fähigkeiten zu erreichen - und ermöglichen es, aus großen Datenmengen zu "lernen". Während ein neuronales Netz mit einer einzigen Schicht noch ungefähre Vorhersagen machen kann, können zusätzliche versteckte Schichten helfen, die Genauigkeit zu optimieren und zu verfeinern._

<span style="font-size: 0.7em">[What is deep learning? IBM](https://www.ibm.com/topics/deep-learning){:target="_blank"}</span>

## Wo stehen wir?

Die obigen Begriffserklärungen sind ziemlich akademisch und nicht emotional. Das ist auch wichtig und bewusst so geschrieben. Denn was ist Arificial Intelligence nicht? AI oder KI hat noch lange nichts mit Intelligenz im Sinne der Intelligenz eines Menschen zu tun. Natürlich dient die Funktionalität unseres Gehirns als Blaupause oder Vorlage für das Erstellen von "intelligenten Algorithmen". Beim überwachten und unüberwachten Lernen wird sogar von der Fähigkeit des Lernens gesprochen und gesagt, dass die Prinzipien dem menschlichen Lernen ähneln. Trotzdem fehlen der Maschine noch wesentliche Merkmale eines Menschen.

Eines ist Intuition oder das Bauchgefühl. Wir sind in der Lage zu fühlen, ob etwas sein kann oder nicht. Wir sind in der Lage komplexe Zusammenhänge zu durchdenken und dann eine Schlussfolgerung zu treffen, ob etwas richtig oder falsch ist. Das kann (heute) eine Maschine oder ein Programm, welches einen Machine Learning Algorithmus nutzt, schlichtweg nicht.

Das erste Aufkommen des Begriffs "Künstliche Intelligenz" wird in der Fachliteratur John McCarthy zugeschrieben, der 1955 gesagt hat, dass es darum gehe "Maschinen zu entwickeln, die sich _verhalten_, als _verfügten_ sie über _menschliche Intelligenz_" (Kaplan). Außerdem wurde in den 1950 Jahren das Konzept der "Artifical Neurons" diskutiert. Mitte 1980 wurde dann vorgeschlagen, mehrere Artifical Neurons zu verlinken, um komplexe Probleme zu lösen (Finlay). Daraus entstanden schließlich die Konzepte der Neuronalen Netze und Deeplearning.

Ich denke, es wird aufgrund dieser Erläuterungen klar, dass wir nicht von Intelligenz im Sinne der menschlichen Intelligenz sprechen können, sondern einer Simulation deren. Wir brauchen also erst mal keine Angst haben, dass die Maschinen uns unterjochen werden.
## Was bedeutet das für die Nutzung von Künstlicher Intelligenz?

### Von einem AI-Tool hergestellte Medien

Ich habe vor kurzem eine hervorragende Episode aus dem [Podcast Lernlust](https://lernlust-podcast.podigee.io/41-ki_und_wir){:target="\_blank"} gehört. Der Titel _Die KI und wir..._ war vielversprechend und der Inhalt hat nicht enttäuscht. [Susanne Dube](https://www.linkedin.com/in/susanne-dube/){:target="_blank"}, [Johannes Starke](https://www.linkedin.com/in/johannes-starke/){:target="_blank"} und [Axel Lindhorst](https://www.linkedin.com/in/axel-lindhorst/){:target="_blank"} haben darüber gesprochen, was KI und im Besonderen ChatGPT mit uns macht. Aus dem Podcast gehen im ersten Teil drei Perspektiven hervor:

* ChatGPT und andere Tools sind spannend und wir müssen und sollten uns damit beschäftigen. Wir wissen allerdings noch sehr wenig.
* Wir müssen die Tools und den sinnvollen Einsatz derer ergründen und entsprechend einsetzen
* Es muss ersichtlich sein, ob ein Text, ein Bild, eine Audio-Datei oder andere digitale Medien mit einem AI-Tool erstellt wurden

Ich folge allen drei Punkten ausnahmslos. Gerade der letzte Punkt ist aus meiner Sicht notwendig, um einen Indikator und die Aufforderung für eine sehr genaue Prüfung der Medien zu erhalten. Johannes Starke geht in diesem Punkt so weit, dass er von einem Tool wie ChatGPT geschriebene Text erst gar nicht lesen möchte.

Was wir allerdings auch nicht tun sollten, ist das komplette Ablehnen dieser Tools und Möglichkeiten. Wie ich oben geschrieben habe, ist "Artificial Intelligence" schon seit den 1950 Jahren ein Thema im Bereiche der Computer Science. Der Wunsch, eine Maschine selbstständig Dinge machen zu lassen, in dem es sich der komplexen Strukturen unseres Gehirns als Vorlage bedient, ist spannend und kann uns in unterschiedlichsten Bereichen extrem helfen. Dabei denke ich an Gebiete wie die medizinische Forschung (z.B. Krebsforschung), geologischen und Klima-Modelle, Astronomie und viele andere Bereiche. Wir machen uns _die Maschine_ zu nutzen, um bessere Ergebnisse zu erhalten oder um Ergebnisse und Analysen überhaupt erst möglich zu machen.

Auf einer ganz persönlichen Basis habe ich selbst ChatGPT bereits als Ideengeber genutzt. Z.B. um Namen oder Claims für meine Consulting-Firma zu "brain stormen" (die Nähe zu Deeplearning ... ;-) ). Oder um Code-Schnipsel erstellen zu lassen.

Schlussendlich gilt es sich unter größter Sorgfalt, die neuen Technologien zunutze zu machen. Die Sorgfalt bezieht sich hier immer darauf, nicht ungeprüft Informationen oder _Output_ eines AI-Tools ungeprüft zu übernehmen.

## Übernehmen die Maschinen die Herrschaft?

![Isaac Asimov I Robot](/assets/images/i-robot.png)

Nein! Solange wir entsprechende Prüf-Mechanismen etablieren, nicht. [OpenAI](https://openai.com/){:target="_blank"}, die Erfinder von [ChatGPT](https://chat.openai.com/chat){:target="_blank"} und anderen AI-Tools haben [Ende Januar 2023 bekannt gegeben](https://openai.com/blog/new-ai-classifier-for-indicating-ai-written-text/){:target="_blank"}, dass sie an solchen Prüfmechanismen arbeiten und entsprechende Tools zur Verfügung stellen werden. Ein weiterer Artikel zu diesem Thema ist [A watermark for chatbots can expose text written by an AI](https://www.technologyreview.com/2023/01/27/1067338/a-watermark-for-chatbots-can-spot-text-written-by-an-ai/){:target="_blank"}.

Außerdem möchte ich noch einmal deutlich machen, dass es noch keine intelligente Maschine oder Programm gibt, dass ansatzweise der menschlichen Intelligenz entspricht. Das Ziel eine echte künstliche Intelligenz herstellen zu können, wird durch die Etablierung von Quantencomputer-Technologien zwar näher rücken, ist aber auch damit noch in weiter Zukunft - wenn überhaupt erreichbar.

Und vergessen wir nicht, dass [Isaac Asimov](https://de.wikipedia.org/wiki/Isaac_Asimov){:target="_blank"} bereits 1942 die [Robotergesetze](https://de.wikipedia.org/wiki/Robotergesetze){:target="_blank"} niedergeschrieben hat. Solange wir uns daran halten, kann uns nichts geschehen ;-):

0. Ein Roboter darf die Menschheit nicht verletzen oder durch Passivität zulassen, dass die Menschheit zu Schaden kommt.
1. Ein Roboter darf keinen Menschen verletzen oder durch Untätigkeit zu Schaden kommen lassen, außer er verstieße damit gegen das nullte Gesetz.
2. Ein Roboter muss den Befehlen der Menschen gehorchen – es sei denn, solche Befehle stehen im Widerspruch zum nullten oder ersten Gesetz.
3. Ein Roboter muss seine eigene Existenz schützen, solange sein Handeln nicht dem nullten, ersten oder zweiten Gesetz widerspricht.

## Zum Weiterlesen

Es gibt mittlerweile sehr viele Artikel, Posts und Beiträge im Netz. Ich spare mir hier eine Liste von Ressourcen zu erstellen, die wahrscheinlich an anderer Stelle bereits verlinkt wurden. Allerdings möchte ich auf eine kleine Anzahl von, aus meiner Sicht guten, Ressourcen verweisen.

[ChatGPT is fun, but not an author - Science.org (EN)](https://www.science.org/doi/10.1126/science.adg7879){:target="_blank"}. Guter und knapper Artikel, was ChatGPT NICHT ist.

[Neural Networks and Deep Learning - online book (EN)](http://neuralnetworksanddeeplearning.com/){:target="_blank"}. Ein wissenschaftliches Fachbuch um die grundlegenden Prinzipien  von Neuralen Netzen und Deep Learning zu verstehen.

[AI for everyone von Andrew NG](https://www.coursera.org/learn/ai-for-everyon){:target="_blank"}. Ein sehr guter und kostenloser Online-Kurs als Einstieg zum Thema AI von einer der berühmtesten Personen in der wissenschaftlichen Studie zu AI.