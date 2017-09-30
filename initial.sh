#!/bin/sh

if [ ! -f ~/.ssh/id_rsa ]; then
    echo "Please, download the id_rsa from GoogleDrive"
    exit
fi

# Vim syntax on
echo "syntax on" > ~/.vimrc

# hostname / computer name setup
sudo scutil --set HostName rsiqueira
sudo scutil --set LocalHostName rsiqueira
sudo scutil --set ComputerName rsiqueira

# tap to click
sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
sudo defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
sudo defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
