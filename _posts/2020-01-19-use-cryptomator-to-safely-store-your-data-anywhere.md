---
layout: post
title: Use Cryptomator for your data
date: 2020-01-19 11:00:00
description: Use Cryptomator to safely store your data anywhere
categories: security
tags: privacy
---

<img src="/assets/images/cryptomator.png" />

While creating and collecting documents, images or any other data, there is the need to store these data in the cloud for backup reasons. There are many storage providers out there like [Google Drive](https://drive.google.com) or [Dropbox](https://www.dropbox.com/) which support integration into the operating systems file explorer like Finder on Mac or Windows Explorer on Windows. This is very comfortable. But one should keep in mind, that the data are not protect from being read by the company or by intelligence services.

Furthermore there are other services like [Backblaze](https://www.backblaze.com/) or [AWS S3 Glacier](https://aws.amazon.com/glacier/). Basically, there is the same issue with the privacy of our data.

The solution is to either use a service like [Spider Oak One Backup](https://spideroak.com/one/) or if it is necessary to keep the hand over the whole process a service or software, that runs on your local machine and encrypts your data. Here comes [Cryptomator](https://cryptomator.org/) into the ring.

Cryptomator offers the possibility to encrypt the data locally on the client - your computer. Therefor, Cryptomator will create local vaults protected by a password (I will write about secure passwords in one of the next pots). After the vault is being created it has to be opened by providing the vaults password. A local drive will be created and mounted. You can think of a external hard drive or an external computer or server. Now you can put files, documents, videos and everything else into this drive. If done, you simply close the vault in the Cryptomator software.

Now comes the good part. The data in the vault are encrypted using the [Advanced Encryption Standard - AES](https://en.wikipedia.org/wiki/Advanced_Encryption_Standard). That means, without knowing the password for the vault, it is *nearly* impossible to decrypt the data. Furthermore Cryptomator also uses [scrypt](https://en.wikipedia.org/wiki/Scrypt) to prevent brutforce attacks. If you want to dive deeper into the security and encryption concepts take a look into the [Security Architecture Documentation](https://docs.cryptomator.org/en/latest/security/architecture/).

As Cryptomator is open source, everything about the software is openly accessible. This is a sign, that you can trust the software and that there will be (with a very high chance) no backdoors or other possibilities for intruders.

## Step by step creation of a Cryptomator vault

##### 1. First of all, you need to download and install Cryptomator from [https://cryptomator.org/](https://cryptomator.org/) downloads. When done, install the software by following the installation instructions.

##### 2. After starting the software simply create the first vault by giving a name and a store place for the vault. 

<img src="/assets/images/cryptomator-1.png" />

##### 3. Set a strong password for the vault. 

<img src="/assets/images/cryptomator-2.png" />

##### 4. Then open the vault by providing the password. 

<img src="/assets/images/cryptomator-3.png" />

##### 5. Cryptomator will mount a drive where you now can put in your data. 

<img src="/assets/images/cryptomator-4.png" />

After you have done your work, simply close the vault in the Cryptomator software. What is left, is a structure of completely encrypted data. It looks like this:

<img src="/assets/images/cryptomator-5.png" />

## Storing the Cryptomator vault in the cloud

Now that the data are encrypted, the last step is to upload the data to the service of your choice. Because the data are completely encrypted, you can use any service you like - even Dropbox. I propose you choose the most inexpensive service you can find. I personally use [Backblaze B2 Cloud Storage](https://www.backblaze.com/b2/cloud-storage.html) and am very satisfied with it.

## Conclusion

Keeping your data safe and protected from unwanted authorities, companies or other people is simpler as many people think. You should not trust big companies like Google, Dropbox or AWS. The post showed a simple and not too uncomfortable way to protect your data.

How are you protecting your data? Which software or services are you using and which experiences can you share? I am grateful for a comment in the comments section below.

#### Disclaimer

<span style="font-size: 0.7em">I have no relationship or connection to Cryptomator or Skymatic GmbH. I simply use the software because it is very good.</span>

<span style="font-size: 0.7em">The Cryptomator logo is licensed under CC BY-SA 4.0 and the author is [Katharina Hagemann](https://ktoons.org/). The font used is [Dosis](https://fonts.google.com/specimen/Dosis) (Bold) under the Open Font License.</span>

<span style="font-size: 0.7em">I posted this article originally at [Publish0x](https://www.publish0x.com/security-in-the-age-of-digitizing-everything/use-cryptomator-to-safely-store-your-data-anywhere-xoyrom)</span>

