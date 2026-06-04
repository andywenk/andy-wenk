---
layout: post
title: Backblaze Sync with rclone
date: 2026-06-04 10:00:00
description: Why I stopped syncing my Backblaze cloud backups with Transmit and switched to rclone – plus a small Bash script.
categories: tech
tags: backup
---

![Backblaze Sync with rclone](/assets/images/backblaze-sync-with-rclone.png)

Besides a lot of music, various projects and above all the world of [Cleo & You](https://www.cleos.de){:target="_blank"}, I occasionally find the time to write a bit of code. It's fun – and honestly, with the support of Claude Code or other tools like Codex, it keeps getting easier. But at the end of the day, whoever instructs Claude (or, as the saying goes, writes a prompt) still has to know exactly what they want to achieve and how clean software actually works.

Naturally, I host my data in the cloud as well. To keep things from getting too expensive – for example with AWS S3 or other providers – I went with Backblaze from the US. Together with the small tool Transmit on the Mac, syncing the data is easy.

While doing so, I ran into one thing: why on earth does Transmit upload the data at 3 KB per second – and sometimes only 15 or 20 KB per second? At that rate it would almost be faster to ship a hard drive to the US and tell them to please dump the data into my bucket. So I decided to do the whole thing with rclone.

The background: when you upload lots of tiny files with a tool like Transmit, an API request has to be fired off every single time. Authenticate every time, then upload one mini file. rclone follows a different concept here – and that makes the implementation far more pleasant.

With Claude's support – I call him Jean-Claude, by the way – a Bash script tailored to my requirements then tumbled out. Tested, and of course released under the lovely Apache 2.0 license. You can find the repo here on Codeberg:

[https://codeberg.org/andywenk/b2-upload](https://codeberg.org/andywenk/b2-upload){:target="_blank"}

Maybe one or two of you will find the little script useful.
