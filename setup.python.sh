#!/bin/zsh
set -eux

# PYTHON FIXES FOR INSTALLING SOME PACKAGES
echo 'export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1' >> ~/.zshrc
echo 'export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1' >> ~/.zshrc

# these 2 probably only works for arch=arm64
echo 'export HDF5_DIR=/opt/homebrew/opt/hdf5' >> ~/.zshrc
echo 'export BLOSC_DIR=/opt/homebrew/opt/c-blosc' >> ~/.zshrc

# INSTALL PYTHON AND POETRY
brew install "python@3.11"
curl -sSL https://install.python-poetry.org | sed 's/symlinks=False/symlinks=True/' | python -
echo 'export PATH="${HOME}/.local/bin:${PATH}"' >> ~/.zshrc
export PATH="${HOME}/.local/bin:${PATH}"
mkdir -p ~/.zfunc
poetry completions zsh > ~/.zfunc/_poetry
echo 'fpath+=~/.zfunc' >> ~/.zshrc
echo 'autoload -Uz compinit && compinit' >> ~/.zshrc
echo 'export POETRY_VIRTUALENVS_IN_PROJECT=true' >> ~/.zshrc
