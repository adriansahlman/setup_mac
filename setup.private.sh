#!/bin/zsh
set -eux

# CONFIGURE GIT

git config --global init.defaultBranch main

git config --global user.name "Adrian Sahlman"
git config --global user.email "adrian.sahlman@gmail.com"
git config --global core.editor vim


# install some handy apps

brew install --cask steam
brew install --cask deluge
brew install --cask whatsapp
