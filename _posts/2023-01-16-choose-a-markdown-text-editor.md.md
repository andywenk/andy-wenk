---
layout: post
title: Choose your Markdown Editor
date: 2023-01-16 10:00:00
description: There are many editors available. I favour markdown and a simple Text-Editor for everything
categories: writing
tags: markdown texteditor
---

![editors](/assets/images/markdown-text-editors.png)

## The sea of editors 

There are many thousands of different text-document editors available. You can choose to use an online editor like [Stackedit](https://stackedit.io/){:target="_blank"} or [Dillinger](https://dillinger.io/){:target="_blank"} or you can use locally installed editors like [Notion](https://www.notion.so){:target="_blank"}, [Macdown](https://macdown.uranusjr.com/){:target="_blank"}, [Word](https://www.microsoft.com/en-us/microsoft-365/word){:target="_blank"} or [VS Code](https://code.visualstudio.com/){:target="_blank"}. All these editors have their advantages. Word is the defacto Office document processor, VS Code is used today by millions of software developers and Macdown is a simple Markdown editor. But which one to choose?

## Markdown

As a software developer I learned to keep things extremely simple and usable. When I write software, I don't want to be distracted by features that are hard to know or understand. And I want to be able to read the documents with all editors by hand. The latter requires a simple format known as _plain/text_. There is no formatting in the file and what you see is what you get. 

To understand text easily we are used to some simple formatting helpers:

![formatting helpers | 250](/assets/images/markdown-example.png)
This helps to understand and memorise the text better. The combination of both plain/text files and formatting is provided by Markdown created by [John Gruber](https://daringfireball.net/){:target="_blank"} and [Aaron Swartz](https://en.wikipedia.org/wiki/Aaron_Swartz){:target="_blank"}. 

## Why am I using Markdown?

In 1994 I started to use Windows 3.1 and there was Word. How cool! I can add graphics, colours for the text and so on. What a mess the results have been is history. Then while developing editorial systems (wrongly also known as CMS) for the web we added WYSIWYG editors (what you see is what you get) and the websites wer colourful with various different fonts and styles and ... what a mess again.

But what one wants is simple accessable information that is formatted well. That's the basic idea behind Markdown. Here is an example of a simple text formatted with Markdown:

```
# Top news brought to you by Andy

## Software developer discovers a new way of creating simple an well readable text with a formatting technic called Markdown.

Hamburg, 12.05.2010. A software developer from Hamburg, Germany discovered the new formatting technic to create nice and readable text. He was _extremely happy_ to discover **Markdown**. This modern way of formatting plain/text is a breakthrough to fight the mess of unreadbale HTML pages in the World Wide Web. 

The basic features are:

* it is simple to learn 
* one needs only a simple text editor
* with additional software like [Pandoc](https://pandoc.org/) the text can be converted into various document formats like **PDF**, **epub** or **HTML**
```

This text is easily readable and can be read in any text-editor. When using the formatting and converting it, it will look like this:
![Markdown PDF | 300 ](/assets/images/markdown-pdf.png)

When comparing both outputs you immediately get an idea what the formatting is doing: eg. one `#` will create a headline of order 1 (h1), `##` will create a headline of order 2 (h2), `**sth**`  will make the text bold and so on. These are all simple formatting specifications for _Markup Languages_ like HTML (Hyper-Text-Markup-Language). And now you understand, why it is called _Markdown_ and why one of the basic resulting formats when Markdown files are converted is HTML. 

It is super simple and handy in the usage. 

## Which editor to use?

Now it's becoming philosophical. I think everyone has her loved editor for writing plain/text. If you want something very simple I suggest you give [Macdown](https://macdown.uranusjr.com/){:target="_blank"} a try. I really like it and wrote many documents with it. If you also need some better overview about your files I suggest to give these editors a try:

* [Obsidian](https://obsidian.md/){:target="_blank"}: I really like it because every set of documents can be organised in a so called **vault**. And there are many plugins you can use e.g. for better table handling or even a Github integration. I use it regularly (instead of Notion because it is too complicated and big).
  ![Obsidian Editor](/assets/images/obsidian-editor.png)
* [Zettlr](https://www.zettlr.com/){:target="_blank"}: For people using a Zettelkasten, this one is super cool. I like it a lot and still use it for my Zettelkasten. But it is still also a very good plain/text editor.
  ![Zettlr Editor](/assets/images/zettlr-editor.png)
* [Ulysses](https://ulysses.app/){:target="_blank"}: I think this one is good for writing novels. I really like the typewriter effect that can be used. And the organisation of the documents is good.
  ![Ulysses Editor](/assets/images/ulysses-editor.png)
* [The Archive](https://zettelkasten.de/the-archive/){:target="_blank"}: Another Zettelkasten editor I used quite a lot. Btw. the website is a very good starting point for the Zettelkasten concept invented by [Niklas Luhmann](https://de.wikipedia.org/wiki/Niklas_Luhmann){:target="_blank"}
  ![The Archive Editor](/assets/images/the-archive-editor.png)
* [VS Code](https://code.visualstudio.com/){:target="_blank"}: The defacto editor for developers writing code. It has a very good Extension system and a lot of other features for developers. You can still also use it as a very good Markdown editor.
  ![VS Code Editor](/assets/images/vscode-editor.png)
* [Macdown](https://macdown.uranusjr.com/){:target="_blank"}: A super simple yet strong editor. I like the preview very much. It lacks some features the other editors provide but is very good for writing a Markdown file quickly.
  ![Macdown Editor](/assets/images/macdown-editor.png)

I don't want to forget mentioning, that there are also good online Markdown editors. One I like is [Stackedit](https://stackedit.io/app#){:target="_blank"}. You need to choose if you want to register to a service and save the files there, or use an editor locally where you have full control about your data.
![Stackedit Online](/assets/images/stackedit-editor.png)

## Export to another format like PDF

The power of markdown is it's simplicity resulting in the ability to compile (create) a document format of your choice. Most of the editors offer at least the possibility to create a PDF. As I am writing this file in Obsidian, I have the option to export it to a PDF. This will look like this: 
![Export PDF](/assets/images/export-pdf.png)
The result:
![Exported PDF](/assets/images/exported-pdf.png)

As you can see the PDF is created. In other editors like Ulysses you have various more options to choose a format and also what style the PDF should be created in. 

## Conclusion

I love [simplicity](http://www.amazingcto.com/){:target="_blank"}. And that's the reason why I write everything in Markdown. You can even omit to use a text-processor like Microsoft word when you use the Markdown editor that gives you everything you need for the output you want to achieve. 
