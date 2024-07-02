#!/bin/zsh
set -eux

# CONFIGURE GIT

git config --global init.defaultBranch main

git config --global user.name "Adrian Sahlman"
git config --global user.email "adrian.sahlman@mail.weir"
git config --global core.editor vim
