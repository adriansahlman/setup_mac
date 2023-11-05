#!/bin/zsh
set -eux

# Taken from
# https://gist.github.com/tjluoma/22f26a7519162fd5aeb39bf4bf43780b
ARCH=$(sysctl kern.version | awk -F'_' '/RELEASE/{print $2}')


# Continue with linux tooling
source ~/.linuxify



# CONFIGURE VIM

wget -o ~/.vimrc https://gist.githubusercontent.com/adriansahlman/1068fbc6b5b7fd80ea62bcc1b3de0275/raw/1a5e5a3cacbf95edcae89146db0e65a2a0b2f3af/.vimrc



# ADD GO

brew install go
go install github.com/segmentio/golines@latest
brew install golangci-lint

echo 'export GOPATH="${HOME}/go"' >> ~/.zshrc
echo 'export GOROOT="$(brew --prefix golang)/libexec"' >> ~/.zshrc
echo 'export PATH="${PATH}:${GOPATH}/bin:${GOROOT}/bin"' >> ~/.zshrc
echo 'export GOBIN="${GOPATH}/bin"' >> ~/.zshrc

# go interpreter
go install github.com/traefik/yaegi/cmd/yaegi@latest
brew install rlwrap
echo "alias yaegi='rlwrap yaegi'" >> ~/.zshrc



# ADD COMON TOOLS

brew install jq
brew install protobuf
brew install bufbuild/buf/buf
brew install graphviz
brew install flamegraph
brew install tree
brew install gh

# K8 stuff
brew install kubectl

# kubectl prompt showing namespace etc
mkdir -p ~/.config
wget -O ~/.config/kubectl.zsh https://raw.githubusercontent.com/superbrothers/zsh-kubectl-prompt/master/kubectl.zsh
echo 'autoload -U colors; colors' >> ~/.zshrc
echo 'source ~/.config/kubectl.zsh' >> ~/.zshrc
echo $(printf RPROMPT=\'%s\' '%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}') >> ~/.zshrc

# autocompletion for kubectl
echo 'autoload -Uz compinit' >> ~/.zshrc
echo 'compinit -u' >> ~/.zshrc
echo 'source <(kubectl completion zsh)' >> ~/.zshrc

# kubectl aliases
echo "alias k='kubectl '" >> ~/.zshrc
echo "alias kns='kubectl config set-context --current --namespace '" >> ~/.zshrc

# k9s
brew install derailed/k9s/k9s

# flux
brew install fluxcd/tap/flux
echo "alias fgk='flux get kustomizations'" >> ~/.zshrc
echo "alias frk='flux reconcile kustomization --with-source '" >> ~/.zshrc

# minikube
brew install minikube

# terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
echo 'alias tf=terraform' >> ~/.zshrc



# ADD COMMON APPS

brew install --cask firefox
brew install --cask spotify
brew install --cask vlc
brew install --cask slack
brew install --cask clickup
brew install --cask discord
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask steam
brew install --cask deluge
brew install --cask microsoft-teams
brew install --cask whatsapp


# CLOUD

# azure cli
brew install azure-cli
sudo az aks install-cli


# CONFIGURE GIT

git config --global init.defaultBranch main

git config --global user.name "Adrian Sahlman"
git config --global user.email "adrian.sahlman@gmail.com"
git config --global core.editor vim



# FIX FOR PYTHON GRPC

echo 'export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1' >> ~/.zshrc
echo 'export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1' >> ~/.zshrc

# INSTALL PYTHON AND POETRY
brew install python
curl -sSL https://install.python-poetry.org | sed 's/symlinks=False/symlinks=True/' | python -
echo 'export PATH="${HOME}/.local/bin:${PATH}"' >> ~/.zshrc
mkdir -p ~/.zfunc
poetry completions zsh > ~/.zfunc/_poetry
echo 'fpath+=~/.zfunc' >> ~/.zshrc
echo 'autoload -Uz compinit && compinit' >> ~/.zshrc
echo 'export POETRY_VIRTUALENVS_IN_PROJECT=true' >> ~/.zshrc
