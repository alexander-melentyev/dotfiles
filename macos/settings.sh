#!/usr/bin/env sh

sudo -v

scutil --set HostName "localhost"

defaults write com.apple.Finder AppleShowAllFiles -bool true
