---
layout: post
title: Create an MS 365 e-mail distribution list
date: 2023-08-29 09:10:00
description: Although MS 365 is the de facto tool for Office and communication, it also offers various hurdles in use. Especially when creating email distribution lists.
categories: office
tags: ms365
---

![Writing](/assets/images/mailboxes.jpg)

<span style="font-size: 0.7em">Photo by <a href="https://unsplash.com/@rolls0ut?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Jac Alexandru</a> on <a href="https://unsplash.com/photos/L0Wdk52FAmM?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a></span>

## Everyone wants to be informed

[Microsoft 365](https://www.microsoft.com/de-de/microsoft-365){:target="_blank"} is the defacto tool for Office applications and communication. Looking at the history of Microsoft, it is not difficult to understand this. However, Microsoft has developed the platform over years, which has led to many things being unintuitive and difficult to manage. In addition, Microsoft keeps changing things and the system administrator regularly gets a crying fit because "yesterday it still worked".

In the set-up and as CTO of the new [pet insurance underwriter Cleo & You](https://www.cleos.de){:target="_blank"} I initially took on the job of system administrator. The same goes for setting up the office infrastructure of [You Are We](https://youarewe.eu){:target="_blank"}, where I work as an IT consultant.

## Help is needed

Initially, the [great people from XAAS](https://www.xaas-it.com){:target="_blank"} helped me again (as they did in 2019 with sum.cumo) to set up and configure the basic things (many thanks Philip ;-)). However, I lost track of how to implement the following requirement:

* A distribution list for an e-mail address stoerung@cleos.de
* The e-mail address does not yet exist and should not be a shared mailbox
* Recipients should be entered who are not in our cleos.de MS 365 tenant.

Before I can dig through the endless documentation of Microsoft's help pages, I prefer to use ChatGPT 4. And here's where I "get helped". It turns out that if you know how, it's pretty easy. But I'll let ChatGPT speak for itself.

## ChatGPT 4 knows how to do it

<strong>Prompt:</strong><i>How do I create an email distribution list in the Microsoft 365 Admin Center?</i>

<strong>CGPT:</strong>Creating an email distribution list in Microsoft 365 (also known as a distribution list or contact group) can vary depending on which Microsoft 365 tool or application you use. Here are the steps for creating an email distribution list in the Microsoft 365 Admin Center:

1. log in to the Microsoft 365 Admin Center.
Navigate to "Groups" > "Active groups". 3.
Click on "Add" or "+ New group". 4.
Select "Distribution list" as the group type. 5.
Fill in the required information (name, description, email address, etc.). 6.
Click on "Next" and follow the further instructions. 7.
Add members to the group by entering their names or email addresses in the appropriate field. 8.
8. check the settings and click on "Create".

Once your distribution list is created, you can send emails to the list by entering the list's email address in the "To" field of your email. All members of the list will then receive this email.

Remember that the steps or user interface may change over time, depending on the updates Microsoft makes to Microsoft 365 or Outlook. It is therefore always a good idea to consult Microsoft's official documentation if you are looking for up-to-date instructions.

<strong>Prompt:</strong><i>Can I also add external email addresses to a distribution list in the Microsoft 365 Admin Center?</i>

<strong>CGPT:</strong>In the Microsoft 365 Admin Center, you cannot directly add external email addresses to a distribution list. But there is a workaround: you can create contacts in your directory for external email addresses and then add these contacts to your distribution list.

Here are the steps to add an external contact in the Microsoft 365 Admin Center and then add them to a distribution list:

A. Create an external contact:

1. log in to the Microsoft 365 Admin Center.
Navigate to "Users" > "Contacts". 3.
3. click on "+ Add contact". 4.
4. fill in the required fields, including the external email address. 5. click "Add".
5. click on "Add" when you are finished.

B. Add a contact to a distribution list. 1:

1. go back to the Admin Centre main page.
2. navigate to "Groups" > "Active groups". 3.
Find and click on the distribution list to which you want to add the contact. 4.
4. select "Members" in the left-hand menu and then "Add member". 5.
5. find the external contact you created earlier and add it to the list.

Now the external email address should function as part of the distribution list and receive emails sent to that list.

It is important to note that there are privacy and consent issues to consider when adding external email addresses to a distribution list. You should ensure that you have their permission before adding their email addresses to distribution lists.

## It worked!

In MS 365 it was not obvious to me how to set up this distribution list. Thanks to ChatGPT 4 I was able to do it very easily. May it also help others ...

## Read more

* [Cleo & You GmbH](https://www.cleos.de){:target="_blank"}
* [You Are We GmbH](https://www.youarewe.eu){:target="_blank"}
* [XAAS](https://www.xaas-it.com){:target="_blank"}
* [Creating distribution groups in the Microsoft 365 Admin Center](https://learn.microsoft.com/en-en/microsoft-365/admin/setup/create-distribution-lists?view=o365-worldwide){:target="_blank"}
* [ChatGPT](https://chat.openai.com){:target="_blank"}
