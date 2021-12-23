#!/usr/bin/env sh

scutil --set HostName "localhost"

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock show-process-indicators -bool true

defaults write com.apple.Finder AppleShowAllFiles -bool true

killall Dock
