---
layout: post
title: The evil of tactical programming
date: 2023-01-07 18:00:00
description: Why tactical programming is evil. John Ousterhout's new book A philosphy of software design is helping to understand why good software design solves problems.
categories: work
tags: software-design development 
---

<img src="/assets/images/ousterhout.jpg" />

I started to read the book _A Philosophy of Software Design_ by Paul Ousterhout. The first chapters and the introduction are very promising for a issue I am interested in for many years. [Ousterhout is a professor in the Department of Computer Science](https://web.stanford.edu/~ouster/cgi-bin/home.php){:target="_blank"} at Stanford University. He complains, that there has never been a class teaching _Software Design_. So he decided to start one at Standford what is well received. 

## WHAT?

I love to read code and I love to code - even when there are nowadays "kids" that code much more regularly than me. But what I often saw in the last years is alarming. And this is exactly what Ousterhout is writing in chapter 3 _Working Code Isn't Enough_. He is giving the thing a name in chapter 3.1: _Tactical programming_. Yes! Exactly a problem I am dealing with for a long time now. The opposite of tactical programming is _Strategic programming_ as defined by Ousterhout. 

Now you wonder why I say it's alarming. The problem with tactical programming is the lack of **foresight**. Because tactical programming is **short-sighted**. Let me explain it in a scenario you most probably already know:

* a developer is creating code that just works
* without properly thinking about the code design the code will eventually be complex
* adding new code or features instead of refactoring will result in even more complicated code
* new developers are asked to add new features to the code but they will have a hard time to understand the code
* this will lead to even more complicated code and will have more bugs as a result
* fixing the code will take very long or is even not possible
* this leads to a dramatic business problem because the costs are too high or even exploding
* because there is no or not enough money to tackle the problem, the code will be left in a mess

When I started to be a team lead I spoke a lot about this problem. Especially inexperienced developers are often not taking enough time to think about a proper design. And this emerges into many problem:

* the software is too heavy and not stable or robust
* the customers or the stakeholders are dissatisfied
* the team is also dissatisfied and the mood in the team is getting worse
* the costs are too high
* the risk to loose a customer, a project or a product is extremely high

## WHY?

But what are the main reasons for that? In my opinion one of the biggest problems is time pressure. It does not matter if you have customers for whom your team is writing software or you create a product for your company. There will always be stakeholders without a proper technical knowledge who demand form your team to be quicker. This is natural and at the end of the day their job. 

If there is no one dealing with this, the pressure will definitely lead to the previously mentioned problems. The software will be too complex. After developing the software for a while the team will come to a point, where they realize this and start to think how to fix this. The time span to reach this point can be many years. 

It is always my goal and job to make that clear and work as a mediator or as the one who is demanding enough time to get the software design right. Especially a proper estimation ([please read this very good article by DHH about why your estimations suck](https://world.hey.com/dhh/your-estimates-suck-2b9f8445){:target="_blank"}) with **refactoring included (!)** is crucial. 

When dealing with an existing codebase it is more challenging but not impossible in general. There are various technics (e.g. the [Strangler Pattern](https://martinfowler.com/bliki/StranglerFigApplication.html){:target="_blank"}) to refactor also legacy code or too complex code. 

For sure there are also other reasons that need to be mentioned:

* a team with too inexperienced developers
* missing clarity about what the software should do
* it is a prototype or a proof of concept (POC) but the code will not be rewritten for the final project
* the team changes and new developers have problems to deal with the codebase

## FIX!

I am super eager to read about the solutions Ousterhout is delivering in the book. What I can say out of my experience is this: keep it as simple as possible and take the time to understand the goal exactly. Try to use the tools you know best and don't start with the infrastructure. You need to focus on the bare minimum lines of code that will do the job. And grow the project iteratively with enough time to refactor. And don't forget to write tests!

<span style="font-size: 0.7em">Photo form the book by myself. The book is available at [Amazon](https://www.amazon.de/Philosophy-Software-Design-John-Ousterhout/dp/1732102201/ref=sr_1_3?ie=UTF8&qid=1524677319&sr=8-3&keywords=john+ousterhout){:target="_blank"}</span>
