---
layout: post
title: Secure credentials strategy
date: 2020-01-27 10:00:00
description: Strategy to safely create login credentials for your accounts
categories: security
tags: privacy
---

<img src="/assets/images/secure-credentials.png" />

In this post I discuss some basic precautions regarding how to create safe passwords and why you should create a unique email and password combination for all the accounts you register at.

## Doomsday Scenario

It is a common fact, that a lost password and a referring email can cause a lot of harm if it get’s stolen or retrieved in any other way. This is especially dangerous when using the same combination for many sites or portals. Imaging the following scenario:

* You have an email and password combination used for your Adobe, Twitter, Facebook and GMail account.
* You have also a Instagram account.
* Unfortunately, you had been a victim of the 2013 Adobe user account breach (see picture below).
* A black hat hacker is using the retrieved email / password combination for your Twitter account and is successful.
* In there he recognises, that you also have a Facebook and Gmail account.
* Success. He can login to your GMail account. There he recognises, that you have an email from Instagram.
* He is trying to login. But this time without luck. But by using the password forgot functionality, he can easily set a new password.

<img src="/assets/images/adobe.png" />

Well - this may sound like a doomsday scenario but it stems from real world examples. You can easily imagine what happens. The intruder will reset all your passwords and you’re locked out. What he is now posting in your various social media channels is left to your imagination but just thing about some racial propaganda or child porn images. It will be extremely hard to fix this and it will harm your personal image extremely bad.

## Basic rules to avoid the Doomsday Scenario

There are some easy to follow rules to avoid the before described scenario. I use this strategy now for over 5 years. Here is a list to follow:

* use a password manager like [1Password](https://1password.com/), [KeePass](https://keepass.info/) or another trustable one
* if you don’t use one (I strongly discourage you) you should create strong passwords
* create an email alias for each account you register
* use a unique email / password combination for each account you register 
  
## Password Manager

If you follow the strategy I explain in this post, you will have many email / password combinations. And if you also create very strong passwords, you will simply not be able to remember them. I am using 1Password and have now 594 unique email / password combinations.

The tactic is to let 1Password create the passwords for you. Here is the setting I use:

<img src="/assets/images/1pw.jpeg" />

If you are not willing to use a password manager, you should at least check the way you want to create your password by using a tool like [HOW SECURE IS MY PASSWORD](https://howsecureismypassword.net/)?

<img src="/assets/images/howsecure.png" />

Be aware that you do not enter the password you will use. You never know, if it is going to be saved or not.

## email alias

Creating an email alias is a simple task if you have access to the configuration of your mailbox. There are many many different mail providers that I will not be able to show them all. Here is a short list of services you can definitely create aliases with for your email account:

* [protonmail.com](https://protonmail.com)
* [posteo.de](https://posteo.de)
* [mailbox.org](https://mailbox.org)
* [mail.google.com](https://mail.google.com)

## Extra security layer with 2FA

If a thief retrieved your email and password, he would still be able to login into your account. There is nothing that prevents him in doing so. Unless you have set up 2FA - two factor authentication. When logging in to your account and after you provided your email and your password, you will be asked for a one time id what is called the second factor. You should definitely turn 2FA in the settings of the service you use if possible. The most common way is the [Google Authenticator](https://google-authenticator.com/) app you install on your mobile phone. The registration of the authenticator app is done in the settings of your services account by scanning a QR code. 

## Putting it all together

Now that you have setup a password manager and found a service with which you can create email aliases for your account, you can create many different email / password combinations. In the following example I will use the email administration web-interface for my email account [ViMbAdmin](https://www.vimbadmin.net/).

##### 1. Create an email alias 

<img src="/assets/images/vbadmin-1.jpeg" /> 

##### 2. Use your password manager and create a new login 

<img src="/assets/images/vbadmin-2.jpeg" /> 

##### 3. Save the settings and use the data for your new account

## Conclusion

In this article, I discussed a simple strategy to create unique email / password combinations for your security. The Doomsday Scenario can be avoided with this tactic. First of all the created passwords are very strong. Secondly, a thief or intruder will only be able to hack into one account. But if you have set up 2FA also the chances for an intruder a sinking to a minimum.

Follow this strategy for securing your digital and real identity.

<span style="font-size: 0.7em">I posted this article originally at [Publish0x](https://www.publish0x.com/security-in-the-age-of-digitizing-everything/strategy-to-safely-create-login-credentials-for-your-account-xmwzzq)</span>

