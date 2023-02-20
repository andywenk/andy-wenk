---
layout: post
title: Tensorflow auf dem Mac M1/2
date: 2023-02-20 10:00:00
description: Es ist nicht ganz einfach tensorflow auf einem Mac OS mit einem arm64 Prozessor zum Laufen zu bekommen. Mein kleines Install-Script soll helfen. 
categories: work
tags: AI
---

![Tensorflow Guy](/assets/images/tensorflow-guy.png)

## Tensorflow auf dem Mac mit einem arm64 Prozessor

Kürzlich habe ich ein paar einfache Python Scripts angesehen, um mit TensorFlow zu spielen. [TensorFlow](https://www.tensorflow.org/){:target='"_blank"} ist eine von Google erstellte Software, mit der Machine Learning Modelle erstellt werden können. Es gibt für verschiedene Programmiersprachen Libraries. Diese werden benötigt, um die Modelle anzuwenden. Dabei ist es gut zu wissen, dass es bereits fertige Modelle gibt, die heruntergeladen und genutzt werden können.

Natürlich wollte ich Ruby nutzen. Allerdings bin ich auf ziemlich hohe Hürden gestoßen. Da im Machine Learning Umfeld Python die am häufigsten genutzte Sprache ist (nicht zuletzt wegen der hervorragenden mathematischen Libraries), habe ich also mit Python weiter gemacht. Well ... auch hier gab es Probleme, bis ich verstanden habe, dass der M1 Prozessor auf meinem MacBook der Grund des Übels ist.

Nach diversen Stunden der Recherche bin ich dann so langsam auf die richtigen Ressourcen gestoßen. Diverse Anleitungen haben nicht ganz geholfen, aber schließlich hat Miniconda dann den Trick gebracht, um alles zum Laufen zu bekommen. 

Hinter [Miniconda](https://docs.conda.io/en/latest/miniconda.html){:target="_blank"} verbirgt sich [Conda](https://docs.conda.io/projects/conda/en/stable/){:target="_blank"}. Das ist ein Open-Source-Paketverwaltungssystem und eine Umgebungsverwaltung für diverse Programmiersprachen wie Python, R, Ruby, Lua, Scala, Java, JavaScript, C/ C++ und sogar Fortran (wer das noch nutzt?). Miniconda ist die kleine Schwester der im Python und ML Umfeld weitverbreiteten Entwicklungsumgebung [Anaconda](https://anaconda.org){:target="_blank"}. Eben ohne schi-schi, sondern nur auf der Kommandozeile nutzbar. Wer meinen anderen Posts gefolgt ist weiß, dass ich am liebsten alles per CLI mache! Auf der Projekt-Website liest man:

> Miniconda ist ein freies minimales Installationsprogramm für conda. Es ist eine kleine Bootstrap-Version von Anaconda, die nur conda, Python, die Pakete, von denen sie abhängen, und eine kleine Anzahl von anderen nützlichen Paketen, einschließlich pip, zlib und ein paar andere, enthält. Verwenden Sie den Befehl conda install, um 720+ zusätzliche conda-Pakete aus dem Anaconda-Repository zu installieren.

Also, genau nach meinem Geschmack.

## Das Install-Script

Das Script `install-miniconda-tensorflow-mac-arm64.sh` ist in einem meiner [Code-Ropositories auf Codeberg](https://codeberg.org/andywenk/tensorflow-mac-arm64){:target="_blank"} zu finden. Letztlich ist es wirklich nur ein einfaches Shell-Script, um dem Nutzer die Last zu nehmen, sich alles mühsam zusammen suchen zu müssen. Aktuell sind die Versionen der Pakete `tensorflow-macos` auf `2.9` und von `tensorflow-metal` auf `0.5` festgetackert. Sollen neuer Versionen genutzt werden und es diese gibt, müssen die Versionen entsprechend angepasst werden. Ich habe mir gespart, diese abzufragen (sollte ich aber ev. noch nachholen).

Happy coding!

## Zum Weiterlesen

* [Get started with tensorflow-metal](https://developer.apple.com/metal/tensorflow-plugin/){:target="_blank"} - Mac OS M1 Tensorflow
* [Mask R-CNN](https://modelzoo.co/model/mask-r-cnn-keras){:target="_blank"} - Beispiel Tensorflow Anwendung
* [Model Garden for TensorFlow](https://github.com/tensorflow/models){:target="_blank"} - Pretrained Models
* [TensorFlow Hub](https://tfhub.dev/){:target="_blank"} - Pretrained Models