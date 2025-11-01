#!/bin/bash
set -e

# Setze UTF-8 Encoding für Ruby
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Stelle sicher, dass Ruby UTF-8 verwendet
export RUBYOPT="-Eutf-8:utf-8"

# Führe Jekyll Build aus
bundle exec jekyll build -d _site --trace --profile

