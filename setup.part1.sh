#!/bin/zsh
set -eux

# Taken from
# https://gist.github.com/tjluoma/22f26a7519162fd5aeb39bf4bf43780b
ARCH=$(sysctl kern.version | awk -F'_' '/RELEASE/{print $2}')


# CUSTOMIZE TERMINAL

echo '# custom prompt' > ~/.zshrc
echo 'PS1="%3~ $ "\n' >> ~/.zshrc
echo "alias cls=\"clear 77 printf '\\\e[3J'\"" >> ~/.zshrc


# Remove press and hold keyboard functionality

defaults write -g ApplePressAndHoldEnabled -bool false


# Show hidden files in finder

defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder;



# ADD COMMAND-LINE TOOLS

xcode-select --install || :



# ADD HOMEBREW

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# these lines are dependent on where homebrew is located, location changes depending on arch (intel vs arm)
if [[ "$ARCH" == "ARM64" ]]
then
	: "${BREW_PATH:=/opt/homebrew/bin/brew}"
elif [[ "$ARCH" == "X86" ]]
then
	: "${BREW_PATH:=/usr/local/bin/brew}"
else
	echo "Unknown arch returned: '$ARCH'" >>/dev/stderr
	exit 2
fi
brew_activate=$(printf 'eval $(%s shellenv)' ${BREW_PATH})
echo '# activate brew' >> ~/.zshrc
echo "${brew_activate}\n" >> ~/.zshrc
eval $(${BREW_PATH} shellenv)
brew update
echo 'export HOMEBREW_NO_AUTO_UPDATE=1' >> ~/.zshrc


# ADD GNU/LINUX UTILS

temp_dir=$(mktemp -d)
git clone https://github.com/fabiomaia/linuxify.git "${temp_dir}" && cd ${temp_dir} && ./linuxify install; cd -
rm -rf "${temp_dir}"
echo '# gnu/linux util paths' >> ~/.zshrc
echo "source ~/.linuxify\n" >> ~/.zshrc

echo "START NEW TERMINAL AND CONTINUE WITH PART2"
