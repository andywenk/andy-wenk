---
layout: post
title: Create a Word document from Markdown with pandoc
date: 2023-03-16 14:00:00
description: pandoc is extremely helpful. It is extremely easy to create a Word document from a Markdown document.
categories: work
tags: pandoc
---

![Markdown Word](/assets/images/markdown-word.jpg)
<span style="font-size: 0.7em">Photo by <a href="https://unsplash.com/@mrthetrain?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText" target="_blank">Joshua Hoehne</a> auf <a href="https://unsplash.com/de/fotos/YPgTovTiUv4?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText" target="_blank">Unsplash</a></span>

## pandoc is cool

As I wrote in another post, I love to write all my notes and records in plain/text or Markdown. However, with this mania I am not always compatible with people I work with. One of the most used tools to create text files is and remains Microsoft Word. My mission is also not to convince others to work the same way I do. I leave everyone the peace to choose the tools they find easiest and most efficient to work with.

After a lengthy workshop in which I handwrote my notes, the recurring task is to transfer them into my "CRM" (consisting of Markdown files - material for a later post). So, text editor on and writing.

I usually then just create a PDF and send it to others. However, extending a PDF is not easy and, after all, not what the inventor intended. And in this case, the recipient was a Word power user. So I copied everything from the Markdown file and pasted it into a Word document. But unfortunately the formatting problem occurs. For example, lists created with an "*" are not converted. Unattractive.

Unfortunately, when I open a Markdown file directly in Word, the result is also unsatisfactory. The reason is Word's inability to transpile the Markdown file and therefore interprets it, rightly, as a plain text file.

![Markdown in Word](/assets/images/markdown-in-word.png)

## There must be a solution

A quick web search brought me to a promising (paid, of course) tool. But: only available for Windows users. Also unattractive.

A further research led me - how could it be different - to the Swiss Army Knife *pandoc*.

## pandoc is the Swiss Army Knife for Markdown

I won't beat around the bush. Here's how it works:

    pandoc -o word-doc.docx markdown-file.md

This simple line creates the Word document *word-doc.docx* from the Markdown file *markdown-file.md*. Most importantly, the formatting is really good.

Here is the Markdown document:

![markdown document](/assets/images/markdown-doc.png)

And here the result in Word:

![Markdown document](/assets/images/word-doc.png)

As we can see, the headlines and other formatting are copied correctly. Very cool!

## Further reading

* [pandoc](https://pandoc.org/){:target="_blank"}
