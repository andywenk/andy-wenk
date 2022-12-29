---
layout: post
title: Deliver early and pivot if necessary
date: 2022-12-19 10:00:00
description: "We are stuck in a jungle of tools that obscures our view of the actual goal: business value"
categories: work
tags: development 
---

<img src="/assets/images/radical_simplicity_sogo.svg" alt="Radical Simplicity" width="600" style="background-color: #000;" />

While reading the [hackernewsletter #631](https://mailchi.mp/hackernewsletter/631?e=afcff08bfa) I stumbled upon the article ["Just use Postgres for everything"](https://www.amazingcto.com/postgres-for-everything). Man - what a relieve! Finally [there is someone](https://www.linkedin.com/in/stephanjschmidt/) confirming my claim, that we do things too complicate. Let me explain with the two following examples.

## 1. How to start a new Ruby on Rails Project?

If you read past posts in this blog you get the impression I am a Ruby fan. Your impression is correct. I love Ruby because it is simple, minimalistic, expressive and beautiful. I don't say there are no other languages that fit into this view but my choice is Ruby. 

While working at Fanblast we started to use short.io for short URL's. Why in the world should I pay for such a service? There is nothing special in it and so I decided to create such a service by my self as a little after work project. The result is [KRX.pw](https://www-krx.pw). It has the following technical background:

* Hosting: Hetzner Cloud, Ubuntu 22
* Database: PostgreSQL on that server
* Application: Sinatra in the backend and HTML and CSS in the frontend. No JavaScript library used

You don't need anything else. You can create URL's. That's it. Maximum Simplicity!

Now I had a bit hard times getting a little ACL system integrated. Sure, a simple password based login would do the job. I remembered Devise but wanted to try out [Clearance](https://github.com/thoughtbot/clearance) instead of Devise. To make life easy, I created a Rails 7 application and copied the code from the Sinatra app. Now you can login, register and so on. 

There is still no fancy JS or CSS stuff integrated and to be honnest, it looks a bit from the 90's ;-). But who cares? 

For me this is a very good example to follow the ["Radical Simplicity"](http://www.radicalsimpli.city/) idea.

I would have loved to stay with Sinatra because it is beautiful and extremly simple. But nowadays everything is _railsified_ ... not simple unfortunatly.  

## 2. Toolerities 

I am actually working at [fanblast.com](https://www.fanblast.com) as the CTO. We are working with a team form Ahmedabad / India. They are good folks and have a good understanding in the section fo webdevelopment. We are hosting everything on AWS and are working with various services / tools. And I more often heard the sentence "oh yes let's use this or that service". 

Well. Before using a service I always start with these thoughts and questions and answer them with the team:

* What is the goal we need to achieve?
* What is the MFP[^1], MVP[^2] and MVB[^3]
* What is needed form a technical perspective?
* What is the expected timeline?
* What is the budget?

Then, and only then, I start to decide what a good service could be. 

We wanted to implement Websockets as a POC[^4] to understand, if we can get rid of some performance issues. You can for sure start using [Google Firebase](https://firebase.google.com/) or the [AWS websocket API](https://aws.amazon.com/de/blogs/compute/announcing-websocket-apis-in-amazon-api-gateway/). But what a big system will you have to maintain? Which knowledge do you need to start? You simply don't need these services for a POC. We started to create our own implementation with Node.js. It took us four days instead of weeks. 

## Conslusion

I could find many more examples. One would be Kubernetes. Yes it is a very advanced tool. But who really needs it to manage his cluster? As a rule of thumb: 95% of the projects don't need it. 

The rule is very simple: start with the minimum complexity what translates to the maximum simplicity. Then take time and understand the needs of your project and decide iteratively and wisely. As a result your project will be better, faster and cheaper and your developers and stakeholders will be more happy!

_Disclaimer:_ The Radical Simplicity logo is from [http://www.radicalsimpli.city/](http://www.radicalsimpli.city/)

[^1]: _Minimal Functional Product_
[^2]: _Minimal Valuable Product_
[^3]: _Minimal Valuable Business_
[^4]: _Proof of Concept_