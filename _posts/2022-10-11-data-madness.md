---
layout: post
title: Data Madness
date:   2022-10-11 17:30:00
description: Creating data is easy. Saving them securly and reliable is hard. Avoid duplicated data is almost impossible  
categories: IT
tags: data cloud
---

We all create data every day. Masses of data. I am not speaking about footprints when you surf the web or when you send short messages. I mean data created by intention. Documents. Photos. Videos. Audio.  These data need to be saved securly and reliable.

## Where to store the data?

This is the big question and it is hard to answer. The easiest way is always to use an external drive you plug into your computer. But these drives will break one day. So depending on the importance of your data - remember: your wife will kill you when you loose all photos from the early days of your kids - you should not use an external drive without another backup drive or a NAS Home Server. I personally don't like that hazzle. 

So the next thing is to use a cloud storage. There are many of them. The most common known is still Dropbox. Due to personal reasons, I don't like Dropbox. Another option is [Google Drive](https://drive.google.com/), [Microsoft Office365](g2g.to/tKhy) or [Apple's iCloud](https://www.icloud.com). The latter one is offering 1 TB of storage for all users in your family - up to 5 members - for 99.00 EUR per year. Not bad.

A bit more unknown for standard users is [AWS S3](g2g.to/FC16) or - my favourite - [Backblaze](https://www.backblaze.com). Now it starts to become interesting. AWS S3 is a simple cloud storage solution where you will be charged for storage and for traffic when up- or downloading your data. When you need to transfer data very often, it will be more expensive. 
Backblaze is offering the same but way cheaper. A friend of mine made me aware of the service and I am now using it for many years. 

## How to use a cloud storage service like Backblaze?

Basically it is trivial. You need to create an account and you need some helping software. You create an account e.g at [Backblaze](https://www.backblaze.com/b2/sign-up.html), set up your billing data and you are ready to go. Backblaze and AWS use the term "bucket" for logical storage areas. You can think of different drives. You can create as many buckets as you like. I leave the organisation to you. 

Accessing the data is possible via an CLI (command line interface) tool for people who are used to the command line. But what you really want is the intergation into your data explorer (Windows) or Finder (Mac OS X, Linux). As I am using Mac, I found [Mountain Duck](https://mountainduck.io/) to be a very good solution. You can get a 1 seat license for 39.00 USD and it's worth it. After installation you will be able to directly integrate the cloud storage of your choice - mine is Backblaze as mentioned above - in the Finder (Mac) or Explorer (Windows) or any Linux Distribution. 

I fou need a tool where you can access your data with various protocols (SSH, SFTP, WEBDAV ...) I recommend using [Cyberduck](https://cyberduck.io/) what is free or [Transmit](https://panic.com/transmit/) what will cost you 45.00 USD. There is also [FileZilla](https://filezilla-project.org/) as an alternative for Cyberduck. It is OpenSource and crossplatform suitable. 

You are now ready to go and can store your data as you like. Keep in mind that you will pay for storage space and transferred data at Backblaze. Use it wisely. If you need to access data regularly, you should go with a Google Drive or something similar and use Backblaze more as a mid- to longterm solution. 

### Minimize data size

If you want to archive data, you should think about compressing them. The simplest way is to create a directory with data, open Finder (Mac), mark it and open the context menu (right-click most probably) and choose "Compress". The operating system will now use a programm to create a ZIP file (in most cases) and compress the data inside. The compression rate is quite low. If you want to compress the data with a higher compression rate, there are many ways to do so. I like to do it on the command line and I use two different ways.

#### tar

`tar` is an archive format what has the ability to compress the archive in various different ways. To get an idea look at the *man page* with:

    ~ man tar
    TAR(1)                                                          General Commands Manual                                                         TAR(1)

    NAME
        tar – manipulate tape archives

    SYNOPSIS
        tar [bundled-flags ⟨args⟩] [⟨file⟩ | ⟨pattern⟩ ...]
        tar {-c} [options] [files | directories]
        tar {-r | -u} -f archive-file [options] [files | directories]
        tar {-t | -x} [options] [patterns]

    DESCRIPTION
        tar creates and manipulates streaming archive files.  This implementation can extract from tar, pax, cpio, zip, jar, ar, xar, rpm, 7-zip, and ISO
        9660 cdrom images and can create tar, pax, cpio, ar, zip, 7-zip, and shar archives.

To get a quick idea how to use it run the `help` command:

    ~  tar -h
    tar(bsdtar): manipulate archive files
    First option must be a mode specifier:
      -c Create  -r Add/Replace  -t List  -u Update  -x Extract
    Common Options:
      -b #  Use # 512-byte records per I/O block
      -f <filename>  Location of archive
      -v    Verbose
      -w    Interactive
    Create: tar -c [options] [<file> | <dir> | @<archive> | -C <dir> ]
      <file>, <dir>  add these items to archive
      -z, -j, -J, --lzma  Compress archive with gzip/bzip2/xz/lzma
      --format {ustar|pax|cpio|shar}  Select archive format
      --exclude <pattern>  Skip files that match pattern
      -C <dir>  Change to <dir> before processing remaining files
      @<archive>  Add entries from <archive> to output
    List: tar -t [options] [<patterns>]
      <patterns>  If specified, list only entries that match
    Extract: tar -x [options] [<patterns>]
      <patterns>  If specified, extract only entries that match
      -k    Keep (don't overwrite) existing files
      -m    Don't restore modification times
      -O    Write entries to stdout, don't restore to disk
      -p    Restore permissions (including ACLs, owner, file flags)
    bsdtar 3.5.1 - libarchive 3.5.1 zlib/1.2.11 liblzma/5.0.5 bz2lib/1.0.8

Now suppose you want to compress a directory with files in it called `images`. The compression algorithm you want to use is `gzip`. Simply run:

    ~ tar cfz images.tar.gz images

This will create the archive `images.tar.gz`. I you want to unzip the archive run:

    ~ tar xfz images.tar.gz images

This will extract all files and included directiories in the directory `images`.

#### 7z

Another method is to use a programm called [p7zip](https://github.com/jinfeihan57/p7zip). As this section is a bit more advanced I like to mention, that you are really good to go by using `tar`. If you want to experiment a bit read on.

The programm is not included in Mac OS so you need to install it. You will most probably already use [Homebrew](https://brew.sh/) to install software on your Mac. If not you should start now.

Install p7zip as usual with:

    ~ brew install p7zip

Be aware, that this is a wrapper around the program `7z`so you will not find `p7zip`:

    ~ which p7zip
    p7zip not found

Now have a quick look at the [GitHub README in the section how to use it](https://github.com/jinfeihan57/p7zip#usage). Then run it simply with:

    ~ 7z a images.7z images -m0=lz5 -mx10

This will create an `images.7z` archive with using the [`Lz5`](https://github.com/inikep/lizard) algorithm and a compression rate by `10`. This will take some time if the `images` directory is big. But it will compress it very good and you will receive even better results compared to using `tar`.

Here is a real world example. I have a very old storage directory with backups from the last years on an external USB-Drive called *HERMANN*. I wanted to archive it and so compressed it. The size of the directory is:

    ➜ HERMANN du -sch storage
    198G	storage
    198G	total

And here is the result after compressing:

    ➜ HERMANN 7z a storage.7z storage -m0=lz5 -mx10

    7-Zip [64] 17.04 : Copyright (c) 1999-2021 Igor Pavlov : 2017-08-28
    p7zip Version 17.04 (locale=utf8,Utf16=on,HugeFiles=on,64 bits,8 CPUs LE)

    Scanning the drive:
    22327 folders, 1742013 files, 206868519763 bytes (193 GiB)

    Creating archive: storage.7z

    Items to compress: 1764340


    Files read from disk: 1740063
    Archive size: 184095174838 bytes (172 GiB)
    Everything is Ok

It is not the biggest reduction but 20 GB are quite a lot still. And now I have only one file I can move to Backblaze and get rid of the USB-Drive. And if you read attentively you recognize that the numbers are differing a bit. I assume that some files could not be compressed and for this time I don't care.

## Speaking about security

Yes you never know! And yes your data are not secure, when you transfer them to a cloud storage. So what you can do is to encrypt them. For me personally, [Cryptomator](https://cryptomator.org/) is avery good and easy to use solution. Before you install the software consider to extend your filesystem with the usage of [FUSE](https://osxfuse.github.io/). Within Cryptomator you can choose to use WebDav or FUSE to mount the filesystem wirh your data. 

After you have installed the software and opened it you will now create a vault. Choose a good name for it because I recommend to create various vaults for different data storage scenarios. And choose or better let create a very strong password and store it in a safe place like [1Password](https://1password.com/) (I use this with my family), [LastPass](https://www.lastpass.com/) (I used it before) or [KeyPass](https://keepass.info/) (I never used it and it does not have a cloud integration). You should also create a recovery key and store it safely.

Cryptomator will create the vault and mount it in Finder. Now you can simply add files. When done close the vault in Cryptomator. The data structure of the vault in encrypted mode will look sth. like this:

    ➜  book-storage ll
    total 40
    drwxr-xr-x   8 andreaswenk  staff   256 Oct 14 23:47 .
    drwxr-x---+ 59 andreaswenk  staff  1888 Oct 14 23:47 ..
    -rw-r--r--   1 andreaswenk  staff   789 Oct 14 23:46 IMPORTANT.rtf
    drwxr-xr-x   3 andreaswenk  staff    96 Oct 14 23:46 d
    -rw-r--r--   1 andreaswenk  staff   329 Oct 14 23:46 masterkey.cryptomator
    -rw-r--r--   1 andreaswenk  staff   329 Oct 14 23:47 masterkey.cryptomator.EF6F3CA1.bkup
    -rw-r--r--   1 andreaswenk  staff   287 Oct 14 23:46 vault.cryptomator
    -rw-r--r--   1 andreaswenk  staff   287 Oct 14 23:46 vault.cryptomator.85DA6A92.bkup

You can now move the the whole directory (here book-storage) and move it to any cloud storage or drive you want. Without Cryptomator and the credentials you set, nobody will be able to decrypt your data. 

## Good to go

I discussed the topic data in this post. There are many more things to look at but the idea was to share my experiences with the data mess I produced over the last 30 years and how you can manage the data these days. And keep the one rule in mind: less data - less pain!


