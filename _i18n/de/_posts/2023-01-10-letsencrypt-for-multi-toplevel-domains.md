---
layout: post
title: Letsencrypt for Multi Toplevel Domains on the same server
date: 2023-01-10 10:00:00
description: Die Verwendung von letsencrypt für SSL-zertifizierte Domains ist der richtige Weg. Du kannst es auch für mehrere Toplevel-Domains auf demselben Server verwenden.
categories: work
tags: software-design development 
---

<img src="/assets/images/letsencrypt.png" />

Ich habe begonnen, mein neues Projekt [Avasthana](https://www.avasthana.org){:target="_blank"} auf meine kleine [Hetzner Cloud Ubuntu 20 box](https://www.hetzner.com/cloud){:target="_blank"} zu legen. Ich habe die folgenden Domains registriert:

* avasthana.com
* avasthana.org
* avasthana.de

Auf diesem Rechner läuft bereits der [KRX URL shortener](https://www.krx.pw/){:target="_blank"} mit einem [letsencrypt SSL-Zertifikat](https://letsencrypt.org/){:target="_blank"}. Ich habe mich gefragt, wie ich weitere Zertifikate verwenden kann. 

Zuerst habe ich wieder in der [letsencrypt-Dokumentation](https://letsencrypt.org/getting-started/){:target="_blank"} nachgeschaut und dort steht, dass man das [Certbot-Tool](https://certbot.eff.org/) verwenden soll. Auf der entsprechenden Seite wählt man aus, welchen Webserver und welches OS man benutzt:

<img src="/assets/images/certbot.png" />

Für Nginx und Linux Ubuntu 20 wirst du auf [diese Dokumentationsseite](https://certbot.eff.org/instructions?ws=nginx&os=ubuntufocal){:target="_blank"} weitergeleitet. 

Du musst die `certbot-Befehle` mit `root-Privilegien` ausführen und dann ist es wirklich super einfach (vorausgesetzt, du hast letsencrypt schon vorher auf diesem Rechner benutzt).

```
user@the-box:~$ sudo certbot --nginx
Saving debug log to /var/log/letsencrypt/letsencrypt.log

Which names would you like to activate HTTPS for?
We recommend selecting either all domains, or all domains in a VirtualHost/server block.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
1: avasthana.org
2: avasthana.de
3: avasthana.com
4: www.avasthana.org
5: www.avasthana.de
6: www.avasthana.com
7: krx.pw
8: www.krx.pw
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Select the appropriate numbers separated by commas and/or spaces, or leave input
blank to select all options shown (Enter 'c' to cancel): 1 3 4 6

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
You have an existing certificate that contains a portion of the domains you
requested (ref: /etc/letsencrypt/renewal/avasthana.com.conf)

It contains these names: avasthana.com, www.avasthana.com

You requested these names for the new certificate: avasthana.org, avasthana.com,
www.avasthana.org, www.avasthana.com.

Do you want to expand and replace this existing certificate with the new
certificate?
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(E)xpand/(C)ancel: E
Renewing an existing certificate for avasthana.org and 3 more domains

Successfully received certificate.
Certificate is saved at: /etc/letsencrypt/live/avasthana.com/fullchain.pem
Key is saved at:         /etc/letsencrypt/live/avasthana.com/privkey.pem
This certificate expires on 2023-04-10.
These files will be updated when the certificate renews.
Certbot has set up a scheduled task to automatically renew this certificate in the background.

Deploying certificate
Successfully deployed certificate for avasthana.org to /etc/nginx/sites-enabled/avasthana
Successfully deployed certificate for avasthana.com to /etc/nginx/sites-enabled/avasthana
Successfully deployed certificate for www.avasthana.org to /etc/nginx/sites-enabled/avasthana
Successfully deployed certificate for www.avasthana.com to /etc/nginx/sites-enabled/avasthana
Your existing certificate has been successfully renewed, and the new certificate has been installed.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
If you like Certbot, please consider supporting our work by:
 * Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
 * Donating to EFF:                    https://eff.org/donate-le
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
```

`certbot` erkennt, dass ich bereits ein Zertifikat erstellt habe und auch, dass ich eine Nginx-Konfiguration für diesen Domainnamen habe. Großartig und super einfach. 

Nach den obigen Schritten brauchst du nur noch die Nginx-Konfiguration zu überprüfen und neu zu laden:

```
user@the-box:~$ sudo service nginx configtest
 * Testing nginx configuration
```

Und schließlich sollte man prüfen, ob die automatische Zertifikatsaktualisierung funktioniert:

```
user@the-box:~$ sudo certbot renew --dry-run
Saving debug log to /var/log/letsencrypt/letsencrypt.log

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Processing /etc/letsencrypt/renewal/avasthana.com.conf
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Simulating renewal of an existing certificate for avasthana.org and 3 more domains

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Processing /etc/letsencrypt/renewal/avasthana.org.conf
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Simulating renewal of an existing certificate for avasthana.org and www.avasthana.org

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Processing /etc/letsencrypt/renewal/krx.pw.conf
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Simulating renewal of an existing certificate for krx.pw and www.krx.pw

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Congratulations, all simulated renewals succeeded:
  /etc/letsencrypt/live/avasthana.com/fullchain.pem (success)
  /etc/letsencrypt/live/avasthana.org/fullchain.pem (success)
  /etc/letsencrypt/live/krx.pw/fullchain.pem (success)
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
```

Alles scheint zu funktionieren und ich bin jetzt startklar. Die .de-Domain ist noch nicht verfügbar, aber ich werde sie auch später einbinden.

<img src="/assets/images/avasthana.com.png" />
<img src="/assets/images/www.avasthana.com.png" />
<img src="/assets/images/avasthana.org.png" />
<img src="/assets/images/www.avasthana.org.png" />


