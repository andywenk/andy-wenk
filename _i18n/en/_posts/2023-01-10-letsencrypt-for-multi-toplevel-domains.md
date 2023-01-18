---
layout: post
title: Letsencrypt for Multi Toplevel Domains on the same server
date: 2023-01-10 10:00:00
description: Using letsencrypt for SSL certified domains is the way to go. You can use it also for multi toplevel domains on the same server.
categories: work
tags: software-design development 
---

<img src="/assets/images/letsencrypt.png" />

I started to set up my new project [Avasthana](https://www.avasthana.org){:target="_blank"} on my little [Hetzner Cloud Ubuntu 20 box](https://www.hetzner.com/cloud){:target="_blank"}. I registered the following domains:

* avasthana.com
* avasthana.org
* avasthana.de

Now on that machine, there is already the [KRX URL shortener](https://www.krx.pw/){:target="_blank"} running with a [letsencrypt SSL certificate](https://letsencrypt.org/){:target="_blank"}. I was wondering how I can use more certificates. 

First I was looking again to the [letsencrypt documentation](https://letsencrypt.org/getting-started/){:target="_blank"} and there it says one should use the [Certbot tool](https://certbot.eff.org/). At the respective page you choose which webserver and which OS you are using:

<img src="/assets/images/certbot.png" />

For Nginx and Linux Ubuntu 20 you will be forwarded to [this documentation page](https://certbot.eff.org/instructions?ws=nginx&os=ubuntufocal){:target="_blank"}. 

You need to run the `certbot commands` with `root privileges` and then it's really super simple (assuming you already used letsencrypt before on that machine).

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

So `certbot` is detecting, that I already have created a certificate and furthermore also that I have a Nginx configuration for that domain name. Awesome and super simple. 

After the steps above you need to check and reload the Nginx config:

```
user@the-box:~$ sudo service nginx configtest
 * Testing nginx configuration
```

And finally check, if the automatic certificate update is working:

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

Well, everything seems to work and I am now good to go. The .de Domain is not available yet but I will include it also later.

<img src="/assets/images/avasthana.com.png" />
<img src="/assets/images/www.avasthana.com.png" />
<img src="/assets/images/avasthana.org.png" />
<img src="/assets/images/www.avasthana.org.png" />


