#!/usr/bin/env bash

git clone https://rafaellott_cit@bitbucket.org/rafaellott_cit/git-hook.git ~/.git-hooks/
cd ~/.git-hooks/
chmod a+x -R ~/.git-hooks/*
cp git-hook-config.tmpl ~/.git-hook-config.json
git config --global core.hooksPath ~/.git-hooks/hooks