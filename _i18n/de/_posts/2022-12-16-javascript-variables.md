---
layout: post
title: JavaScript variables
date: 2022-12-16 10:00:00
description: The difference between the declaration types of variables in JavaScript
categories: work
tags: development 
---

![JS](/assets/images/js.png)

I still love JavaScript. Back in 1998 I created a website for a friend with a form. I thought it was ridiculous to simply send that form to somewhere without checking, if I get the info I ask the user for. So I included the first time something like a form-validation. I added a `id` to each form-field and wrote a JavaScript snippet where I simply used [`getElementById(id)`](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementById) to get the value of the form-field and check if there is something in it or not. 

Continuing my JavaScript journey I started to use [prototypjs](http://prototypejs.org/), [jQuery](https://jquery.com/), [underscore.js](https://underscorejs.org/), [Backbone.js](https://backbonejs.org/) and other helper libraries that extended the then actual JavaScript version and implementation. Wow - that was so cool. But it still took until 2009, when Ryan Dahl made a present to the JavaScript community by introducing [Node.js](https://nodejs.org/) at the [JSConfEU in Berlin](https://youtu.be/ztspvPYybIY). Everybody went crazy even though there was already [CommonJS](https://www.commonjs.org/). After that, ECMA Script was reborn and worked on and now there is a very stable and good language with JavaScript.

JavaScript is very simple in it's basics. Back at the beginning for example, there was only a `var` declaration for a variable. Now there is also the block-scoped `let` and the block-scoped, read-only `const`. A cool evolution. 

To see this running, open your browsers console (Chrome: option+cmd+j) and throw in this code:

```
(function() {
  "use strict";

  const A = 100;
  let a = 10;
  var b = 99;
  
  console.log(`A: ${A}`);
  console.log(`a: ${a}`);
  console.log(`b: ${b}`);

  function greetMe(theName) {
    const A = 200;
    let a = 20;
  
    alert(`Hello ${theName + a}`);
    console.log(`A: ${A}`)
  }

  function showAgain() {
    const A = 300;
    let a = 30;
  
    console.log(`a: ${a}`);
    console.log(`b: ${b}`);  
    console.log(`A: ${A}`);
  } 

  greetMe('Andy'); 
  showAgain();
  
  console.log(`a: ${a}`);
  console.log(`b: ${b}`);
  console.log(`A: ${A}`)
})();
```

JavaScript is cool and exploded like nothing else. Even though I do not code on a daily basis anymore, I still love to write some JavaScript besides Ruby or Python. 

The last project I was attached to was [Fanblast](https://www.fanblast.com) and the Tech-Stack was Node.js for the backend and [React](https://reactjs.org/) for the frontend. I still have open to have a deeper look into [Vue.js](https://vuejs.org/) because I never had the chance to dig deeper in it during my time at [sum.cumo](https://www.sumcumo.com).