#!/bin/zsh

# For Apple Silicon
softwareupdate --install-rosetta --agree-to-license

# XCode command-line tools
xcode-select --install

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew update --verbose

brew install neovim
brew install golang
brew install --cask telegram
brew install --cask slack
brew install tmux

scutil --set HostName "localhost"

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock show-process-indicators -bool true

killall Dock

defaults write com.apple.Finder AppleShowAllFiles -bool true
