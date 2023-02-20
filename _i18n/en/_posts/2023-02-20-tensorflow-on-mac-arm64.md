---
layout: post
title: Tensorflow on the Mac M1/2
date: 2023-02-20 10:00:00
description: It is not easy to get tensorflow running on a Mac OS with an arm64 processor. My little install script should help. 
categories: work
tags: AI
---

![Tensorflow Guy](/assets/images/tensorflow-guy.png)

## Tensorflow on the Mac with an arm64 processor.

Recently I looked at some simple Python scripts to play with TensorFlow. [TensorFlow](https://www.tensorflow.org/){:target='"_blank"} is software created by Google that can be used to create machine learning models. There are libraries for various programming languages. These are needed to apply the models. It is good to know that there are ready-made models that can be downloaded and used.

Of course I wanted to use Ruby. However, I encountered quite high hurdles. So, since in the Machine Learning environment Python is the most used language (not least because of its excellent mathematical libraries), I went ahead with Python. Well ... again, there were problems until I understood that the M1 processor on my MacBook was the root of the evil.

After several hours of research I slowly found the right resources. Various tutorials didn't quite help, but finally Miniconda did the trick to get everything working. 

Behind [Miniconda](https://docs.conda.io/en/latest/miniconda.html){:target="_blank"} is [Conda](https://docs.conda.io/projects/conda/en/stable/){:target="_blank"}. This is an open source package management system and environment manager for various programming languages such as Python, R, Ruby, Lua, Scala, Java, JavaScript, C/ C++ and even Fortran (who still uses that?). Miniconda is the little sister of the development environment [Anaconda](https://anaconda.org){:target="_blank"}, which is widely used in the Python and ML environment. Just without shi-shi, but only usable on the command line. Who followed my other posts knows that I prefer to do everything via CLI! On the project website you can read:

> Miniconda is a free minimal installer for conda. It's a small bootstrap version of Anaconda that contains only conda, Python, the packages they depend on, and a small number of other useful packages, including pip, zlib, and a few others. Use the conda install command to install 720+ additional conda packages from the anaconda repository.

So, right up my alley.

## The install script

The script `install-miniconda-tensorflow-mac-arm64.sh` can be found in one of my [code repositories on Codeberg](https://codeberg.org/andywenk/tensorflow-mac-arm64){:target="_blank"} can be found. In the end, it's really just a simple shell script to take the burden off the user of having to painstakingly search for everything together. Currently the versions of the packages `tensorflow-macos` are stuck on `2.9` and of `tensorflow-metal` on `0.5`. If you want to use newer versions and they exist, you have to change the versions accordingly. I have saved myself to query these (but I should possibly still catch up).

Happy coding!

## Zum Weiterlesen

* [Get started with tensorflow-metal](https://developer.apple.com/metal/tensorflow-plugin/){:target="_blank"} - Mac OS M1 Tensorflow
* [Mask R-CNN](https://modelzoo.co/model/mask-r-cnn-keras){:target="_blank"} - Example Tensorflow application
* [Model Garden for TensorFlow](https://github.com/tensorflow/models){:target="_blank"} - Pretrained Models
* [TensorFlow Hub](https://tfhub.dev/){:target="_blank"} - Pretrained Models