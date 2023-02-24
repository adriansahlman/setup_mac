#!/bin/zsh
set -eux



# CUSTOMIZE TERMINAL

echo '# custom prompt' > ~/.zshrc
echo 'PS1="%3~ $ "\n' >> ~/.zshrc
echo "alias cls=\"clear 77 printf '\\\e[3J'\"" >> ~/.zshrc



# FINDER SETTINGS

defaults write com.apple.Finder AppleShowAllFiles true



# ADD COMMAND-LINE TOOLS

xcode-select --install || :



# ADD HOMEBREW

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# these lines are dependent on where homebrew is located, location changes depending on arch (intel vs arm)
: "${BREW_PATH:=/opt/homebrew/bin/brew}"
brew_activate=$(printf 'eval $(%s shellenv)' ${BREW_PATH})
echo '# activate brew' >> ~/.zshrc
echo "${brew_activate}\n" >> ~/.zshrc
eval $(${BREW_PATH} shellenv)
brew update



# ADD GNU/LINUX UTILS

temp_dir=$(mktemp -d)
git clone https://github.com/fabiomaia/linuxify.git "${temp_dir}" && ${temp_dir}/linuxify install
rm -rf "${temp_dir}"
echo '# gnu/linux util paths' >> ~/.zshrc
echo "source ~/.linuxify\n" >> ~/.zshrc
source ~/.linuxify



# CONFIGURE VIM

wget -o ~/.vimrc https://gist.githubusercontent.com/adriansahlman/1068fbc6b5b7fd80ea62bcc1b3de0275/raw/1a5e5a3cacbf95edcae89146db0e65a2a0b2f3af/.vimrc



# ADD GO

brew install go
go install github.com/segmentio/golines@latest

echo 'export GOPATH="${HOME}/go"' >> ~/.zshrc
echo 'export GOROOT="$(brew --prefix golang)/libexec"' >> ~/.zshrc
echo 'export PATH="${PATH}:${GOPATH}/bin:${GOROOT}/bin"' >> ~/.zshrc
echo 'export GOBIN="${GOPATH}/bin"' >> ~/.zshrc

# go interpreter
go install github.com/traefik/yaegi/cmd/yaegi@latest
brew install rlwrap
echo "alias yaegi='rlwrap yaegi'" >> ~/.zshrc



# ADD BUF
brew install bufbuild/buf/buf



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

# Install protoc
brew install protobuf


# K8s

# kubectl and prompt showing namespace etc
brew install kubectl
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


# VSCODE SETUP

# disable key hold functionality
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false


# CLOUD

# azure cli
brew install azure-cli
az aks install-cli


# CONFIGURE GIT

git config --global init.defaultBranch main

git config --global user.name "Adrian Sahlman"
git config --global user.email "adrian.sahlman@gmail.com"
git config --global core.editor vim



# FIX FOR PYTHON GRPC

echo 'export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1' >> ~/.zshrc
echo 'export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1' >> ~/.zshrc
