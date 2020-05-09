#!/usr/bin/env bash

# Setup/startup website development environment

bundle update
bundle exec jekyll clean
bundle exec jekyll build
bundle exec jekyll server --increment --watch


