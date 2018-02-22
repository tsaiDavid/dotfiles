#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Tap Homebrew-Cask (https://caskroom.github.io/)
brew tap caskroom/cask

# Tap Caskroom Fonts
brew tap caskroom/fonts
# TODO: Add fonts here

# Install ZSH
brew install zsh zsh-completions
chsh -s $(which zsh)

# Switch to using brew-installed bash as default shell
# if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
#   echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
#   chsh -s /usr/local/bin/bash;
# fi;

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

# Install other helpers
brew install tree
brew install hub
brew install wget

# Install Applications via Cask
brew cask install alfred
brew cask install google-chrome
brew cask install sizeup
brew cask install slack
brew cask install spotify
brew cask install visual-studio-code

# Remove outdated versions from the cellar.
brew cleanup
