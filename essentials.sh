#!/bin/sh

# ZSH
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

# Unrar
brew install unrar

# Google Chrome
brew cask install google-chrome

# iTerm2
brew cask install iterm2

# Spotify
brew cask install spotify

# LastPass
brew cask install lastpass
open "/usr/local/Caskroom/lastpass/latest/LastPass Installer.app"

# 1Password
brew cask install 1password

# WhatsApp
brew cask install whatsapp
