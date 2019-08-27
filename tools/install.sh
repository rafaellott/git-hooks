#!/usr/bin/env bash

git clone https://github.com/rafaellott/git-hooks.git ~/.git-hooks/
cd ~/.git-hooks/
chmod -R u+x ~/.git-hooks/hooks
cp git-hooks-config.tmpl ~/.git-hooks-config.json
git config --global core.hooksPath ~/.git-hooks/hooks
chmod u+x ~/.git-hooks/tools